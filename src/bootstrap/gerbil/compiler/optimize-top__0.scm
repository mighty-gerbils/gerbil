(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1708343717)
  (begin
    (define gxc#&collect-top-level-type-info
      (make-promise
       (lambda ()
         (let ((_tbl125645_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp127738 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl125645_ __tmp127738))
           (let ()
             (declare (not safe))
             (hash-put! _tbl125645_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl125645_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl125645_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125645_
              '%#define-values
              gxc#collect-top-level-type-define-values%))
           _tbl125645_))))
    (define gxc#apply-collect-top-level-type-info
      (lambda (_stx125628_ . _args125630_)
        (let ((__tmp127740
               (lambda ()
                 (declare (not safe))
                 (if (null? _args125630_)
                     (gxc#compile-e__0 _stx125628_)
                     (let ((_arg1125635_ (car _args125630_))
                           (_rest125637_ (cdr _args125630_)))
                       (if (null? _rest125637_)
                           (gxc#compile-e__1 _stx125628_ _arg1125635_)
                           (let ((_arg2125640_ (car _rest125637_))
                                 (_rest125642_ (cdr _rest125637_)))
                             (if (null? _rest125642_)
                                 (gxc#compile-e__2
                                  _stx125628_
                                  _arg1125635_
                                  _arg2125640_)
                                 (apply gxc#compile-e
                                        _stx125628_
                                        _arg1125635_
                                        _arg2125640_
                                        _rest125642_))))))))
              (__tmp127739 (force gxc#&collect-top-level-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp127740
           gxc#current-compile-methods
           __tmp127739))))
    (define gxc#&basic-expression-top-level-type
      (make-promise
       (lambda ()
         (let ((_tbl125625_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp127741 (force gxc#&false)))
             (declare (not safe))
             (hash-merge! _tbl125625_ __tmp127741))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125625_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl125625_ '%#call gxc#basic-expression-type-call%))
           _tbl125625_))))
    (define gxc#apply-basic-expression-top-level-type
      (lambda (_stx125608_ . _args125610_)
        (let ((__tmp127743
               (lambda ()
                 (declare (not safe))
                 (if (null? _args125610_)
                     (gxc#compile-e__0 _stx125608_)
                     (let ((_arg1125615_ (car _args125610_))
                           (_rest125617_ (cdr _args125610_)))
                       (if (null? _rest125617_)
                           (gxc#compile-e__1 _stx125608_ _arg1125615_)
                           (let ((_arg2125620_ (car _rest125617_))
                                 (_rest125622_ (cdr _rest125617_)))
                             (if (null? _rest125622_)
                                 (gxc#compile-e__2
                                  _stx125608_
                                  _arg1125615_
                                  _arg2125620_)
                                 (apply gxc#compile-e
                                        _stx125608_
                                        _arg1125615_
                                        _arg2125620_
                                        _rest125622_))))))))
              (__tmp127742 (force gxc#&basic-expression-top-level-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp127743
           gxc#current-compile-methods
           __tmp127742))))
    (define gxc#&collect-type-info
      (make-promise
       (lambda ()
         (let ((_tbl125605_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp127744 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl125605_ __tmp127744))
           (let ()
             (declare (not safe))
             (hash-put! _tbl125605_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl125605_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl125605_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125605_
              '%#define-values
              gxc#collect-type-define-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125605_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl125605_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125605_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125605_
              '%#let-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125605_
              '%#letrec-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125605_
              '%#letrec*-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl125605_ '%#call gxc#collect-type-call%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl125605_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl125605_ '%#set! gxc#collect-body-setq%))
           _tbl125605_))))
    (define gxc#apply-collect-type-info
      (lambda (_stx125588_ . _args125590_)
        (let ((__tmp127746
               (lambda ()
                 (declare (not safe))
                 (if (null? _args125590_)
                     (gxc#compile-e__0 _stx125588_)
                     (let ((_arg1125595_ (car _args125590_))
                           (_rest125597_ (cdr _args125590_)))
                       (if (null? _rest125597_)
                           (gxc#compile-e__1 _stx125588_ _arg1125595_)
                           (let ((_arg2125600_ (car _rest125597_))
                                 (_rest125602_ (cdr _rest125597_)))
                             (if (null? _rest125602_)
                                 (gxc#compile-e__2
                                  _stx125588_
                                  _arg1125595_
                                  _arg2125600_)
                                 (apply gxc#compile-e
                                        _stx125588_
                                        _arg1125595_
                                        _arg2125600_
                                        _rest125602_))))))))
              (__tmp127745 (force gxc#&collect-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp127746
           gxc#current-compile-methods
           __tmp127745))))
    (define gxc#&basic-expression-type
      (make-promise
       (lambda ()
         (let ((_tbl125585_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp127747 (force gxc#&false)))
             (declare (not safe))
             (hash-merge! _tbl125585_ __tmp127747))
           (let ()
             (declare (not safe))
             (hash-put! _tbl125585_ '%#begin gxc#basic-expression-type-begin%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125585_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125585_
              '%#lambda
              gxc#basic-expression-type-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125585_
              '%#case-lambda
              gxc#basic-expression-type-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125585_
              '%#let-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125585_
              '%#letrec-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125585_
              '%#letrec*-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl125585_ '%#call gxc#basic-expression-type-call%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl125585_ '%#ref gxc#basic-expression-type-ref%))
           _tbl125585_))))
    (define gxc#apply-basic-expression-type
      (lambda (_stx125568_ . _args125570_)
        (let ((__tmp127749
               (lambda ()
                 (declare (not safe))
                 (if (null? _args125570_)
                     (gxc#compile-e__0 _stx125568_)
                     (let ((_arg1125575_ (car _args125570_))
                           (_rest125577_ (cdr _args125570_)))
                       (if (null? _rest125577_)
                           (gxc#compile-e__1 _stx125568_ _arg1125575_)
                           (let ((_arg2125580_ (car _rest125577_))
                                 (_rest125582_ (cdr _rest125577_)))
                             (if (null? _rest125582_)
                                 (gxc#compile-e__2
                                  _stx125568_
                                  _arg1125575_
                                  _arg2125580_)
                                 (apply gxc#compile-e
                                        _stx125568_
                                        _arg1125575_
                                        _arg2125580_
                                        _rest125582_))))))))
              (__tmp127748 (force gxc#&basic-expression-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp127749
           gxc#current-compile-methods
           __tmp127748))))
    (define gxc#&lift-top-lambdas
      (make-promise
       (lambda ()
         (let ((_tbl125565_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp127750 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-merge! _tbl125565_ __tmp127750))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125565_
              '%#define-values
              gxc#lift-top-lambda-define-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125565_
              '%#let-values
              gxc#lift-top-lambda-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125565_
              '%#letrec-values
              gxc#lift-top-lambda-letrec-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125565_
              '%#letrec*-values
              gxc#lift-top-lambda-letrec-values%))
           _tbl125565_))))
    (define gxc#apply-lift-top-lambdas
      (lambda (_stx125548_ . _args125550_)
        (let ((__tmp127752
               (lambda ()
                 (declare (not safe))
                 (if (null? _args125550_)
                     (gxc#compile-e__0 _stx125548_)
                     (let ((_arg1125555_ (car _args125550_))
                           (_rest125557_ (cdr _args125550_)))
                       (if (null? _rest125557_)
                           (gxc#compile-e__1 _stx125548_ _arg1125555_)
                           (let ((_arg2125560_ (car _rest125557_))
                                 (_rest125562_ (cdr _rest125557_)))
                             (if (null? _rest125562_)
                                 (gxc#compile-e__2
                                  _stx125548_
                                  _arg1125555_
                                  _arg2125560_)
                                 (apply gxc#compile-e
                                        _stx125548_
                                        _arg1125555_
                                        _arg2125560_
                                        _rest125562_))))))))
              (__tmp127751 (force gxc#&lift-top-lambdas)))
          (declare (not safe))
          (call-with-parameters
           __tmp127752
           gxc#current-compile-methods
           __tmp127751))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_stx125451_)
        (let* ((___stx125658125659_ _stx125451_)
               (_g125454125474_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx125658125659_)))))
          (let ((___kont125660125661_
                 (lambda (_L125518_ _L125519_)
                   (let ((_sym125537_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L125519_))))
                     (if (let ((__tmp127753 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp127753 _sym125537_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym125537_))
                         (let ((_type125538125540_
                                (let ()
                                  (declare (not safe))
                                  (gxc#apply-basic-expression-top-level-type
                                   _L125518_))))
                           (if _type125538125540_
                               (let ((_type125543_ _type125538125540_))
                                 (declare (not safe))
                                 (gxc#optimizer-declare-type!__0
                                  _sym125537_
                                  _type125543_))
                               '#f))))))
                (___kont125662125663_ (lambda () '#!void)))
            (let ((___match125691125692_
                   (lambda (_e125460125486_
                            _hd125459125489_
                            _tl125458125491_
                            _e125463125494_
                            _hd125462125497_
                            _tl125461125499_
                            _e125466125502_
                            _hd125465125505_
                            _tl125464125507_
                            _e125469125510_
                            _hd125468125513_
                            _tl125467125515_)
                     (let ((_L125518_ _hd125468125513_)
                           (_L125519_ _hd125465125505_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L125519_))
                           (___kont125660125661_ _L125518_ _L125519_)
                           (___kont125662125663_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx125658125659_))
                  (let ((_e125460125486_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx125658125659_))))
                    (let ((_tl125458125491_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125460125486_)))
                          (_hd125459125489_
                           (let ()
                             (declare (not safe))
                             (##car _e125460125486_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl125458125491_))
                          (let ((_e125463125494_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl125458125491_))))
                            (let ((_tl125461125499_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125463125494_)))
                                  (_hd125462125497_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125463125494_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd125462125497_))
                                  (let ((_e125466125502_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd125462125497_))))
                                    (let ((_tl125464125507_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125466125502_)))
                                          (_hd125465125505_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125466125502_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125464125507_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125461125499_))
                                              (let ((_e125469125510_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125461125499_))))
                                                (let ((_tl125467125515_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125469125510_)))
                                                      (_hd125468125513_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125469125510_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125467125515_))
                                                      (___match125691125692_
                                                       _e125460125486_
                                                       _hd125459125489_
                                                       _tl125458125491_
                                                       _e125463125494_
                                                       _hd125462125497_
                                                       _tl125461125499_
                                                       _e125466125502_
                                                       _hd125465125505_
                                                       _tl125464125507_
                                                       _e125469125510_
                                                       _hd125468125513_
                                                       _tl125467125515_)
                                                      (___kont125662125663_))))
                                              (___kont125662125663_))
                                          (___kont125662125663_))))
                                  (___kont125662125663_))))
                          (___kont125662125663_))))
                  (___kont125662125663_)))))))
    (define gxc#collect-type-define-values%
      (lambda (_stx125307_)
        (let* ((___stx125694125695_ _stx125307_)
               (_g125310125341_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx125694125695_)))))
          (let ((___kont125696125697_
                 (lambda (_L125423_ _L125424_)
                   (let ((_sym125440_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L125424_))))
                     (if (let ((__tmp127754 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp127754 _sym125440_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym125440_))
                         (if (let ()
                               (declare (not safe))
                               (gxc#optimizer-lookup-type _sym125440_))
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"skipping type inference for already declared type "
                                _sym125440_))
                             (let ((_type125441125443_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#apply-basic-expression-type
                                       _L125423_))))
                               (if _type125441125443_
                                   (let ((_type125446_ _type125441125443_))
                                     (declare (not safe))
                                     (gxc#optimizer-declare-type!__0
                                      _sym125440_
                                      _type125446_))
                                   '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__0 _L125423_)))))
                (___kont125698125699_
                 (lambda (_L125370_ _L125371_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__0 _L125370_)))))
            (let ((___match125727125728_
                   (lambda (_e125316125391_
                            _hd125315125394_
                            _tl125314125396_
                            _e125319125399_
                            _hd125318125402_
                            _tl125317125404_
                            _e125322125407_
                            _hd125321125410_
                            _tl125320125412_
                            _e125325125415_
                            _hd125324125418_
                            _tl125323125420_)
                     (let ((_L125423_ _hd125324125418_)
                           (_L125424_ _hd125321125410_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L125424_))
                           (___kont125696125697_ _L125423_ _L125424_)
                           (___kont125698125699_
                            _hd125324125418_
                            _hd125318125402_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx125694125695_))
                  (let ((_e125316125391_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx125694125695_))))
                    (let ((_tl125314125396_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125316125391_)))
                          (_hd125315125394_
                           (let ()
                             (declare (not safe))
                             (##car _e125316125391_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl125314125396_))
                          (let ((_e125319125399_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl125314125396_))))
                            (let ((_tl125317125404_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125319125399_)))
                                  (_hd125318125402_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125319125399_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd125318125402_))
                                  (let ((_e125322125407_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd125318125402_))))
                                    (let ((_tl125320125412_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125322125407_)))
                                          (_hd125321125410_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125322125407_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125320125412_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125317125404_))
                                              (let ((_e125325125415_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125317125404_))))
                                                (let ((_tl125323125420_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125325125415_)))
                                                      (_hd125324125418_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125325125415_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125323125420_))
                                                      (___match125727125728_
                                                       _e125316125391_
                                                       _hd125315125394_
                                                       _tl125314125396_
                                                       _e125319125399_
                                                       _hd125318125402_
                                                       _tl125317125404_
                                                       _e125322125407_
                                                       _hd125321125410_
                                                       _tl125320125412_
                                                       _e125325125415_
                                                       _hd125324125418_
                                                       _tl125323125420_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125310125341_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125310125341_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125317125404_))
                                              (let ((_e125336125362_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125317125404_))))
                                                (let ((_tl125334125367_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125336125362_)))
                                                      (_hd125335125365_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125336125362_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125334125367_))
                                                      (___kont125698125699_
                                                       _hd125335125365_
                                                       _hd125318125402_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125310125341_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125310125341_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125317125404_))
                                      (let ((_e125336125362_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125317125404_))))
                                        (let ((_tl125334125367_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125336125362_)))
                                              (_hd125335125365_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125336125362_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125334125367_))
                                              (___kont125698125699_
                                               _hd125335125365_
                                               _hd125318125402_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125310125341_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125310125341_))))))
                          (let () (declare (not safe)) (_g125310125341_)))))
                  (let () (declare (not safe)) (_g125310125341_))))))))
    (define gxc#collect-type-let-values%
      (lambda (_stx125092_)
        (letrec ((_collect-e125094_
                  (lambda (_hd125251_ _expr125252_)
                    (let* ((___stx125750125751_ _hd125251_)
                           (_g125255125265_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx125750125751_)))))
                      (let ((___kont125752125753_
                             (lambda (_L125285_)
                               (let ((_sym125296_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#identifier-symbol _L125285_))))
                                 (if (let ((__tmp127755
                                            (gxc#current-compile-mutators)))
                                       (declare (not safe))
                                       (hash-get __tmp127755 _sym125296_))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#verbose
                                        '"skipping type declaration for mutable binding "
                                        _sym125296_))
                                     (let ((_type125297125299_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-basic-expression-type
                                               _expr125252_))))
                                       (if _type125297125299_
                                           (let ((_type125302_
                                                  _type125297125299_))
                                             (declare (not safe))
                                             (gxc#optimizer-declare-type!__%
                                              _sym125296_
                                              _type125302_
                                              '#t))
                                           '#f))))))
                            (___kont125754125755_ (lambda () '#!void)))
                        (let ((___match125763125764_
                               (lambda (_e125260125277_
                                        _hd125259125280_
                                        _tl125258125282_)
                                 (let ((_L125285_ _hd125259125280_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _L125285_))
                                       (___kont125752125753_ _L125285_)
                                       (___kont125754125755_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx125750125751_))
                              (let ((_e125260125277_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx125750125751_))))
                                (let ((_tl125258125282_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125260125277_)))
                                      (_hd125259125280_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125260125277_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125258125282_))
                                      (___match125763125764_
                                       _e125260125277_
                                       _hd125259125280_
                                       _tl125258125282_)
                                      (___kont125754125755_))))
                              (___kont125754125755_))))))))
          (let* ((_g125096125131_
                  (lambda (_g125097125128_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g125097125128_))))
                 (_g125095125248_
                  (lambda (_g125097125134_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g125097125134_))
                        (let ((_e125103125136_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g125097125134_))))
                          (let ((_hd125102125139_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e125103125136_)))
                                (_tl125101125141_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e125103125136_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl125101125141_))
                                (let ((_e125106125144_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl125101125141_))))
                                  (let ((_hd125105125147_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e125106125144_)))
                                        (_tl125104125149_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e125106125144_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd125105125147_))
                                        (let ((_g127756_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd125105125147_
                                                  '0))))
                                          (begin
                                            (let ((_g127757_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g127756_)
                                                         (##vector-length
                                                          _g127756_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g127757_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g127757_)))
                                            (let ((_target125107125152_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g127756_
                                                      0)))
                                                  (_tl125109125154_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g127756_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125109125154_))
                                                  (letrec ((_loop125110125157_
                                                            (lambda (_hd125108125160_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr125114125162_
                             _hd125115125164_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd125108125160_))
                          (let ((_e125111125167_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd125108125160_))))
                            (let ((_lp-hd125112125170_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125111125167_)))
                                  (_lp-tl125113125172_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125111125167_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _lp-hd125112125170_))
                                  (let ((_e125120125175_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _lp-hd125112125170_))))
                                    (let ((_hd125119125178_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125120125175_)))
                                          (_tl125118125180_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125120125175_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl125118125180_))
                                          (let ((_e125123125183_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl125118125180_))))
                                            (let ((_hd125122125186_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e125123125183_)))
                                                  (_tl125121125188_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e125123125183_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125121125188_))
                                                  (let ((__tmp127762
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _hd125122125186_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr125114125162_)))
                (__tmp127761
                 (let ()
                   (declare (not safe))
                   (cons _hd125119125178_ _hd125115125164_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_loop125110125157_
                                                     _lp-tl125113125172_
                                                     __tmp127762
                                                     __tmp127761))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125096125131_
                                                     _g125097125134_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g125096125131_
                                             _g125097125134_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g125096125131_ _g125097125134_)))))
                          (let ((_expr125116125191_
                                 (reverse _expr125114125162_))
                                (_hd125117125193_ (reverse _hd125115125164_)))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl125104125149_))
                                (let ((_e125126125196_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl125104125149_))))
                                  (let ((_hd125125125199_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e125126125196_)))
                                        (_tl125124125201_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e125126125196_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl125124125201_))
                                        ((lambda (_L125204_
                                                  _L125205_
                                                  _L125206_)
                                           (for-each
                                            _collect-e125094_
                                            (let ((__tmp127758
                                                   (lambda (_g125226125229_
                                                            _g125227125231_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g125226125229_
                                                             _g125227125231_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp127758
                                                      '()
                                                      _L125206_))
                                            (let ((__tmp127759
                                                   (lambda (_g125233125236_
                                                            _g125234125238_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g125233125236_
                                                             _g125234125238_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp127759
                                                      '()
                                                      _L125205_)))
                                           (for-each
                                            gxc#compile-e
                                            (let ((__tmp127760
                                                   (lambda (_g125240125243_
                                                            _g125241125245_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g125240125243_
                                                             _g125241125245_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp127760
                                                      '()
                                                      _L125205_)))
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _L125204_)))
                                         _hd125125125199_
                                         _expr125116125191_
                                         _hd125117125193_)
                                        (let ()
                                          (declare (not safe))
                                          (_g125096125131_ _g125097125134_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g125096125131_ _g125097125134_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop125110125157_
                                                       _target125107125152_
                                                       '()
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125096125131_
                                                     _g125097125134_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g125096125131_ _g125097125134_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g125096125131_ _g125097125134_)))))
                        (let ()
                          (declare (not safe))
                          (_g125096125131_ _g125097125134_))))))
            (declare (not safe))
            (_g125095125248_ _stx125092_)))))
    (define gxc#collect-type-call%
      (lambda (_stx124584_)
        (let* ((___stx125766125767_ _stx124584_)
               (_g124588124703_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx125766125767_)))))
          (let ((___kont125768125769_
                 (lambda (_L125042_ _L125043_ _L125044_ _L125045_ _L125046_)
                   (let ((__tmp127766
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L125045_)))
                         (__tmp127765
                          (let () (declare (not safe)) (gx#stx-e _L125044_)))
                         (__tmp127764
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L125043_)))
                         (__tmp127763
                          (let () (declare (not safe)) (gx#stx-e _L125042_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp127766
                      __tmp127765
                      __tmp127764
                      __tmp127763))))
                (___kont125770125771_
                 (lambda (_L124870_ _L124871_ _L124872_ _L124873_)
                   (let ((__tmp127769
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L124872_)))
                         (__tmp127768
                          (let () (declare (not safe)) (gx#stx-e _L124871_)))
                         (__tmp127767
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L124870_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp127769
                      __tmp127768
                      __tmp127767
                      '#f))))
                (___kont125772125773_
                 (lambda (_L124740_)
                   (for-each
                    gxc#compile-e
                    (let ((__tmp127770
                           (lambda (_g124753124756_ _g124754124758_)
                             (let ()
                               (declare (not safe))
                               (cons _g124753124756_ _g124754124758_)))))
                      (declare (not safe))
                      (foldr1 __tmp127770 '() _L124740_))))))
            (let* ((___match126023126024_
                    (lambda (_e124689124708_
                             _hd124688124711_
                             _tl124687124713_
                             ___splice125774125775_
                             _target124690124716_
                             _tl124692124718_)
                      (letrec ((_loop124693124721_
                                (lambda (_hd124691124724_ _expr124697124726_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124691124724_))
                                      (let ((_e124694124729_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124691124724_))))
                                        (let ((_lp-tl124696124734_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124694124729_)))
                                              (_lp-hd124695124732_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124694124729_))))
                                          (let ((__tmp127771
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd124695124732_
                                                         _expr124697124726_))))
                                            (declare (not safe))
                                            (_loop124693124721_
                                             _lp-tl124696124734_
                                             __tmp127771))))
                                      (let ((_expr124698124737_
                                             (reverse _expr124697124726_)))
                                        (___kont125772125773_
                                         _expr124698124737_))))))
                        (let ()
                          (declare (not safe))
                          (_loop124693124721_ _target124690124716_ '())))))
                   (___match125903125904_
                    (lambda (_e124597124914_
                             _hd124596124917_
                             _tl124595124919_
                             _e124600124922_
                             _hd124599124925_
                             _tl124598124927_
                             _e124603124930_
                             _hd124602124933_
                             _tl124601124935_
                             _e124606124938_
                             _hd124605124941_
                             _tl124604124943_
                             _e124609124946_
                             _hd124608124949_
                             _tl124607124951_
                             _e124612124954_
                             _hd124611124957_
                             _tl124610124959_
                             _e124615124962_
                             _hd124614124965_
                             _tl124613124967_
                             _e124618124970_
                             _hd124617124973_
                             _tl124616124975_
                             _e124621124978_
                             _hd124620124981_
                             _tl124619124983_
                             _e124624124986_
                             _hd124623124989_
                             _tl124622124991_
                             _e124627124994_
                             _hd124626124997_
                             _tl124625124999_
                             _e124630125002_
                             _hd124629125005_
                             _tl124628125007_
                             _e124633125010_
                             _hd124632125013_
                             _tl124631125015_
                             _e124636125018_
                             _hd124635125021_
                             _tl124634125023_
                             _e124639125026_
                             _hd124638125029_
                             _tl124637125031_
                             _e124642125034_
                             _hd124641125037_
                             _tl124640125039_)
                      (let ((_L125042_ _hd124641125037_)
                            (_L125043_ _hd124632125013_)
                            (_L125044_ _hd124623124989_)
                            (_L125045_ _hd124614124965_)
                            (_L125046_ _hd124605124941_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _L125046_
                               'bind-method!))
                            (___kont125768125769_
                             _L125042_
                             _L125043_
                             _L125044_
                             _L125045_
                             _L125046_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl124595124919_))
                                (let ((___splice125774125775_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl124595124919_
                                          '0))))
                                  (let ((_tl124692124718_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice125774125775_
                                            '1)))
                                        (_target124690124716_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice125774125775_
                                            '0))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl124692124718_))
                                        (___match126023126024_
                                         _e124597124914_
                                         _hd124596124917_
                                         _tl124595124919_
                                         ___splice125774125775_
                                         _target124690124716_
                                         _tl124692124718_)
                                        (let ()
                                          (declare (not safe))
                                          (_g124588124703_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g124588124703_))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx125766125767_))
                  (let ((_e124597124914_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx125766125767_))))
                    (let ((_tl124595124919_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124597124914_)))
                          (_hd124596124917_
                           (let ()
                             (declare (not safe))
                             (##car _e124597124914_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl124595124919_))
                          (let ((_e124600124922_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl124595124919_))))
                            (let ((_tl124598124927_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124600124922_)))
                                  (_hd124599124925_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124600124922_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd124599124925_))
                                  (let ((_e124603124930_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd124599124925_))))
                                    (let ((_tl124601124935_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124603124930_)))
                                          (_hd124602124933_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124603124930_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd124602124933_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd124602124933_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl124601124935_))
                                                  (let ((_e124606124938_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl124601124935_))))
                                                    (let ((_tl124604124943_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124606124938_)))
                                                          (_hd124605124941_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124606124938_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl124604124943_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl124598124927_))
                      (let ((_e124609124946_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl124598124927_))))
                        (let ((_tl124607124951_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124609124946_)))
                              (_hd124608124949_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124609124946_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd124608124949_))
                              (let ((_e124612124954_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd124608124949_))))
                                (let ((_tl124610124959_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124612124954_)))
                                      (_hd124611124957_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124612124954_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd124611124957_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd124611124957_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl124610124959_))
                                              (let ((_e124615124962_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl124610124959_))))
                                                (let ((_tl124613124967_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124615124962_)))
                                                      (_hd124614124965_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124615124962_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124613124967_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl124607124951_))
                                                          (let ((_e124618124970_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl124607124951_))))
                    (let ((_tl124616124975_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124618124970_)))
                          (_hd124617124973_
                           (let ()
                             (declare (not safe))
                             (##car _e124618124970_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd124617124973_))
                          (let ((_e124621124978_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd124617124973_))))
                            (let ((_tl124619124983_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124621124978_)))
                                  (_hd124620124981_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124621124978_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd124620124981_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd124620124981_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl124619124983_))
                                          (let ((_e124624124986_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl124619124983_))))
                                            (let ((_tl124622124991_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124624124986_)))
                                                  (_hd124623124989_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124624124986_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124622124991_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl124616124975_))
                                                      (let ((_e124627124994_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl124616124975_))))
                (let ((_tl124625124999_
                       (let () (declare (not safe)) (##cdr _e124627124994_)))
                      (_hd124626124997_
                       (let () (declare (not safe)) (##car _e124627124994_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd124626124997_))
                      (let ((_e124630125002_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd124626124997_))))
                        (let ((_tl124628125007_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124630125002_)))
                              (_hd124629125005_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124630125002_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd124629125005_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd124629125005_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124628125007_))
                                      (let ((_e124633125010_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124628125007_))))
                                        (let ((_tl124631125015_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124633125010_)))
                                              (_hd124632125013_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124633125010_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124631125015_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl124625124999_))
                                                  (let ((_e124636125018_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl124625124999_))))
                                                    (let ((_tl124634125023_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124636125018_)))
                                                          (_hd124635125021_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124636125018_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd124635125021_))
                                                          (let ((_e124639125026_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd124635125021_))))
                    (let ((_tl124637125031_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124639125026_)))
                          (_hd124638125029_
                           (let ()
                             (declare (not safe))
                             (##car _e124639125026_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd124638125029_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd124638125029_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124637125031_))
                                  (let ((_e124642125034_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124637125031_))))
                                    (let ((_tl124640125039_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124642125034_)))
                                          (_hd124641125037_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124642125034_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124640125039_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124634125023_))
                                              (___match125903125904_
                                               _e124597124914_
                                               _hd124596124917_
                                               _tl124595124919_
                                               _e124600124922_
                                               _hd124599124925_
                                               _tl124598124927_
                                               _e124603124930_
                                               _hd124602124933_
                                               _tl124601124935_
                                               _e124606124938_
                                               _hd124605124941_
                                               _tl124604124943_
                                               _e124609124946_
                                               _hd124608124949_
                                               _tl124607124951_
                                               _e124612124954_
                                               _hd124611124957_
                                               _tl124610124959_
                                               _e124615124962_
                                               _hd124614124965_
                                               _tl124613124967_
                                               _e124618124970_
                                               _hd124617124973_
                                               _tl124616124975_
                                               _e124621124978_
                                               _hd124620124981_
                                               _tl124619124983_
                                               _e124624124986_
                                               _hd124623124989_
                                               _tl124622124991_
                                               _e124627124994_
                                               _hd124626124997_
                                               _tl124625124999_
                                               _e124630125002_
                                               _hd124629125005_
                                               _tl124628125007_
                                               _e124633125010_
                                               _hd124632125013_
                                               _tl124631125015_
                                               _e124636125018_
                                               _hd124635125021_
                                               _tl124634125023_
                                               _e124639125026_
                                               _hd124638125029_
                                               _tl124637125031_
                                               _e124642125034_
                                               _hd124641125037_
                                               _tl124640125039_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl124595124919_))
                                                  (let ((___splice125774125775_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl124595124919_
                                                            '0))))
                                                    (let ((_tl124692124718_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice125774125775_
                                                              '1)))
                                                          (_target124690124716_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice125774125775_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl124692124718_))
                                                          (___match126023126024_
                                                           _e124597124914_
                                                           _hd124596124917_
                                                           _tl124595124919_
                                                           ___splice125774125775_
                                                           _target124690124716_
                                                           _tl124692124718_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g124588124703_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g124588124703_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl124595124919_))
                                              (let ((___splice125774125775_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl124595124919_
                                                        '0))))
                                                (let ((_tl124692124718_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice125774125775_
                                                          '1)))
                                                      (_target124690124716_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice125774125775_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124692124718_))
                                                      (___match126023126024_
                                                       _e124597124914_
                                                       _hd124596124917_
                                                       _tl124595124919_
                                                       ___splice125774125775_
                                                       _target124690124716_
                                                       _tl124692124718_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g124588124703_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g124588124703_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl124595124919_))
                                      (let ((___splice125774125775_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl124595124919_
                                                '0))))
                                        (let ((_tl124692124718_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice125774125775_
                                                  '1)))
                                              (_target124690124716_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice125774125775_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124692124718_))
                                              (___match126023126024_
                                               _e124597124914_
                                               _hd124596124917_
                                               _tl124595124919_
                                               ___splice125774125775_
                                               _target124690124716_
                                               _tl124692124718_)
                                              (let ()
                                                (declare (not safe))
                                                (_g124588124703_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124588124703_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl124595124919_))
                                  (let ((___splice125774125775_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl124595124919_
                                            '0))))
                                    (let ((_tl124692124718_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice125774125775_
                                              '1)))
                                          (_target124690124716_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice125774125775_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124692124718_))
                                          (___match126023126024_
                                           _e124597124914_
                                           _hd124596124917_
                                           _tl124595124919_
                                           ___splice125774125775_
                                           _target124690124716_
                                           _tl124692124718_)
                                          (let ()
                                            (declare (not safe))
                                            (_g124588124703_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g124588124703_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl124595124919_))
                              (let ((___splice125774125775_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl124595124919_
                                        '0))))
                                (let ((_tl124692124718_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice125774125775_
                                          '1)))
                                      (_target124690124716_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice125774125775_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124692124718_))
                                      (___match126023126024_
                                       _e124597124914_
                                       _hd124596124917_
                                       _tl124595124919_
                                       ___splice125774125775_
                                       _target124690124716_
                                       _tl124692124718_)
                                      (let ()
                                        (declare (not safe))
                                        (_g124588124703_)))))
                              (let ()
                                (declare (not safe))
                                (_g124588124703_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl124595124919_))
                      (let ((___splice125774125775_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl124595124919_ '0))))
                        (let ((_tl124692124718_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice125774125775_ '1)))
                              (_target124690124716_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice125774125775_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl124692124718_))
                              (___match126023126024_
                               _e124597124914_
                               _hd124596124917_
                               _tl124595124919_
                               ___splice125774125775_
                               _target124690124716_
                               _tl124692124718_)
                              (let ()
                                (declare (not safe))
                                (_g124588124703_)))))
                      (let () (declare (not safe)) (_g124588124703_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124625124999_))
                                                      (if (let ((__tmp127772
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp127772 'bind-method!))
                  (let ((_L124870_ _hd124632125013_)
                        (_L124871_ _hd124623124989_)
                        (_L124872_ _hd124614124965_)
                        (_L124873_ _hd124605124941_))
                    (___kont125770125771_
                     _L124870_
                     _L124871_
                     _L124872_
                     _L124873_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl124595124919_))
                      (let ((___splice125774125775_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl124595124919_ '0))))
                        (let ((_tl124692124718_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice125774125775_ '1)))
                              (_target124690124716_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice125774125775_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl124692124718_))
                              (___match126023126024_
                               _e124597124914_
                               _hd124596124917_
                               _tl124595124919_
                               ___splice125774125775_
                               _target124690124716_
                               _tl124692124718_)
                              (let ()
                                (declare (not safe))
                                (_g124588124703_)))))
                      (let () (declare (not safe)) (_g124588124703_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl124595124919_))
                  (let ((___splice125774125775_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl124595124919_ '0))))
                    (let ((_tl124692124718_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice125774125775_ '1)))
                          (_target124690124716_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice125774125775_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl124692124718_))
                          (___match126023126024_
                           _e124597124914_
                           _hd124596124917_
                           _tl124595124919_
                           ___splice125774125775_
                           _target124690124716_
                           _tl124692124718_)
                          (let () (declare (not safe)) (_g124588124703_)))))
                  (let () (declare (not safe)) (_g124588124703_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl124595124919_))
                                                  (let ((___splice125774125775_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl124595124919_
                                                            '0))))
                                                    (let ((_tl124692124718_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice125774125775_
                                                              '1)))
                                                          (_target124690124716_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice125774125775_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl124692124718_))
                                                          (___match126023126024_
                                                           _e124597124914_
                                                           _hd124596124917_
                                                           _tl124595124919_
                                                           ___splice125774125775_
                                                           _target124690124716_
                                                           _tl124692124718_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g124588124703_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g124588124703_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl124595124919_))
                                          (let ((___splice125774125775_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl124595124919_
                                                    '0))))
                                            (let ((_tl124692124718_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice125774125775_
                                                      '1)))
                                                  (_target124690124716_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice125774125775_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124692124718_))
                                                  (___match126023126024_
                                                   _e124597124914_
                                                   _hd124596124917_
                                                   _tl124595124919_
                                                   ___splice125774125775_
                                                   _target124690124716_
                                                   _tl124692124718_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g124588124703_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g124588124703_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl124595124919_))
                                      (let ((___splice125774125775_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl124595124919_
                                                '0))))
                                        (let ((_tl124692124718_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice125774125775_
                                                  '1)))
                                              (_target124690124716_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice125774125775_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124692124718_))
                                              (___match126023126024_
                                               _e124597124914_
                                               _hd124596124917_
                                               _tl124595124919_
                                               ___splice125774125775_
                                               _target124690124716_
                                               _tl124692124718_)
                                              (let ()
                                                (declare (not safe))
                                                (_g124588124703_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124588124703_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl124595124919_))
                                  (let ((___splice125774125775_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl124595124919_
                                            '0))))
                                    (let ((_tl124692124718_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice125774125775_
                                              '1)))
                                          (_target124690124716_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice125774125775_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124692124718_))
                                          (___match126023126024_
                                           _e124597124914_
                                           _hd124596124917_
                                           _tl124595124919_
                                           ___splice125774125775_
                                           _target124690124716_
                                           _tl124692124718_)
                                          (let ()
                                            (declare (not safe))
                                            (_g124588124703_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g124588124703_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl124595124919_))
                          (let ((___splice125774125775_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl124595124919_
                                    '0))))
                            (let ((_tl124692124718_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice125774125775_ '1)))
                                  (_target124690124716_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice125774125775_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl124692124718_))
                                  (___match126023126024_
                                   _e124597124914_
                                   _hd124596124917_
                                   _tl124595124919_
                                   ___splice125774125775_
                                   _target124690124716_
                                   _tl124692124718_)
                                  (let ()
                                    (declare (not safe))
                                    (_g124588124703_)))))
                          (let () (declare (not safe)) (_g124588124703_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl124595124919_))
                  (let ((___splice125774125775_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl124595124919_ '0))))
                    (let ((_tl124692124718_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice125774125775_ '1)))
                          (_target124690124716_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice125774125775_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl124692124718_))
                          (___match126023126024_
                           _e124597124914_
                           _hd124596124917_
                           _tl124595124919_
                           ___splice125774125775_
                           _target124690124716_
                           _tl124692124718_)
                          (let () (declare (not safe)) (_g124588124703_)))))
                  (let () (declare (not safe)) (_g124588124703_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl124595124919_))
                                                      (let ((___splice125774125775_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl124595124919_ '0))))
                (let ((_tl124692124718_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice125774125775_ '1)))
                      (_target124690124716_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice125774125775_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl124692124718_))
                      (___match126023126024_
                       _e124597124914_
                       _hd124596124917_
                       _tl124595124919_
                       ___splice125774125775_
                       _target124690124716_
                       _tl124692124718_)
                      (let () (declare (not safe)) (_g124588124703_)))))
              (let () (declare (not safe)) (_g124588124703_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl124595124919_))
                                              (let ((___splice125774125775_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl124595124919_
                                                        '0))))
                                                (let ((_tl124692124718_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice125774125775_
                                                          '1)))
                                                      (_target124690124716_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice125774125775_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124692124718_))
                                                      (___match126023126024_
                                                       _e124597124914_
                                                       _hd124596124917_
                                                       _tl124595124919_
                                                       ___splice125774125775_
                                                       _target124690124716_
                                                       _tl124692124718_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g124588124703_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g124588124703_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl124595124919_))
                                          (let ((___splice125774125775_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl124595124919_
                                                    '0))))
                                            (let ((_tl124692124718_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice125774125775_
                                                      '1)))
                                                  (_target124690124716_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice125774125775_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124692124718_))
                                                  (___match126023126024_
                                                   _e124597124914_
                                                   _hd124596124917_
                                                   _tl124595124919_
                                                   ___splice125774125775_
                                                   _target124690124716_
                                                   _tl124692124718_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g124588124703_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g124588124703_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl124595124919_))
                                      (let ((___splice125774125775_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl124595124919_
                                                '0))))
                                        (let ((_tl124692124718_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice125774125775_
                                                  '1)))
                                              (_target124690124716_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice125774125775_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124692124718_))
                                              (___match126023126024_
                                               _e124597124914_
                                               _hd124596124917_
                                               _tl124595124919_
                                               ___splice125774125775_
                                               _target124690124716_
                                               _tl124692124718_)
                                              (let ()
                                                (declare (not safe))
                                                (_g124588124703_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124588124703_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl124595124919_))
                              (let ((___splice125774125775_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl124595124919_
                                        '0))))
                                (let ((_tl124692124718_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice125774125775_
                                          '1)))
                                      (_target124690124716_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice125774125775_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124692124718_))
                                      (___match126023126024_
                                       _e124597124914_
                                       _hd124596124917_
                                       _tl124595124919_
                                       ___splice125774125775_
                                       _target124690124716_
                                       _tl124692124718_)
                                      (let ()
                                        (declare (not safe))
                                        (_g124588124703_)))))
                              (let ()
                                (declare (not safe))
                                (_g124588124703_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl124595124919_))
                      (let ((___splice125774125775_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl124595124919_ '0))))
                        (let ((_tl124692124718_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice125774125775_ '1)))
                              (_target124690124716_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice125774125775_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl124692124718_))
                              (___match126023126024_
                               _e124597124914_
                               _hd124596124917_
                               _tl124595124919_
                               ___splice125774125775_
                               _target124690124716_
                               _tl124692124718_)
                              (let ()
                                (declare (not safe))
                                (_g124588124703_)))))
                      (let () (declare (not safe)) (_g124588124703_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl124595124919_))
                  (let ((___splice125774125775_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl124595124919_ '0))))
                    (let ((_tl124692124718_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice125774125775_ '1)))
                          (_target124690124716_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice125774125775_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl124692124718_))
                          (___match126023126024_
                           _e124597124914_
                           _hd124596124917_
                           _tl124595124919_
                           ___splice125774125775_
                           _target124690124716_
                           _tl124692124718_)
                          (let () (declare (not safe)) (_g124588124703_)))))
                  (let () (declare (not safe)) (_g124588124703_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl124595124919_))
                                                  (let ((___splice125774125775_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl124595124919_
                                                            '0))))
                                                    (let ((_tl124692124718_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice125774125775_
                                                              '1)))
                                                          (_target124690124716_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice125774125775_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl124692124718_))
                                                          (___match126023126024_
                                                           _e124597124914_
                                                           _hd124596124917_
                                                           _tl124595124919_
                                                           ___splice125774125775_
                                                           _target124690124716_
                                                           _tl124692124718_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g124588124703_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g124588124703_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl124595124919_))
                                              (let ((___splice125774125775_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl124595124919_
                                                        '0))))
                                                (let ((_tl124692124718_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice125774125775_
                                                          '1)))
                                                      (_target124690124716_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice125774125775_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124692124718_))
                                                      (___match126023126024_
                                                       _e124597124914_
                                                       _hd124596124917_
                                                       _tl124595124919_
                                                       ___splice125774125775_
                                                       _target124690124716_
                                                       _tl124692124718_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g124588124703_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g124588124703_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl124595124919_))
                                          (let ((___splice125774125775_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl124595124919_
                                                    '0))))
                                            (let ((_tl124692124718_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice125774125775_
                                                      '1)))
                                                  (_target124690124716_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice125774125775_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124692124718_))
                                                  (___match126023126024_
                                                   _e124597124914_
                                                   _hd124596124917_
                                                   _tl124595124919_
                                                   ___splice125774125775_
                                                   _target124690124716_
                                                   _tl124692124718_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g124588124703_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g124588124703_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl124595124919_))
                                  (let ((___splice125774125775_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl124595124919_
                                            '0))))
                                    (let ((_tl124692124718_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice125774125775_
                                              '1)))
                                          (_target124690124716_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice125774125775_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124692124718_))
                                          (___match126023126024_
                                           _e124597124914_
                                           _hd124596124917_
                                           _tl124595124919_
                                           ___splice125774125775_
                                           _target124690124716_
                                           _tl124692124718_)
                                          (let ()
                                            (declare (not safe))
                                            (_g124588124703_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g124588124703_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl124595124919_))
                          (let ((___splice125774125775_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl124595124919_
                                    '0))))
                            (let ((_tl124692124718_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice125774125775_ '1)))
                                  (_target124690124716_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice125774125775_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl124692124718_))
                                  (___match126023126024_
                                   _e124597124914_
                                   _hd124596124917_
                                   _tl124595124919_
                                   ___splice125774125775_
                                   _target124690124716_
                                   _tl124692124718_)
                                  (let ()
                                    (declare (not safe))
                                    (_g124588124703_)))))
                          (let () (declare (not safe)) (_g124588124703_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl124595124919_))
                      (let ((___splice125774125775_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl124595124919_ '0))))
                        (let ((_tl124692124718_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice125774125775_ '1)))
                              (_target124690124716_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice125774125775_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl124692124718_))
                              (___match126023126024_
                               _e124597124914_
                               _hd124596124917_
                               _tl124595124919_
                               ___splice125774125775_
                               _target124690124716_
                               _tl124692124718_)
                              (let ()
                                (declare (not safe))
                                (_g124588124703_)))))
                      (let () (declare (not safe)) (_g124588124703_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl124595124919_))
                                                      (let ((___splice125774125775_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl124595124919_ '0))))
                (let ((_tl124692124718_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice125774125775_ '1)))
                      (_target124690124716_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice125774125775_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl124692124718_))
                      (___match126023126024_
                       _e124597124914_
                       _hd124596124917_
                       _tl124595124919_
                       ___splice125774125775_
                       _target124690124716_
                       _tl124692124718_)
                      (let () (declare (not safe)) (_g124588124703_)))))
              (let () (declare (not safe)) (_g124588124703_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl124595124919_))
                                                  (let ((___splice125774125775_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl124595124919_
                                                            '0))))
                                                    (let ((_tl124692124718_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice125774125775_
                                                              '1)))
                                                          (_target124690124716_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice125774125775_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl124692124718_))
                                                          (___match126023126024_
                                                           _e124597124914_
                                                           _hd124596124917_
                                                           _tl124595124919_
                                                           ___splice125774125775_
                                                           _target124690124716_
                                                           _tl124692124718_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g124588124703_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g124588124703_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl124595124919_))
                                              (let ((___splice125774125775_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl124595124919_
                                                        '0))))
                                                (let ((_tl124692124718_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice125774125775_
                                                          '1)))
                                                      (_target124690124716_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice125774125775_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124692124718_))
                                                      (___match126023126024_
                                                       _e124597124914_
                                                       _hd124596124917_
                                                       _tl124595124919_
                                                       ___splice125774125775_
                                                       _target124690124716_
                                                       _tl124692124718_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g124588124703_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g124588124703_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl124595124919_))
                                      (let ((___splice125774125775_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl124595124919_
                                                '0))))
                                        (let ((_tl124692124718_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice125774125775_
                                                  '1)))
                                              (_target124690124716_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice125774125775_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124692124718_))
                                              (___match126023126024_
                                               _e124597124914_
                                               _hd124596124917_
                                               _tl124595124919_
                                               ___splice125774125775_
                                               _target124690124716_
                                               _tl124692124718_)
                                              (let ()
                                                (declare (not safe))
                                                (_g124588124703_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124588124703_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl124595124919_))
                              (let ((___splice125774125775_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl124595124919_
                                        '0))))
                                (let ((_tl124692124718_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice125774125775_
                                          '1)))
                                      (_target124690124716_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice125774125775_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124692124718_))
                                      (___match126023126024_
                                       _e124597124914_
                                       _hd124596124917_
                                       _tl124595124919_
                                       ___splice125774125775_
                                       _target124690124716_
                                       _tl124692124718_)
                                      (let ()
                                        (declare (not safe))
                                        (_g124588124703_)))))
                              (let ()
                                (declare (not safe))
                                (_g124588124703_))))))
                  (let () (declare (not safe)) (_g124588124703_))))))))
    (define gxc#current-compile-type-closure (make-parameter '#f))
    (define gxc#basic-expression-type-begin%
      (lambda (_stx124524_)
        (let* ((___stx126026126027_ _stx124524_)
               (_g124527124540_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126026126027_)))))
          (let ((___kont126028126029_
                 (lambda (_L124568_)
                   (let () (declare (not safe)) (gxc#compile-e__0 _L124568_))))
                (___kont126030126031_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx126026126027_))
                (let ((_e124532124552_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx126026126027_))))
                  (let ((_tl124530124557_
                         (let () (declare (not safe)) (##cdr _e124532124552_)))
                        (_hd124531124555_
                         (let ()
                           (declare (not safe))
                           (##car _e124532124552_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl124530124557_))
                        (let ((_e124535124560_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl124530124557_))))
                          (let ((_tl124533124565_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e124535124560_)))
                                (_hd124534124563_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e124535124560_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl124533124565_))
                                (___kont126028126029_ _hd124534124563_)
                                (___kont126030126031_))))
                        (___kont126030126031_))))
                (___kont126030126031_))))))
    (define gxc#basic-expression-type-annotations
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_stx124404_)
        (let* ((_g124406124423_
                (lambda (_g124407124420_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124407124420_))))
               (_g124405124521_
                (lambda (_g124407124426_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124407124426_))
                      (let ((_e124412124428_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124407124426_))))
                        (let ((_hd124411124431_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124412124428_)))
                              (_tl124410124433_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124412124428_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124410124433_))
                              (let ((_e124415124436_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124410124433_))))
                                (let ((_hd124414124439_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124415124436_)))
                                      (_tl124413124441_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124415124436_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124413124441_))
                                      (let ((_e124418124444_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124413124441_))))
                                        (let ((_hd124417124447_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124418124444_)))
                                              (_tl124416124449_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124418124444_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124416124449_))
                                              ((lambda (_L124452_ _L124453_)
                                                 (let* ((___stx126048126049_
                                                         _L124453_)
                                                        (_g124469124480_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx126048126049_)))))
                                                   (let ((___kont126050126051_
                                                          (lambda (_L124500_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L124501_)
                    (let ((_$e124513_
                           (let ((__tmp127773
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _L124501_))))
                             (declare (not safe))
                             (hash-get
                              gxc#basic-expression-type-annotations
                              __tmp127773))))
                      (if _$e124513_
                          ((lambda (_type-e124516_)
                             (_type-e124516_ _stx124404_ _L124453_))
                           _$e124513_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _L124452_))))))
                 (___kont126052126053_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__0 _L124452_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((___match126059126060_
                                                            (lambda (_e124475124492_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd124474124495_
                             _tl124473124497_)
                      (let ((_L124500_ _tl124473124497_)
                            (_L124501_ _hd124474124495_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L124501_))
                            (___kont126050126051_ _L124500_ _L124501_)
                            (___kont126052126053_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? ___stx126048126049_))
                   (let ((_e124475124492_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e ___stx126048126049_))))
                     (let ((_tl124473124497_
                            (let ()
                              (declare (not safe))
                              (##cdr _e124475124492_)))
                           (_hd124474124495_
                            (let ()
                              (declare (not safe))
                              (##car _e124475124492_))))
                       (___match126059126060_
                        _e124475124492_
                        _hd124474124495_
                        _tl124473124497_)))
                   (___kont126052126053_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd124417124447_
                                               _hd124414124439_)
                                              (let ()
                                                (declare (not safe))
                                                (_g124406124423_
                                                 _g124407124426_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124406124423_ _g124407124426_)))))
                              (let ()
                                (declare (not safe))
                                (_g124406124423_ _g124407124426_)))))
                      (let ()
                        (declare (not safe))
                        (_g124406124423_ _g124407124426_))))))
          (declare (not safe))
          (_g124405124521_ _stx124404_))))
    (define gxc#basic-expression-type-annotation-mop.class
      (lambda (_stx124248_ _ann124249_)
        (let* ((_g124251124288_
                (lambda (_g124252124285_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124252124285_))))
               (_g124250124401_
                (lambda (_g124252124291_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124252124291_))
                      (let ((_e124262124293_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124252124291_))))
                        (let ((_hd124261124296_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124262124293_)))
                              (_tl124260124298_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124262124293_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124260124298_))
                              (let ((_e124265124301_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124260124298_))))
                                (let ((_hd124264124304_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124265124301_)))
                                      (_tl124263124306_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124265124301_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124263124306_))
                                      (let ((_e124268124309_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124263124306_))))
                                        (let ((_hd124267124312_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124268124309_)))
                                              (_tl124266124314_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124268124309_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl124266124314_))
                                              (let ((_e124271124317_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl124266124314_))))
                                                (let ((_hd124270124320_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124271124317_)))
                                                      (_tl124269124322_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124271124317_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl124269124322_))
                                                      (let ((_e124274124325_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl124269124322_))))
                (let ((_hd124273124328_
                       (let () (declare (not safe)) (##car _e124274124325_)))
                      (_tl124272124330_
                       (let () (declare (not safe)) (##cdr _e124274124325_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl124272124330_))
                      (let ((_e124277124333_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl124272124330_))))
                        (let ((_hd124276124336_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124277124333_)))
                              (_tl124275124338_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124277124333_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124275124338_))
                              (let ((_e124280124341_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124275124338_))))
                                (let ((_hd124279124344_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124280124341_)))
                                      (_tl124278124346_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124280124341_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124278124346_))
                                      (let ((_e124283124349_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124278124346_))))
                                        (let ((_hd124282124352_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124283124349_)))
                                              (_tl124281124354_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124283124349_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124281124354_))
                                              ((lambda (_L124357_
                                                        _L124358_
                                                        _L124359_
                                                        _L124360_
                                                        _L124361_
                                                        _L124362_
                                                        _L124363_)
                                                 (let ((_type-id124393_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L124363_)))
                                                       (_super124394_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gxc#identifier-symbol
                                                           _L124362_)))
                                                       (_slots124395_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gx#stx-e
                                                           _L124361_)))
                                                       (_ctor-method124396_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L124360_)))
                                                       (_struct?124397_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L124359_)))
                                                       (_final?124398_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L124358_)))
                                                       (_metaclass124399_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _L124357_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#identifier-symbol
                                                               _L124357_))
                                                            '#f)))
                                                   (let ((__obj127731
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
                                                      __obj127731
                                                      _type-id124393_
                                                      _super124394_
                                                      _slots124395_
                                                      _ctor-method124396_
                                                      _struct?124397_
                                                      _final?124398_
                                                      _metaclass124399_)
                                                     __obj127731)))
                                               _hd124282124352_
                                               _hd124279124344_
                                               _hd124276124336_
                                               _hd124273124328_
                                               _hd124270124320_
                                               _hd124267124312_
                                               _hd124264124304_)
                                              (let ()
                                                (declare (not safe))
                                                (_g124251124288_
                                                 _g124252124291_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124251124288_ _g124252124291_)))))
                              (let ()
                                (declare (not safe))
                                (_g124251124288_ _g124252124291_)))))
                      (let ()
                        (declare (not safe))
                        (_g124251124288_ _g124252124291_)))))
              (let ()
                (declare (not safe))
                (_g124251124288_ _g124252124291_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g124251124288_
                                                 _g124252124291_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124251124288_ _g124252124291_)))))
                              (let ()
                                (declare (not safe))
                                (_g124251124288_ _g124252124291_)))))
                      (let ()
                        (declare (not safe))
                        (_g124251124288_ _g124252124291_))))))
          (declare (not safe))
          (_g124250124401_ _ann124249_))))
    (define gxc#basic-expression-type-annotation-mop.constructor
      (lambda (_stx124196_ _ann124197_)
        (let* ((_g124199124212_
                (lambda (_g124200124209_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124200124209_))))
               (_g124198124245_
                (lambda (_g124200124215_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124200124215_))
                      (let ((_e124204124217_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124200124215_))))
                        (let ((_hd124203124220_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124204124217_)))
                              (_tl124202124222_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124204124217_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124202124222_))
                              (let ((_e124207124225_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124202124222_))))
                                (let ((_hd124206124228_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124207124225_)))
                                      (_tl124205124230_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124207124225_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124205124230_))
                                      ((lambda (_L124233_)
                                         (let ((__tmp127774
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L124233_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!constructor::t
                                            __tmp127774)))
                                       _hd124206124228_)
                                      (let ()
                                        (declare (not safe))
                                        (_g124199124212_ _g124200124215_)))))
                              (let ()
                                (declare (not safe))
                                (_g124199124212_ _g124200124215_)))))
                      (let ()
                        (declare (not safe))
                        (_g124199124212_ _g124200124215_))))))
          (declare (not safe))
          (_g124198124245_ _ann124197_))))
    (define gxc#basic-expression-type-annotation-mop.predicate
      (lambda (_stx124144_ _ann124145_)
        (let* ((_g124147124160_
                (lambda (_g124148124157_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124148124157_))))
               (_g124146124193_
                (lambda (_g124148124163_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124148124163_))
                      (let ((_e124152124165_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124148124163_))))
                        (let ((_hd124151124168_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124152124165_)))
                              (_tl124150124170_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124152124165_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124150124170_))
                              (let ((_e124155124173_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124150124170_))))
                                (let ((_hd124154124176_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124155124173_)))
                                      (_tl124153124178_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124155124173_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124153124178_))
                                      ((lambda (_L124181_)
                                         (let ((__tmp127775
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L124181_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!predicate::t
                                            __tmp127775)))
                                       _hd124154124176_)
                                      (let ()
                                        (declare (not safe))
                                        (_g124147124160_ _g124148124163_)))))
                              (let ()
                                (declare (not safe))
                                (_g124147124160_ _g124148124163_)))))
                      (let ()
                        (declare (not safe))
                        (_g124147124160_ _g124148124163_))))))
          (declare (not safe))
          (_g124146124193_ _ann124145_))))
    (define gxc#basic-expression-type-annotation-mop.accessor
      (lambda (_stx124060_ _ann124061_)
        (let* ((_g124063124084_
                (lambda (_g124064124081_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124064124081_))))
               (_g124062124141_
                (lambda (_g124064124087_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124064124087_))
                      (let ((_e124070124089_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124064124087_))))
                        (let ((_hd124069124092_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124070124089_)))
                              (_tl124068124094_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124070124089_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124068124094_))
                              (let ((_e124073124097_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124068124094_))))
                                (let ((_hd124072124100_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124073124097_)))
                                      (_tl124071124102_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124073124097_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124071124102_))
                                      (let ((_e124076124105_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124071124102_))))
                                        (let ((_hd124075124108_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124076124105_)))
                                              (_tl124074124110_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124076124105_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl124074124110_))
                                              (let ((_e124079124113_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl124074124110_))))
                                                (let ((_hd124078124116_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124079124113_)))
                                                      (_tl124077124118_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124079124113_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124077124118_))
                                                      ((lambda (_L124121_
                                                                _L124122_
                                                                _L124123_)
                                                         (let ((__tmp127778
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L124123_)))
                       (__tmp127777
                        (let () (declare (not safe)) (gx#stx-e _L124122_)))
                       (__tmp127776
                        (let () (declare (not safe)) (gx#stx-e _L124121_))))
                   (declare (not safe))
                   (##structure
                    gxc#!accessor::t
                    __tmp127778
                    __tmp127777
                    __tmp127776)))
               _hd124078124116_
               _hd124075124108_
               _hd124072124100_)
              (let ()
                (declare (not safe))
                (_g124063124084_ _g124064124087_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g124063124084_
                                                 _g124064124087_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124063124084_ _g124064124087_)))))
                              (let ()
                                (declare (not safe))
                                (_g124063124084_ _g124064124087_)))))
                      (let ()
                        (declare (not safe))
                        (_g124063124084_ _g124064124087_))))))
          (declare (not safe))
          (_g124062124141_ _ann124061_))))
    (define gxc#basic-expression-type-annotation-mop.mutator
      (lambda (_stx123976_ _ann123977_)
        (let* ((_g123979124000_
                (lambda (_g123980123997_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g123980123997_))))
               (_g123978124057_
                (lambda (_g123980124003_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g123980124003_))
                      (let ((_e123986124005_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g123980124003_))))
                        (let ((_hd123985124008_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123986124005_)))
                              (_tl123984124010_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123986124005_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl123984124010_))
                              (let ((_e123989124013_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl123984124010_))))
                                (let ((_hd123988124016_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123989124013_)))
                                      (_tl123987124018_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123989124013_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl123987124018_))
                                      (let ((_e123992124021_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl123987124018_))))
                                        (let ((_hd123991124024_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123992124021_)))
                                              (_tl123990124026_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123992124021_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl123990124026_))
                                              (let ((_e123995124029_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl123990124026_))))
                                                (let ((_hd123994124032_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e123995124029_)))
                                                      (_tl123993124034_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e123995124029_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl123993124034_))
                                                      ((lambda (_L124037_
                                                                _L124038_
                                                                _L124039_)
                                                         (let ((__tmp127781
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L124039_)))
                       (__tmp127780
                        (let () (declare (not safe)) (gx#stx-e _L124038_)))
                       (__tmp127779
                        (let () (declare (not safe)) (gx#stx-e _L124037_))))
                   (declare (not safe))
                   (##structure
                    gxc#!mutator::t
                    __tmp127781
                    __tmp127780
                    __tmp127779)))
               _hd123994124032_
               _hd123991124024_
               _hd123988124016_)
              (let ()
                (declare (not safe))
                (_g123979124000_ _g123980124003_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g123979124000_
                                                 _g123980124003_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g123979124000_ _g123980124003_)))))
                              (let ()
                                (declare (not safe))
                                (_g123979124000_ _g123980124003_)))))
                      (let ()
                        (declare (not safe))
                        (_g123979124000_ _g123980124003_))))))
          (declare (not safe))
          (_g123978124057_ _ann123977_))))
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
      (lambda (_stx123096_)
        (let* ((___stx126062126063_ _stx123096_)
               (_g123102123298_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126062126063_)))))
          (let ((___kont126064126065_
                 (lambda (_L123964_)
                   (let ((__obj127732
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj127732
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L123964_))
                      '#f)
                     __obj127732)))
                (___kont126066126067_
                 (lambda (_L123891_
                          _L123892_
                          _L123893_
                          _L123894_
                          _L123895_
                          _L123896_)
                   (let* ((_tab123946_
                           (let () (declare (not safe)) (gx#stx-e _L123893_)))
                          (_keys123948_
                           (if _tab123946_
                               (let ((__tmp127782 (vector->list _tab123946_)))
                                 (declare (not safe))
                                 (filter values __tmp127782))
                               '#f)))
                     (let ((__tmp127783
                            (let ()
                              (declare (not safe))
                              (gxc#identifier-symbol _L123892_))))
                       (declare (not safe))
                       (##structure
                        gxc#!kw-lambda::t
                        'kw-lambda
                        _keys123948_
                        __tmp127783)))))
                (___kont126068126069_
                 (lambda (_L123624_
                          _L123625_
                          _L123626_
                          _L123627_
                          _L123628_
                          _L123629_
                          _L123630_
                          _L123631_
                          _L123632_
                          _L123633_)
                   (let ((__tmp127785
                          (map gx#stx-e
                               (let ((__tmp127786
                                      (lambda (_g123726123729_ _g123727123731_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g123726123729_
                                                _g123727123731_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp127786 '() _L123626_))))
                         (__tmp127784
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L123630_))))
                     (declare (not safe))
                     (##structure
                      gxc#!kw-lambda-primary::t
                      'kw-lambda-dispatch
                      __tmp127785
                      __tmp127784))))
                (___kont126072126073_
                 (lambda (_L123334_)
                   (let ((__obj127733
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj127733
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L123334_))
                      (let ()
                        (declare (not safe))
                        (gxc#dispatch-lambda-form-delegate _L123334_)))
                     __obj127733)))
                (___kont126074126075_
                 (lambda (_L123311_)
                   (let ((__obj127734
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj127734
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L123311_))
                      '#f)
                     __obj127734))))
            (let* ((___match126381126382_
                    (lambda (_e123289123326_ _hd123288123329_ _tl123287123331_)
                      (let ((_L123334_ _tl123287123331_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#dispatch-lambda-form? _L123334_))
                            (___kont126072126073_ _L123334_)
                            (___kont126074126075_ _tl123287123331_)))))
                   (___match126375126376_
                    (lambda (_e123183123348_
                             _hd123182123351_
                             _tl123181123353_
                             _e123186123356_
                             _hd123185123359_
                             _tl123184123361_
                             _e123189123364_
                             _hd123188123367_
                             _tl123187123369_
                             _e123192123372_
                             _hd123191123375_
                             _tl123190123377_
                             _e123195123380_
                             _hd123194123383_
                             _tl123193123385_
                             _e123198123388_
                             _hd123197123391_
                             _tl123196123393_
                             _e123201123396_
                             _hd123200123399_
                             _tl123199123401_
                             _e123204123404_
                             _hd123203123407_
                             _tl123202123409_
                             _e123207123412_
                             _hd123206123415_
                             _tl123205123417_
                             _e123210123420_
                             _hd123209123423_
                             _tl123208123425_
                             _e123213123428_
                             _hd123212123431_
                             _tl123211123433_
                             _e123216123436_
                             _hd123215123439_
                             _tl123214123441_
                             _e123219123444_
                             _hd123218123447_
                             _tl123217123449_
                             _e123222123452_
                             _hd123221123455_
                             _tl123220123457_
                             ___splice126070126071_
                             _target123223123460_
                             _tl123225123462_
                             _e123240123465_
                             _hd123239123468_
                             _tl123238123470_
                             _e123243123473_
                             _hd123242123476_
                             _tl123241123478_
                             _e123246123481_
                             _hd123245123484_
                             _tl123244123486_)
                      (letrec ((_loop123226123489_
                                (lambda (_hd123224123492_
                                         _-absent-value123230123494_
                                         _key123231123496_
                                         _-xkwvar123232123498_
                                         _-hash-ref123233123500_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd123224123492_))
                                      (let ((_e123227123503_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd123224123492_))))
                                        (let ((_lp-tl123229123508_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123227123503_)))
                                              (_lp-hd123228123506_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123227123503_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _lp-hd123228123506_))
                                              (let ((_e123249123511_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _lp-hd123228123506_))))
                                                (let ((_tl123247123516_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e123249123511_)))
                                                      (_hd123248123514_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e123249123511_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd123248123514_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#call
                                                             _hd123248123514_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl123247123516_))
                      (let ((_e123252123519_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl123247123516_))))
                        (let ((_tl123250123524_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123252123519_)))
                              (_hd123251123522_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123252123519_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd123251123522_))
                              (let ((_e123255123527_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd123251123522_))))
                                (let ((_tl123253123532_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123255123527_)))
                                      (_hd123254123530_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123255123527_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd123254123530_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd123254123530_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl123253123532_))
                                              (let ((_e123258123535_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl123253123532_))))
                                                (let ((_tl123256123540_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e123258123535_)))
                                                      (_hd123257123538_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e123258123535_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl123256123540_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl123250123524_))
                                                          (let ((_e123261123543_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl123250123524_))))
                    (let ((_tl123259123548_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123261123543_)))
                          (_hd123260123546_
                           (let ()
                             (declare (not safe))
                             (##car _e123261123543_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd123260123546_))
                          (let ((_e123264123551_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd123260123546_))))
                            (let ((_tl123262123556_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123264123551_)))
                                  (_hd123263123554_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123264123551_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd123263123554_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd123263123554_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl123262123556_))
                                          (let ((_e123267123559_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl123262123556_))))
                                            (let ((_tl123265123564_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e123267123559_)))
                                                  (_hd123266123562_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e123267123559_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl123265123564_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl123259123548_))
                                                      (let ((_e123270123567_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl123259123548_))))
                (let ((_tl123268123572_
                       (let () (declare (not safe)) (##cdr _e123270123567_)))
                      (_hd123269123570_
                       (let () (declare (not safe)) (##car _e123270123567_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd123269123570_))
                      (let ((_e123273123575_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd123269123570_))))
                        (let ((_tl123271123580_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123273123575_)))
                              (_hd123272123578_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123273123575_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd123272123578_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#quote _hd123272123578_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl123271123580_))
                                      (let ((_e123276123583_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl123271123580_))))
                                        (let ((_tl123274123588_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123276123583_)))
                                              (_hd123275123586_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123276123583_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123274123588_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl123268123572_))
                                                  (let ((_e123279123591_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl123268123572_))))
                                                    (let ((_tl123277123596_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e123279123591_)))
                                                          (_hd123278123594_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e123279123591_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd123278123594_))
                                                          (let ((_e123282123599_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd123278123594_))))
                    (let ((_tl123280123604_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123282123599_)))
                          (_hd123281123602_
                           (let ()
                             (declare (not safe))
                             (##car _e123282123599_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd123281123602_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd123281123602_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl123280123604_))
                                  (let ((_e123285123607_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl123280123604_))))
                                    (let ((_tl123283123612_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123285123607_)))
                                          (_hd123284123610_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123285123607_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl123283123612_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123277123596_))
                                              (let ((__tmp127801
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd123284123610_
                                                             _-absent-value123230123494_)))
                                                    (__tmp127800
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd123275123586_
                                                             _key123231123496_)))
                                                    (__tmp127799
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd123266123562_
                                                             _-xkwvar123232123498_)))
                                                    (__tmp127798
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd123257123538_
                                                             _-hash-ref123233123500_))))
                                                (declare (not safe))
                                                (_loop123226123489_
                                                 _lp-tl123229123508_
                                                 __tmp127801
                                                 __tmp127800
                                                 __tmp127799
                                                 __tmp127798))
                                              (___match126381126382_
                                               _e123183123348_
                                               _hd123182123351_
                                               _tl123181123353_))
                                          (___match126381126382_
                                           _e123183123348_
                                           _hd123182123351_
                                           _tl123181123353_))))
                                  (___match126381126382_
                                   _e123183123348_
                                   _hd123182123351_
                                   _tl123181123353_))
                              (___match126381126382_
                               _e123183123348_
                               _hd123182123351_
                               _tl123181123353_))
                          (___match126381126382_
                           _e123183123348_
                           _hd123182123351_
                           _tl123181123353_))))
                  (___match126381126382_
                   _e123183123348_
                   _hd123182123351_
                   _tl123181123353_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126381126382_
                                                   _e123183123348_
                                                   _hd123182123351_
                                                   _tl123181123353_))
                                              (___match126381126382_
                                               _e123183123348_
                                               _hd123182123351_
                                               _tl123181123353_))))
                                      (___match126381126382_
                                       _e123183123348_
                                       _hd123182123351_
                                       _tl123181123353_))
                                  (___match126381126382_
                                   _e123183123348_
                                   _hd123182123351_
                                   _tl123181123353_))
                              (___match126381126382_
                               _e123183123348_
                               _hd123182123351_
                               _tl123181123353_))))
                      (___match126381126382_
                       _e123183123348_
                       _hd123182123351_
                       _tl123181123353_))))
              (___match126381126382_
               _e123183123348_
               _hd123182123351_
               _tl123181123353_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126381126382_
                                                   _e123183123348_
                                                   _hd123182123351_
                                                   _tl123181123353_))))
                                          (___match126381126382_
                                           _e123183123348_
                                           _hd123182123351_
                                           _tl123181123353_))
                                      (___match126381126382_
                                       _e123183123348_
                                       _hd123182123351_
                                       _tl123181123353_))
                                  (___match126381126382_
                                   _e123183123348_
                                   _hd123182123351_
                                   _tl123181123353_))))
                          (___match126381126382_
                           _e123183123348_
                           _hd123182123351_
                           _tl123181123353_))))
                  (___match126381126382_
                   _e123183123348_
                   _hd123182123351_
                   _tl123181123353_))
              (___match126381126382_
               _e123183123348_
               _hd123182123351_
               _tl123181123353_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match126381126382_
                                               _e123183123348_
                                               _hd123182123351_
                                               _tl123181123353_))
                                          (___match126381126382_
                                           _e123183123348_
                                           _hd123182123351_
                                           _tl123181123353_))
                                      (___match126381126382_
                                       _e123183123348_
                                       _hd123182123351_
                                       _tl123181123353_))))
                              (___match126381126382_
                               _e123183123348_
                               _hd123182123351_
                               _tl123181123353_))))
                      (___match126381126382_
                       _e123183123348_
                       _hd123182123351_
                       _tl123181123353_))
                  (___match126381126382_
                   _e123183123348_
                   _hd123182123351_
                   _tl123181123353_))
              (___match126381126382_
               _e123183123348_
               _hd123182123351_
               _tl123181123353_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match126381126382_
                                               _e123183123348_
                                               _hd123182123351_
                                               _tl123181123353_))))
                                      (let ((_-hash-ref123237123621_
                                             (reverse _-hash-ref123233123500_))
                                            (_-xkwvar123236123619_
                                             (reverse _-xkwvar123232123498_))
                                            (_key123235123617_
                                             (reverse _key123231123496_))
                                            (_-absent-value123234123615_
                                             (reverse _-absent-value123230123494_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl123190123377_))
                                            (let ((_L123624_ _hd123245123484_)
                                                  (_L123625_
                                                   _-absent-value123234123615_)
                                                  (_L123626_ _key123235123617_)
                                                  (_L123627_
                                                   _-xkwvar123236123619_)
                                                  (_L123628_
                                                   _-hash-ref123237123621_)
                                                  (_L123629_ _hd123221123455_)
                                                  (_L123630_ _hd123212123431_)
                                                  (_L123631_ _hd123203123407_)
                                                  (_L123632_ _tl123187123369_)
                                                  (_L123633_ _hd123188123367_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L123633_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L123632_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#runtime-identifier=?
                                                          _L123631_
                                                          'apply))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#free-identifier=?
                                                          _L123633_
                                                          _L123629_))
                                                       (let ((__tmp127796
                                                              (let ((__tmp127797
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g123686123689_ _g123687123691_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g123686123689_ _g123687123691_)))))
                        (declare (not safe))
                        (foldr1 __tmp127797 '() _L123626_))))
                 (declare (not safe))
                 (andmap1 gx#stx-keyword? __tmp127796))
               (let ((__tmp127795
                      (lambda (_g123693123695_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g123693123695_
                           'hash-ref))))
                     (__tmp127793
                      (let ((__tmp127794
                             (lambda (_g123697123700_ _g123698123702_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g123697123700_ _g123698123702_)))))
                        (declare (not safe))
                        (foldr1 __tmp127794 '() _L123628_))))
                 (declare (not safe))
                 (andmap1 __tmp127795 __tmp127793))
               (let ((__tmp127792
                      (lambda (_g123704123706_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g123704123706_
                           'absent-value))))
                     (__tmp127790
                      (let ((__tmp127791
                             (lambda (_g123708123711_ _g123709123713_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g123708123711_ _g123709123713_)))))
                        (declare (not safe))
                        (foldr1 __tmp127791 '() _L123625_))))
                 (declare (not safe))
                 (andmap1 __tmp127792 __tmp127790))
               (let ((__tmp127789
                      (lambda (_g123715123717_)
                        (let ()
                          (declare (not safe))
                          (gx#free-identifier=? _g123715123717_ _L123633_))))
                     (__tmp127787
                      (let ((__tmp127788
                             (lambda (_g123719123722_ _g123720123724_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g123719123722_ _g123720123724_)))))
                        (declare (not safe))
                        (foldr1 __tmp127788 '() _L123627_))))
                 (declare (not safe))
                 (andmap1 __tmp127789 __tmp127787)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont126068126069_
                                                   _L123624_
                                                   _L123625_
                                                   _L123626_
                                                   _L123627_
                                                   _L123628_
                                                   _L123629_
                                                   _L123630_
                                                   _L123631_
                                                   _L123632_
                                                   _L123633_)
                                                  (___match126381126382_
                                                   _e123183123348_
                                                   _hd123182123351_
                                                   _tl123181123353_)))
                                            (___match126381126382_
                                             _e123183123348_
                                             _hd123182123351_
                                             _tl123181123353_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop123226123489_
                           _target123223123460_
                           '()
                           '()
                           '()
                           '())))))
                   (___match126247126248_
                    (lambda (_e123183123348_
                             _hd123182123351_
                             _tl123181123353_
                             _e123186123356_
                             _hd123185123359_
                             _tl123184123361_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd123185123359_))
                          (let ((_e123189123364_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd123185123359_))))
                            (let ((_tl123187123369_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123189123364_)))
                                  (_hd123188123367_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123189123364_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl123184123361_))
                                  (let ((_e123192123372_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl123184123361_))))
                                    (let ((_tl123190123377_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123192123372_)))
                                          (_hd123191123375_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123192123372_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd123191123375_))
                                          (let ((_e123195123380_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd123191123375_))))
                                            (let ((_tl123193123385_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e123195123380_)))
                                                  (_hd123194123383_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e123195123380_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd123194123383_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd123194123383_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl123193123385_))
                                                          (let ((_e123198123388_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl123193123385_))))
                    (let ((_tl123196123393_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123198123388_)))
                          (_hd123197123391_
                           (let ()
                             (declare (not safe))
                             (##car _e123198123388_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd123197123391_))
                          (let ((_e123201123396_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd123197123391_))))
                            (let ((_tl123199123401_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123201123396_)))
                                  (_hd123200123399_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123201123396_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd123200123399_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd123200123399_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl123199123401_))
                                          (let ((_e123204123404_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl123199123401_))))
                                            (let ((_tl123202123409_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e123204123404_)))
                                                  (_hd123203123407_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e123204123404_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl123202123409_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl123196123393_))
                                                      (let ((_e123207123412_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl123196123393_))))
                (let ((_tl123205123417_
                       (let () (declare (not safe)) (##cdr _e123207123412_)))
                      (_hd123206123415_
                       (let () (declare (not safe)) (##car _e123207123412_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd123206123415_))
                      (let ((_e123210123420_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd123206123415_))))
                        (let ((_tl123208123425_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123210123420_)))
                              (_hd123209123423_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123210123420_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd123209123423_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd123209123423_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl123208123425_))
                                      (let ((_e123213123428_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl123208123425_))))
                                        (let ((_tl123211123433_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123213123428_)))
                                              (_hd123212123431_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123213123428_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123211123433_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl123205123417_))
                                                  (let ((_e123216123436_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl123205123417_))))
                                                    (let ((_tl123214123441_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e123216123436_)))
                                                          (_hd123215123439_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e123216123436_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd123215123439_))
                                                          (let ((_e123219123444_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd123215123439_))))
                    (let ((_tl123217123449_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123219123444_)))
                          (_hd123218123447_
                           (let ()
                             (declare (not safe))
                             (##car _e123219123444_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd123218123447_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd123218123447_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl123217123449_))
                                  (let ((_e123222123452_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl123217123449_))))
                                    (let ((_tl123220123457_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123222123452_)))
                                          (_hd123221123455_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123222123452_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl123220123457_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl123214123441_))
                                              (if (fx>= (let ()
                                                          (declare (not safe))
                                                          (gx#stx-length
                                                           _tl123214123441_))
                                                        '1)
                                                  (let ((___splice126070126071_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl123214123441_
                                                            '1))))
                                                    (let ((_tl123225123462_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126070126071_
                                                              '1)))
                                                          (_target123223123460_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126070126071_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl123225123462_))
                                                          (let ((_e123240123465_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl123225123462_))))
                    (let ((_tl123238123470_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123240123465_)))
                          (_hd123239123468_
                           (let ()
                             (declare (not safe))
                             (##car _e123240123465_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd123239123468_))
                          (let ((_e123243123473_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd123239123468_))))
                            (let ((_tl123241123478_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123243123473_)))
                                  (_hd123242123476_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123243123473_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd123242123476_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd123242123476_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl123241123478_))
                                          (let ((_e123246123481_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl123241123478_))))
                                            (let ((_tl123244123486_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e123246123481_)))
                                                  (_hd123245123484_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e123246123481_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl123244123486_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl123238123470_))
                                                      (___match126375126376_
                                                       _e123183123348_
                                                       _hd123182123351_
                                                       _tl123181123353_
                                                       _e123186123356_
                                                       _hd123185123359_
                                                       _tl123184123361_
                                                       _e123189123364_
                                                       _hd123188123367_
                                                       _tl123187123369_
                                                       _e123192123372_
                                                       _hd123191123375_
                                                       _tl123190123377_
                                                       _e123195123380_
                                                       _hd123194123383_
                                                       _tl123193123385_
                                                       _e123198123388_
                                                       _hd123197123391_
                                                       _tl123196123393_
                                                       _e123201123396_
                                                       _hd123200123399_
                                                       _tl123199123401_
                                                       _e123204123404_
                                                       _hd123203123407_
                                                       _tl123202123409_
                                                       _e123207123412_
                                                       _hd123206123415_
                                                       _tl123205123417_
                                                       _e123210123420_
                                                       _hd123209123423_
                                                       _tl123208123425_
                                                       _e123213123428_
                                                       _hd123212123431_
                                                       _tl123211123433_
                                                       _e123216123436_
                                                       _hd123215123439_
                                                       _tl123214123441_
                                                       _e123219123444_
                                                       _hd123218123447_
                                                       _tl123217123449_
                                                       _e123222123452_
                                                       _hd123221123455_
                                                       _tl123220123457_
                                                       ___splice126070126071_
                                                       _target123223123460_
                                                       _tl123225123462_
                                                       _e123240123465_
                                                       _hd123239123468_
                                                       _tl123238123470_
                                                       _e123243123473_
                                                       _hd123242123476_
                                                       _tl123241123478_
                                                       _e123246123481_
                                                       _hd123245123484_
                                                       _tl123244123486_)
                                                      (___match126381126382_
                                                       _e123183123348_
                                                       _hd123182123351_
                                                       _tl123181123353_))
                                                  (___match126381126382_
                                                   _e123183123348_
                                                   _hd123182123351_
                                                   _tl123181123353_))))
                                          (___match126381126382_
                                           _e123183123348_
                                           _hd123182123351_
                                           _tl123181123353_))
                                      (___match126381126382_
                                       _e123183123348_
                                       _hd123182123351_
                                       _tl123181123353_))
                                  (___match126381126382_
                                   _e123183123348_
                                   _hd123182123351_
                                   _tl123181123353_))))
                          (___match126381126382_
                           _e123183123348_
                           _hd123182123351_
                           _tl123181123353_))))
                  (___match126381126382_
                   _e123183123348_
                   _hd123182123351_
                   _tl123181123353_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126381126382_
                                                   _e123183123348_
                                                   _hd123182123351_
                                                   _tl123181123353_))
                                              (___match126381126382_
                                               _e123183123348_
                                               _hd123182123351_
                                               _tl123181123353_))
                                          (___match126381126382_
                                           _e123183123348_
                                           _hd123182123351_
                                           _tl123181123353_))))
                                  (___match126381126382_
                                   _e123183123348_
                                   _hd123182123351_
                                   _tl123181123353_))
                              (___match126381126382_
                               _e123183123348_
                               _hd123182123351_
                               _tl123181123353_))
                          (___match126381126382_
                           _e123183123348_
                           _hd123182123351_
                           _tl123181123353_))))
                  (___match126381126382_
                   _e123183123348_
                   _hd123182123351_
                   _tl123181123353_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126381126382_
                                                   _e123183123348_
                                                   _hd123182123351_
                                                   _tl123181123353_))
                                              (___match126381126382_
                                               _e123183123348_
                                               _hd123182123351_
                                               _tl123181123353_))))
                                      (___match126381126382_
                                       _e123183123348_
                                       _hd123182123351_
                                       _tl123181123353_))
                                  (___match126381126382_
                                   _e123183123348_
                                   _hd123182123351_
                                   _tl123181123353_))
                              (___match126381126382_
                               _e123183123348_
                               _hd123182123351_
                               _tl123181123353_))))
                      (___match126381126382_
                       _e123183123348_
                       _hd123182123351_
                       _tl123181123353_))))
              (___match126381126382_
               _e123183123348_
               _hd123182123351_
               _tl123181123353_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126381126382_
                                                   _e123183123348_
                                                   _hd123182123351_
                                                   _tl123181123353_))))
                                          (___match126381126382_
                                           _e123183123348_
                                           _hd123182123351_
                                           _tl123181123353_))
                                      (___match126381126382_
                                       _e123183123348_
                                       _hd123182123351_
                                       _tl123181123353_))
                                  (___match126381126382_
                                   _e123183123348_
                                   _hd123182123351_
                                   _tl123181123353_))))
                          (___match126381126382_
                           _e123183123348_
                           _hd123182123351_
                           _tl123181123353_))))
                  (___match126381126382_
                   _e123183123348_
                   _hd123182123351_
                   _tl123181123353_))
              (___match126381126382_
               _e123183123348_
               _hd123182123351_
               _tl123181123353_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126381126382_
                                                   _e123183123348_
                                                   _hd123182123351_
                                                   _tl123181123353_))))
                                          (___match126381126382_
                                           _e123183123348_
                                           _hd123182123351_
                                           _tl123181123353_))))
                                  (___match126381126382_
                                   _e123183123348_
                                   _hd123182123351_
                                   _tl123181123353_))))
                          (___match126381126382_
                           _e123183123348_
                           _hd123182123351_
                           _tl123181123353_))))
                   (___match126235126236_
                    (lambda (_e123116123739_
                             _hd123115123742_
                             _tl123114123744_
                             _e123119123747_
                             _hd123118123750_
                             _tl123117123752_
                             _e123122123755_
                             _hd123121123758_
                             _tl123120123760_
                             _e123125123763_
                             _hd123124123766_
                             _tl123123123768_
                             _e123128123771_
                             _hd123127123774_
                             _tl123126123776_
                             _e123131123779_
                             _hd123130123782_
                             _tl123129123784_
                             _e123134123787_
                             _hd123133123790_
                             _tl123132123792_
                             _e123137123795_
                             _hd123136123798_
                             _tl123135123800_
                             _e123140123803_
                             _hd123139123806_
                             _tl123138123808_
                             _e123143123811_
                             _hd123142123814_
                             _tl123141123816_
                             _e123146123819_
                             _hd123145123822_
                             _tl123144123824_
                             _e123149123827_
                             _hd123148123830_
                             _tl123147123832_
                             _e123152123835_
                             _hd123151123838_
                             _tl123150123840_
                             _e123155123843_
                             _hd123154123846_
                             _tl123153123848_
                             _e123158123851_
                             _hd123157123854_
                             _tl123156123856_
                             _e123161123859_
                             _hd123160123862_
                             _tl123159123864_
                             _e123164123867_
                             _hd123163123870_
                             _tl123162123872_
                             _e123167123875_
                             _hd123166123878_
                             _tl123165123880_
                             _e123170123883_
                             _hd123169123886_
                             _tl123168123888_)
                      (let ((_L123891_ _hd123169123886_)
                            (_L123892_ _hd123160123862_)
                            (_L123893_ _hd123151123838_)
                            (_L123894_ _hd123142123814_)
                            (_L123895_ _hd123133123790_)
                            (_L123896_ _hd123118123750_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L123896_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L123895_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _L123894_
                                    'keyword-dispatch))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L123896_ _L123891_)))
                            (___kont126066126067_
                             _L123891_
                             _L123892_
                             _L123893_
                             _L123894_
                             _L123895_
                             _L123896_)
                            (___match126247126248_
                             _e123116123739_
                             _hd123115123742_
                             _tl123114123744_
                             _e123119123747_
                             _hd123118123750_
                             _tl123117123752_)))))
                   (___match126089126090_
                    (lambda (_e123116123739_ _hd123115123742_ _tl123114123744_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl123114123744_))
                          (let ((_e123119123747_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl123114123744_))))
                            (let ((_tl123117123752_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123119123747_)))
                                  (_hd123118123750_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123119123747_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl123117123752_))
                                  (let ((_e123122123755_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl123117123752_))))
                                    (let ((_tl123120123760_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123122123755_)))
                                          (_hd123121123758_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123122123755_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd123121123758_))
                                          (let ((_e123125123763_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd123121123758_))))
                                            (let ((_tl123123123768_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e123125123763_)))
                                                  (_hd123124123766_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e123125123763_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd123124123766_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd123124123766_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl123123123768_))
                                                          (let ((_e123128123771_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl123123123768_))))
                    (let ((_tl123126123776_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123128123771_)))
                          (_hd123127123774_
                           (let ()
                             (declare (not safe))
                             (##car _e123128123771_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd123127123774_))
                          (let ((_e123131123779_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd123127123774_))))
                            (let ((_tl123129123784_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123131123779_)))
                                  (_hd123130123782_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123131123779_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd123130123782_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd123130123782_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl123129123784_))
                                          (let ((_e123134123787_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl123129123784_))))
                                            (let ((_tl123132123792_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e123134123787_)))
                                                  (_hd123133123790_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e123134123787_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl123132123792_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl123126123776_))
                                                      (let ((_e123137123795_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl123126123776_))))
                (let ((_tl123135123800_
                       (let () (declare (not safe)) (##cdr _e123137123795_)))
                      (_hd123136123798_
                       (let () (declare (not safe)) (##car _e123137123795_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd123136123798_))
                      (let ((_e123140123803_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd123136123798_))))
                        (let ((_tl123138123808_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123140123803_)))
                              (_hd123139123806_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123140123803_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd123139123806_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd123139123806_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl123138123808_))
                                      (let ((_e123143123811_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl123138123808_))))
                                        (let ((_tl123141123816_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123143123811_)))
                                              (_hd123142123814_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123143123811_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123141123816_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl123135123800_))
                                                  (let ((_e123146123819_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl123135123800_))))
                                                    (let ((_tl123144123824_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e123146123819_)))
                                                          (_hd123145123822_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e123146123819_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd123145123822_))
                                                          (let ((_e123149123827_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd123145123822_))))
                    (let ((_tl123147123832_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123149123827_)))
                          (_hd123148123830_
                           (let ()
                             (declare (not safe))
                             (##car _e123149123827_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd123148123830_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd123148123830_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl123147123832_))
                                  (let ((_e123152123835_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl123147123832_))))
                                    (let ((_tl123150123840_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123152123835_)))
                                          (_hd123151123838_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123152123835_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl123150123840_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl123144123824_))
                                              (let ((_e123155123843_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl123144123824_))))
                                                (let ((_tl123153123848_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e123155123843_)))
                                                      (_hd123154123846_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e123155123843_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd123154123846_))
                                                      (let ((_e123158123851_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd123154123846_))))
                (let ((_tl123156123856_
                       (let () (declare (not safe)) (##cdr _e123158123851_)))
                      (_hd123157123854_
                       (let () (declare (not safe)) (##car _e123158123851_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd123157123854_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd123157123854_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl123156123856_))
                              (let ((_e123161123859_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl123156123856_))))
                                (let ((_tl123159123864_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123161123859_)))
                                      (_hd123160123862_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123161123859_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl123159123864_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl123153123848_))
                                          (let ((_e123164123867_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl123153123848_))))
                                            (let ((_tl123162123872_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e123164123867_)))
                                                  (_hd123163123870_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e123164123867_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd123163123870_))
                                                  (let ((_e123167123875_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd123163123870_))))
                                                    (let ((_tl123165123880_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e123167123875_)))
                                                          (_hd123166123878_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e123167123875_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd123166123878_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _hd123166123878_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl123165123880_))
                          (let ((_e123170123883_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl123165123880_))))
                            (let ((_tl123168123888_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123170123883_)))
                                  (_hd123169123886_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123170123883_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl123168123888_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl123162123872_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl123120123760_))
                                          (___match126235126236_
                                           _e123116123739_
                                           _hd123115123742_
                                           _tl123114123744_
                                           _e123119123747_
                                           _hd123118123750_
                                           _tl123117123752_
                                           _e123122123755_
                                           _hd123121123758_
                                           _tl123120123760_
                                           _e123125123763_
                                           _hd123124123766_
                                           _tl123123123768_
                                           _e123128123771_
                                           _hd123127123774_
                                           _tl123126123776_
                                           _e123131123779_
                                           _hd123130123782_
                                           _tl123129123784_
                                           _e123134123787_
                                           _hd123133123790_
                                           _tl123132123792_
                                           _e123137123795_
                                           _hd123136123798_
                                           _tl123135123800_
                                           _e123140123803_
                                           _hd123139123806_
                                           _tl123138123808_
                                           _e123143123811_
                                           _hd123142123814_
                                           _tl123141123816_
                                           _e123146123819_
                                           _hd123145123822_
                                           _tl123144123824_
                                           _e123149123827_
                                           _hd123148123830_
                                           _tl123147123832_
                                           _e123152123835_
                                           _hd123151123838_
                                           _tl123150123840_
                                           _e123155123843_
                                           _hd123154123846_
                                           _tl123153123848_
                                           _e123158123851_
                                           _hd123157123854_
                                           _tl123156123856_
                                           _e123161123859_
                                           _hd123160123862_
                                           _tl123159123864_
                                           _e123164123867_
                                           _hd123163123870_
                                           _tl123162123872_
                                           _e123167123875_
                                           _hd123166123878_
                                           _tl123165123880_
                                           _e123170123883_
                                           _hd123169123886_
                                           _tl123168123888_)
                                          (___match126247126248_
                                           _e123116123739_
                                           _hd123115123742_
                                           _tl123114123744_
                                           _e123119123747_
                                           _hd123118123750_
                                           _tl123117123752_))
                                      (___match126247126248_
                                       _e123116123739_
                                       _hd123115123742_
                                       _tl123114123744_
                                       _e123119123747_
                                       _hd123118123750_
                                       _tl123117123752_))
                                  (___match126247126248_
                                   _e123116123739_
                                   _hd123115123742_
                                   _tl123114123744_
                                   _e123119123747_
                                   _hd123118123750_
                                   _tl123117123752_))))
                          (___match126247126248_
                           _e123116123739_
                           _hd123115123742_
                           _tl123114123744_
                           _e123119123747_
                           _hd123118123750_
                           _tl123117123752_))
                      (___match126247126248_
                       _e123116123739_
                       _hd123115123742_
                       _tl123114123744_
                       _e123119123747_
                       _hd123118123750_
                       _tl123117123752_))
                  (___match126247126248_
                   _e123116123739_
                   _hd123115123742_
                   _tl123114123744_
                   _e123119123747_
                   _hd123118123750_
                   _tl123117123752_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126247126248_
                                                   _e123116123739_
                                                   _hd123115123742_
                                                   _tl123114123744_
                                                   _e123119123747_
                                                   _hd123118123750_
                                                   _tl123117123752_))))
                                          (___match126247126248_
                                           _e123116123739_
                                           _hd123115123742_
                                           _tl123114123744_
                                           _e123119123747_
                                           _hd123118123750_
                                           _tl123117123752_))
                                      (___match126247126248_
                                       _e123116123739_
                                       _hd123115123742_
                                       _tl123114123744_
                                       _e123119123747_
                                       _hd123118123750_
                                       _tl123117123752_))))
                              (___match126247126248_
                               _e123116123739_
                               _hd123115123742_
                               _tl123114123744_
                               _e123119123747_
                               _hd123118123750_
                               _tl123117123752_))
                          (___match126247126248_
                           _e123116123739_
                           _hd123115123742_
                           _tl123114123744_
                           _e123119123747_
                           _hd123118123750_
                           _tl123117123752_))
                      (___match126247126248_
                       _e123116123739_
                       _hd123115123742_
                       _tl123114123744_
                       _e123119123747_
                       _hd123118123750_
                       _tl123117123752_))))
              (___match126247126248_
               _e123116123739_
               _hd123115123742_
               _tl123114123744_
               _e123119123747_
               _hd123118123750_
               _tl123117123752_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match126247126248_
                                               _e123116123739_
                                               _hd123115123742_
                                               _tl123114123744_
                                               _e123119123747_
                                               _hd123118123750_
                                               _tl123117123752_))
                                          (___match126247126248_
                                           _e123116123739_
                                           _hd123115123742_
                                           _tl123114123744_
                                           _e123119123747_
                                           _hd123118123750_
                                           _tl123117123752_))))
                                  (___match126247126248_
                                   _e123116123739_
                                   _hd123115123742_
                                   _tl123114123744_
                                   _e123119123747_
                                   _hd123118123750_
                                   _tl123117123752_))
                              (___match126247126248_
                               _e123116123739_
                               _hd123115123742_
                               _tl123114123744_
                               _e123119123747_
                               _hd123118123750_
                               _tl123117123752_))
                          (___match126247126248_
                           _e123116123739_
                           _hd123115123742_
                           _tl123114123744_
                           _e123119123747_
                           _hd123118123750_
                           _tl123117123752_))))
                  (___match126247126248_
                   _e123116123739_
                   _hd123115123742_
                   _tl123114123744_
                   _e123119123747_
                   _hd123118123750_
                   _tl123117123752_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126247126248_
                                                   _e123116123739_
                                                   _hd123115123742_
                                                   _tl123114123744_
                                                   _e123119123747_
                                                   _hd123118123750_
                                                   _tl123117123752_))
                                              (___match126247126248_
                                               _e123116123739_
                                               _hd123115123742_
                                               _tl123114123744_
                                               _e123119123747_
                                               _hd123118123750_
                                               _tl123117123752_))))
                                      (___match126247126248_
                                       _e123116123739_
                                       _hd123115123742_
                                       _tl123114123744_
                                       _e123119123747_
                                       _hd123118123750_
                                       _tl123117123752_))
                                  (___match126247126248_
                                   _e123116123739_
                                   _hd123115123742_
                                   _tl123114123744_
                                   _e123119123747_
                                   _hd123118123750_
                                   _tl123117123752_))
                              (___match126247126248_
                               _e123116123739_
                               _hd123115123742_
                               _tl123114123744_
                               _e123119123747_
                               _hd123118123750_
                               _tl123117123752_))))
                      (___match126247126248_
                       _e123116123739_
                       _hd123115123742_
                       _tl123114123744_
                       _e123119123747_
                       _hd123118123750_
                       _tl123117123752_))))
              (___match126247126248_
               _e123116123739_
               _hd123115123742_
               _tl123114123744_
               _e123119123747_
               _hd123118123750_
               _tl123117123752_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126247126248_
                                                   _e123116123739_
                                                   _hd123115123742_
                                                   _tl123114123744_
                                                   _e123119123747_
                                                   _hd123118123750_
                                                   _tl123117123752_))))
                                          (___match126247126248_
                                           _e123116123739_
                                           _hd123115123742_
                                           _tl123114123744_
                                           _e123119123747_
                                           _hd123118123750_
                                           _tl123117123752_))
                                      (___match126247126248_
                                       _e123116123739_
                                       _hd123115123742_
                                       _tl123114123744_
                                       _e123119123747_
                                       _hd123118123750_
                                       _tl123117123752_))
                                  (___match126247126248_
                                   _e123116123739_
                                   _hd123115123742_
                                   _tl123114123744_
                                   _e123119123747_
                                   _hd123118123750_
                                   _tl123117123752_))))
                          (___match126247126248_
                           _e123116123739_
                           _hd123115123742_
                           _tl123114123744_
                           _e123119123747_
                           _hd123118123750_
                           _tl123117123752_))))
                  (___match126247126248_
                   _e123116123739_
                   _hd123115123742_
                   _tl123114123744_
                   _e123119123747_
                   _hd123118123750_
                   _tl123117123752_))
              (___match126247126248_
               _e123116123739_
               _hd123115123742_
               _tl123114123744_
               _e123119123747_
               _hd123118123750_
               _tl123117123752_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126247126248_
                                                   _e123116123739_
                                                   _hd123115123742_
                                                   _tl123114123744_
                                                   _e123119123747_
                                                   _hd123118123750_
                                                   _tl123117123752_))))
                                          (___match126247126248_
                                           _e123116123739_
                                           _hd123115123742_
                                           _tl123114123744_
                                           _e123119123747_
                                           _hd123118123750_
                                           _tl123117123752_))))
                                  (___match126247126248_
                                   _e123116123739_
                                   _hd123115123742_
                                   _tl123114123744_
                                   _e123119123747_
                                   _hd123118123750_
                                   _tl123117123752_))))
                          (___match126381126382_
                           _e123116123739_
                           _hd123115123742_
                           _tl123114123744_)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx126062126063_))
                  (let ((_e123107123956_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx126062126063_))))
                    (let ((_tl123105123961_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123107123956_)))
                          (_hd123106123959_
                           (let ()
                             (declare (not safe))
                             (##car _e123107123956_))))
                      (if (gxc#current-compile-type-closure)
                          (let ((_L123964_ _tl123105123961_))
                            (___kont126064126065_ _L123964_))
                          (___match126089126090_
                           _e123107123956_
                           _hd123106123959_
                           _tl123105123961_))))
                  (let () (declare (not safe)) (_g123102123298_))))))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_stx123051_)
        (letrec ((_clause-e123053_
                  (lambda (_form123094_)
                    (let ((__obj127735
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
                       __obj127735
                       'case-lambda-clause
                       (let ()
                         (declare (not safe))
                         (gxc#lambda-form-arity _form123094_))
                       (if (let ((__tmp127802
                                  (gxc#current-compile-type-closure)))
                             (declare (not safe))
                             (not __tmp127802))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form? _form123094_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form-delegate
                                  _form123094_))
                               '#f)
                           '#f))
                      __obj127735))))
          (let* ((_g123055123065_
                  (lambda (_g123056123062_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g123056123062_))))
                 (_g123054123091_
                  (lambda (_g123056123068_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g123056123068_))
                        (let ((_e123060123070_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g123056123068_))))
                          (let ((_hd123059123073_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123060123070_)))
                                (_tl123058123075_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123060123070_))))
                            ((lambda (_L123078_)
                               (let ((_clauses123089_
                                      (map _clause-e123053_ _L123078_)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#!case-lambda::t
                                  'case-lambda
                                  _clauses123089_)))
                             _tl123058123075_)))
                        (let ()
                          (declare (not safe))
                          (_g123055123065_ _g123056123068_))))))
            (declare (not safe))
            (_g123054123091_ _stx123051_)))))
    (define gxc#basic-expression-type-let-values%
      (lambda (_stx122983_)
        (let* ((_g122985123002_
                (lambda (_g122986122999_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g122986122999_))))
               (_g122984123048_
                (lambda (_g122986123005_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g122986123005_))
                      (let ((_e122991123007_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g122986123005_))))
                        (let ((_hd122990123010_
                               (let ()
                                 (declare (not safe))
                                 (##car _e122991123007_)))
                              (_tl122989123012_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e122991123007_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl122989123012_))
                              (let ((_e122994123015_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl122989123012_))))
                                (let ((_hd122993123018_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e122994123015_)))
                                      (_tl122992123020_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e122994123015_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl122992123020_))
                                      (let ((_e122997123023_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl122992123020_))))
                                        (let ((_hd122996123026_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122997123023_)))
                                              (_tl122995123028_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122997123023_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl122995123028_))
                                              ((lambda (_L123031_ _L123032_)
                                                 (let ((__tmp127803
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _L123031_)))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp127803
                                                    gxc#current-compile-type-closure
                                                    '#t)))
                                               _hd122996123026_
                                               _hd122993123018_)
                                              (let ()
                                                (declare (not safe))
                                                (_g122985123002_
                                                 _g122986123005_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g122985123002_ _g122986123005_)))))
                              (let ()
                                (declare (not safe))
                                (_g122985123002_ _g122986123005_)))))
                      (let ()
                        (declare (not safe))
                        (_g122985123002_ _g122986123005_))))))
          (declare (not safe))
          (_g122984123048_ _stx122983_))))
    (define gxc#basic-expression-type-builtin
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-call%
      (lambda (_stx122888_)
        (let* ((___stx126390126391_ _stx122888_)
               (_g122891122911_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126390126391_)))))
          (let ((___kont126392126393_
                 (lambda (_L122955_ _L122956_)
                   (let ((_type-e122973122975_
                          (let ((__tmp127804
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L122956_))))
                            (declare (not safe))
                            (hash-get
                             gxc#basic-expression-type-builtin
                             __tmp127804))))
                     (if _type-e122973122975_
                         (let ((_type-e122978_ _type-e122973122975_))
                           (_type-e122978_ _stx122888_ _L122955_))
                         '#f))))
                (___kont126394126395_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx126390126391_))
                (let ((_e122897122923_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx126390126391_))))
                  (let ((_tl122895122928_
                         (let () (declare (not safe)) (##cdr _e122897122923_)))
                        (_hd122896122926_
                         (let ()
                           (declare (not safe))
                           (##car _e122897122923_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl122895122928_))
                        (let ((_e122900122931_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl122895122928_))))
                          (let ((_tl122898122936_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e122900122931_)))
                                (_hd122899122934_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e122900122931_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd122899122934_))
                                (let ((_e122903122939_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd122899122934_))))
                                  (let ((_tl122901122944_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122903122939_)))
                                        (_hd122902122942_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122903122939_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd122902122942_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd122902122942_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl122901122944_))
                                                (let ((_e122906122947_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl122901122944_))))
                                                  (let ((_tl122904122952_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122906122947_)))
                                                        (_hd122905122950_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122906122947_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl122904122952_))
                                                        (___kont126392126393_
                                                         _tl122898122936_
                                                         _hd122905122950_)
                                                        (___kont126394126395_))))
                                                (___kont126394126395_))
                                            (___kont126394126395_))
                                        (___kont126394126395_))))
                                (___kont126394126395_))))
                        (___kont126394126395_))))
                (___kont126394126395_))))))
    (define gxc#basic-expression-type-ref%
      (lambda (_stx122837_)
        (let* ((_g122839122852_
                (lambda (_g122840122849_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g122840122849_))))
               (_g122838122885_
                (lambda (_g122840122855_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g122840122855_))
                      (let ((_e122844122857_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g122840122855_))))
                        (let ((_hd122843122860_
                               (let ()
                                 (declare (not safe))
                                 (##car _e122844122857_)))
                              (_tl122842122862_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e122844122857_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl122842122862_))
                              (let ((_e122847122865_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl122842122862_))))
                                (let ((_hd122846122868_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e122847122865_)))
                                      (_tl122845122870_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e122847122865_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl122845122870_))
                                      ((lambda (_L122873_)
                                         (let ((__tmp127805
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L122873_))))
                                           (declare (not safe))
                                           (gxc#optimizer-lookup-type
                                            __tmp127805)))
                                       _hd122846122868_)
                                      (let ()
                                        (declare (not safe))
                                        (_g122839122852_ _g122840122855_)))))
                              (let ()
                                (declare (not safe))
                                (_g122839122852_ _g122840122855_)))))
                      (let ()
                        (declare (not safe))
                        (_g122839122852_ _g122840122855_))))))
          (declare (not safe))
          (_g122838122885_ _stx122837_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_form122071_)
        (let* ((___stx126428126429_ _form122071_)
               (_g122076122233_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126428126429_)))))
          (let ((___kont126430126431_
                 (lambda (_L122757_ _L122758_ _L122759_) '#t))
                (___kont126436126437_
                 (lambda (_L122545_
                          _L122546_
                          _L122547_
                          _L122548_
                          _L122549_
                          _L122550_)
                   '#t))
                (___kont126442126443_
                 (lambda (_L122341_ _L122342_ _L122343_ _L122344_) '#t))
                (___kont126444126445_ (lambda () '#f)))
            (let* ((___match126569126570_
                    (lambda (_e122195122245_
                             _hd122194122248_
                             _tl122193122250_
                             _e122198122253_
                             _hd122197122256_
                             _tl122196122258_
                             _e122201122261_
                             _hd122200122264_
                             _tl122199122266_
                             _e122204122269_
                             _hd122203122272_
                             _tl122202122274_
                             _e122207122277_
                             _hd122206122280_
                             _tl122205122282_
                             _e122210122285_
                             _hd122209122288_
                             _tl122208122290_
                             _e122213122293_
                             _hd122212122296_
                             _tl122211122298_
                             _e122216122301_
                             _hd122215122304_
                             _tl122214122306_
                             _e122219122309_
                             _hd122218122312_
                             _tl122217122314_
                             _e122222122317_
                             _hd122221122320_
                             _tl122220122322_
                             _e122225122325_
                             _hd122224122328_
                             _tl122223122330_
                             _e122228122333_
                             _hd122227122336_
                             _tl122226122338_)
                      (let ((_L122341_ _hd122227122336_)
                            (_L122342_ _hd122218122312_)
                            (_L122343_ _hd122209122288_)
                            (_L122344_ _hd122194122248_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L122344_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L122343_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L122344_ _L122341_))
                                 (let ((__tmp127806
                                        (let ()
                                          (declare (not safe))
                                          (gx#free-identifier=?
                                           _L122342_
                                           _L122344_))))
                                   (declare (not safe))
                                   (not __tmp127806)))
                            (___kont126442126443_
                             _L122341_
                             _L122342_
                             _L122343_
                             _L122344_)
                            (___kont126444126445_)))))
                   (___match126541126542_
                    (lambda (_e122195122245_
                             _hd122194122248_
                             _tl122193122250_
                             _e122198122253_
                             _hd122197122256_
                             _tl122196122258_
                             _e122201122261_
                             _hd122200122264_
                             _tl122199122266_
                             _e122204122269_
                             _hd122203122272_
                             _tl122202122274_
                             _e122207122277_
                             _hd122206122280_
                             _tl122205122282_
                             _e122210122285_
                             _hd122209122288_
                             _tl122208122290_
                             _e122213122293_
                             _hd122212122296_
                             _tl122211122298_
                             _e122216122301_
                             _hd122215122304_
                             _tl122214122306_
                             _e122219122309_
                             _hd122218122312_
                             _tl122217122314_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl122211122298_))
                          (let ((_e122222122317_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl122211122298_))))
                            (let ((_tl122220122322_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e122222122317_)))
                                  (_hd122221122320_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e122222122317_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd122221122320_))
                                  (let ((_e122225122325_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd122221122320_))))
                                    (let ((_tl122223122330_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e122225122325_)))
                                          (_hd122224122328_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e122225122325_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd122224122328_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd122224122328_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl122223122330_))
                                                  (let ((_e122228122333_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl122223122330_))))
                                                    (let ((_tl122226122338_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e122228122333_)))
                                                          (_hd122227122336_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e122228122333_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl122226122338_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl122220122322_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl122196122258_))
                          (___match126569126570_
                           _e122195122245_
                           _hd122194122248_
                           _tl122193122250_
                           _e122198122253_
                           _hd122197122256_
                           _tl122196122258_
                           _e122201122261_
                           _hd122200122264_
                           _tl122199122266_
                           _e122204122269_
                           _hd122203122272_
                           _tl122202122274_
                           _e122207122277_
                           _hd122206122280_
                           _tl122205122282_
                           _e122210122285_
                           _hd122209122288_
                           _tl122208122290_
                           _e122213122293_
                           _hd122212122296_
                           _tl122211122298_
                           _e122216122301_
                           _hd122215122304_
                           _tl122214122306_
                           _e122219122309_
                           _hd122218122312_
                           _tl122217122314_
                           _e122222122317_
                           _hd122221122320_
                           _tl122220122322_
                           _e122225122325_
                           _hd122224122328_
                           _tl122223122330_
                           _e122228122333_
                           _hd122227122336_
                           _tl122226122338_)
                          (___kont126444126445_))
                      (___kont126444126445_))
                  (___kont126444126445_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont126444126445_))
                                              (___kont126444126445_))
                                          (___kont126444126445_))))
                                  (___kont126444126445_))))
                          (___kont126444126445_))))
                   (___match126471126472_
                    (lambda (_e122131122385_
                             _hd122130122388_
                             _tl122129122390_
                             ___splice126438126439_
                             _target122132122393_
                             _tl122134122395_)
                      (letrec ((_loop122135122398_
                                (lambda (_hd122133122401_ _arg122139122403_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd122133122401_))
                                      (let ((_e122136122406_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd122133122401_))))
                                        (let ((_lp-tl122138122411_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122136122406_)))
                                              (_lp-hd122137122409_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122136122406_))))
                                          (let ((__tmp127821
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd122137122409_
                                                         _arg122139122403_))))
                                            (declare (not safe))
                                            (_loop122135122398_
                                             _lp-tl122138122411_
                                             __tmp127821))))
                                      (let ((_arg122140122414_
                                             (reverse _arg122139122403_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl122129122390_))
                                            (let ((_e122143122417_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl122129122390_))))
                                              (let ((_tl122141122422_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122143122417_)))
                                                    (_hd122142122420_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122143122417_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd122142122420_))
                                                    (let ((_e122146122425_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd122142122420_))))
                                                      (let ((_tl122144122430_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122146122425_)))
                    (_hd122145122428_
                     (let () (declare (not safe)) (##car _e122146122425_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd122145122428_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd122145122428_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122144122430_))
                            (let ((_e122149122433_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122144122430_))))
                              (let ((_tl122147122438_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122149122433_)))
                                    (_hd122148122436_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122149122433_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd122148122436_))
                                    (let ((_e122152122441_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd122148122436_))))
                                      (let ((_tl122150122446_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e122152122441_)))
                                            (_hd122151122444_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e122152122441_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd122151122444_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd122151122444_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl122150122446_))
                                                    (let ((_e122155122449_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl122150122446_))))
                                                      (let ((_tl122153122454_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122155122449_)))
                    (_hd122154122452_
                     (let () (declare (not safe)) (##car _e122155122449_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl122153122454_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl122147122438_))
                        (let ((_e122158122457_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl122147122438_))))
                          (let ((_tl122156122462_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e122158122457_)))
                                (_hd122157122460_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e122158122457_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd122157122460_))
                                (let ((_e122161122465_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd122157122460_))))
                                  (let ((_tl122159122470_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122161122465_)))
                                        (_hd122160122468_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122161122465_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd122160122468_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd122160122468_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl122159122470_))
                                                (let ((_e122164122473_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl122159122470_))))
                                                  (let ((_tl122162122478_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122164122473_)))
                                                        (_hd122163122476_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122164122473_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl122162122478_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _tl122156122462_))
                                                            (if (fx>= (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#stx-length _tl122156122462_))
                              '1)
                        (let ((___splice126440126441_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl122156122462_
                                  '1))))
                          (let ((_tl122167122483_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice126440126441_ '1)))
                                (_target122165122481_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice126440126441_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl122167122483_))
                                (let ((_e122176122486_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl122167122483_))))
                                  (let ((_tl122174122491_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122176122486_)))
                                        (_hd122175122489_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122176122486_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd122175122489_))
                                        (let ((_e122179122494_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd122175122489_))))
                                          (let ((_tl122177122499_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e122179122494_)))
                                                (_hd122178122497_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e122179122494_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd122178122497_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd122178122497_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl122177122499_))
                                                        (let ((_e122182122502_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl122177122499_))))
                  (let ((_tl122180122507_
                         (let () (declare (not safe)) (##cdr _e122182122502_)))
                        (_hd122181122505_
                         (let ()
                           (declare (not safe))
                           (##car _e122182122502_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl122180122507_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl122174122491_))
                            (letrec ((_loop122168122510_
                                      (lambda (_hd122166122513_
                                               _xarg122172122515_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd122166122513_))
                                            (let ((_e122169122518_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd122166122513_))))
                                              (let ((_lp-tl122171122523_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122169122518_)))
                                                    (_lp-hd122170122521_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122169122518_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _lp-hd122170122521_))
                                                    (let ((_e122185122526_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _lp-hd122170122521_))))
                                                      (let ((_tl122183122531_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122185122526_)))
                    (_hd122184122529_
                     (let () (declare (not safe)) (##car _e122185122526_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd122184122529_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd122184122529_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122183122531_))
                            (let ((_e122188122534_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122183122531_))))
                              (let ((_tl122186122539_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122188122534_)))
                                    (_hd122187122537_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122188122534_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl122186122539_))
                                    (let ((__tmp127820
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd122187122537_
                                                   _xarg122172122515_))))
                                      (declare (not safe))
                                      (_loop122168122510_
                                       _lp-tl122171122523_
                                       __tmp127820))
                                    (___match126541126542_
                                     _e122131122385_
                                     _hd122130122388_
                                     _tl122129122390_
                                     _e122143122417_
                                     _hd122142122420_
                                     _tl122141122422_
                                     _e122146122425_
                                     _hd122145122428_
                                     _tl122144122430_
                                     _e122149122433_
                                     _hd122148122436_
                                     _tl122147122438_
                                     _e122152122441_
                                     _hd122151122444_
                                     _tl122150122446_
                                     _e122155122449_
                                     _hd122154122452_
                                     _tl122153122454_
                                     _e122158122457_
                                     _hd122157122460_
                                     _tl122156122462_
                                     _e122161122465_
                                     _hd122160122468_
                                     _tl122159122470_
                                     _e122164122473_
                                     _hd122163122476_
                                     _tl122162122478_))))
                            (___match126541126542_
                             _e122131122385_
                             _hd122130122388_
                             _tl122129122390_
                             _e122143122417_
                             _hd122142122420_
                             _tl122141122422_
                             _e122146122425_
                             _hd122145122428_
                             _tl122144122430_
                             _e122149122433_
                             _hd122148122436_
                             _tl122147122438_
                             _e122152122441_
                             _hd122151122444_
                             _tl122150122446_
                             _e122155122449_
                             _hd122154122452_
                             _tl122153122454_
                             _e122158122457_
                             _hd122157122460_
                             _tl122156122462_
                             _e122161122465_
                             _hd122160122468_
                             _tl122159122470_
                             _e122164122473_
                             _hd122163122476_
                             _tl122162122478_))
                        (___match126541126542_
                         _e122131122385_
                         _hd122130122388_
                         _tl122129122390_
                         _e122143122417_
                         _hd122142122420_
                         _tl122141122422_
                         _e122146122425_
                         _hd122145122428_
                         _tl122144122430_
                         _e122149122433_
                         _hd122148122436_
                         _tl122147122438_
                         _e122152122441_
                         _hd122151122444_
                         _tl122150122446_
                         _e122155122449_
                         _hd122154122452_
                         _tl122153122454_
                         _e122158122457_
                         _hd122157122460_
                         _tl122156122462_
                         _e122161122465_
                         _hd122160122468_
                         _tl122159122470_
                         _e122164122473_
                         _hd122163122476_
                         _tl122162122478_))
                    (___match126541126542_
                     _e122131122385_
                     _hd122130122388_
                     _tl122129122390_
                     _e122143122417_
                     _hd122142122420_
                     _tl122141122422_
                     _e122146122425_
                     _hd122145122428_
                     _tl122144122430_
                     _e122149122433_
                     _hd122148122436_
                     _tl122147122438_
                     _e122152122441_
                     _hd122151122444_
                     _tl122150122446_
                     _e122155122449_
                     _hd122154122452_
                     _tl122153122454_
                     _e122158122457_
                     _hd122157122460_
                     _tl122156122462_
                     _e122161122465_
                     _hd122160122468_
                     _tl122159122470_
                     _e122164122473_
                     _hd122163122476_
                     _tl122162122478_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match126541126542_
                                                     _e122131122385_
                                                     _hd122130122388_
                                                     _tl122129122390_
                                                     _e122143122417_
                                                     _hd122142122420_
                                                     _tl122141122422_
                                                     _e122146122425_
                                                     _hd122145122428_
                                                     _tl122144122430_
                                                     _e122149122433_
                                                     _hd122148122436_
                                                     _tl122147122438_
                                                     _e122152122441_
                                                     _hd122151122444_
                                                     _tl122150122446_
                                                     _e122155122449_
                                                     _hd122154122452_
                                                     _tl122153122454_
                                                     _e122158122457_
                                                     _hd122157122460_
                                                     _tl122156122462_
                                                     _e122161122465_
                                                     _hd122160122468_
                                                     _tl122159122470_
                                                     _e122164122473_
                                                     _hd122163122476_
                                                     _tl122162122478_))))
                                            (let ((_xarg122173122542_
                                                   (reverse _xarg122172122515_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl122141122422_))
                                                  (let ((_L122545_
                                                         _hd122181122505_)
                                                        (_L122546_
                                                         _xarg122173122542_)
                                                        (_L122547_
                                                         _hd122163122476_)
                                                        (_L122548_
                                                         _hd122154122452_)
                                                        (_L122549_
                                                         _tl122134122395_)
                                                        (_L122550_
                                                         _arg122140122414_))
                                                    (if (and (let ((__tmp127818
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp127819
                                   (lambda (_g122593122596_ _g122594122598_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g122593122596_
                                             _g122594122598_)))))
                              (declare (not safe))
                              (foldr1 __tmp127819 '() _L122550_))))
                       (declare (not safe))
                       (gx#identifier-list? __tmp127818))
                     (let () (declare (not safe)) (gx#identifier? _L122549_))
                     (let ()
                       (declare (not safe))
                       (gxc#runtime-identifier=? _L122548_ 'apply))
                     (fx= (length (let ((__tmp127816
                                         (lambda (_g122600122603_
                                                  _g122601122605_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g122600122603_
                                                   _g122601122605_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp127816 '() _L122550_)))
                          (length (let ((__tmp127817
                                         (lambda (_g122607122610_
                                                  _g122608122612_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g122607122610_
                                                   _g122608122612_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp127817 '() _L122546_))))
                     (let ((__tmp127814
                            (let ((__tmp127815
                                   (lambda (_g122614122617_ _g122615122619_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g122614122617_
                                             _g122615122619_)))))
                              (declare (not safe))
                              (foldr1 __tmp127815 '() _L122550_)))
                           (__tmp127812
                            (let ((__tmp127813
                                   (lambda (_g122621122624_ _g122622122626_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g122621122624_
                                             _g122622122626_)))))
                              (declare (not safe))
                              (foldr1 __tmp127813 '() _L122546_))))
                       (declare (not safe))
                       (andmap2 gx#free-identifier=? __tmp127814 __tmp127812))
                     (let ()
                       (declare (not safe))
                       (gx#free-identifier=? _L122549_ _L122545_))
                     (let ((__tmp127807
                            (let ((__tmp127811
                                   (lambda (_g122628122630_)
                                     (let ()
                                       (declare (not safe))
                                       (gx#free-identifier=?
                                        _g122628122630_
                                        _L122547_))))
                                  (__tmp127808
                                   (let ((__tmp127810
                                          (lambda (_g122632122635_
                                                   _g122633122637_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g122632122635_
                                                    _g122633122637_))))
                                         (__tmp127809
                                          (let ()
                                            (declare (not safe))
                                            (cons _L122549_ '()))))
                                     (declare (not safe))
                                     (foldr1 __tmp127810
                                             __tmp127809
                                             _L122550_))))
                              (declare (not safe))
                              (find __tmp127811 __tmp127808))))
                       (declare (not safe))
                       (not __tmp127807)))
                (___kont126436126437_
                 _L122545_
                 _L122546_
                 _L122547_
                 _L122548_
                 _L122549_
                 _L122550_)
                (___match126541126542_
                 _e122131122385_
                 _hd122130122388_
                 _tl122129122390_
                 _e122143122417_
                 _hd122142122420_
                 _tl122141122422_
                 _e122146122425_
                 _hd122145122428_
                 _tl122144122430_
                 _e122149122433_
                 _hd122148122436_
                 _tl122147122438_
                 _e122152122441_
                 _hd122151122444_
                 _tl122150122446_
                 _e122155122449_
                 _hd122154122452_
                 _tl122153122454_
                 _e122158122457_
                 _hd122157122460_
                 _tl122156122462_
                 _e122161122465_
                 _hd122160122468_
                 _tl122159122470_
                 _e122164122473_
                 _hd122163122476_
                 _tl122162122478_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126541126542_
                                                   _e122131122385_
                                                   _hd122130122388_
                                                   _tl122129122390_
                                                   _e122143122417_
                                                   _hd122142122420_
                                                   _tl122141122422_
                                                   _e122146122425_
                                                   _hd122145122428_
                                                   _tl122144122430_
                                                   _e122149122433_
                                                   _hd122148122436_
                                                   _tl122147122438_
                                                   _e122152122441_
                                                   _hd122151122444_
                                                   _tl122150122446_
                                                   _e122155122449_
                                                   _hd122154122452_
                                                   _tl122153122454_
                                                   _e122158122457_
                                                   _hd122157122460_
                                                   _tl122156122462_
                                                   _e122161122465_
                                                   _hd122160122468_
                                                   _tl122159122470_
                                                   _e122164122473_
                                                   _hd122163122476_
                                                   _tl122162122478_)))))))
                              (let ()
                                (declare (not safe))
                                (_loop122168122510_ _target122165122481_ '())))
                            (___match126541126542_
                             _e122131122385_
                             _hd122130122388_
                             _tl122129122390_
                             _e122143122417_
                             _hd122142122420_
                             _tl122141122422_
                             _e122146122425_
                             _hd122145122428_
                             _tl122144122430_
                             _e122149122433_
                             _hd122148122436_
                             _tl122147122438_
                             _e122152122441_
                             _hd122151122444_
                             _tl122150122446_
                             _e122155122449_
                             _hd122154122452_
                             _tl122153122454_
                             _e122158122457_
                             _hd122157122460_
                             _tl122156122462_
                             _e122161122465_
                             _hd122160122468_
                             _tl122159122470_
                             _e122164122473_
                             _hd122163122476_
                             _tl122162122478_))
                        (___match126541126542_
                         _e122131122385_
                         _hd122130122388_
                         _tl122129122390_
                         _e122143122417_
                         _hd122142122420_
                         _tl122141122422_
                         _e122146122425_
                         _hd122145122428_
                         _tl122144122430_
                         _e122149122433_
                         _hd122148122436_
                         _tl122147122438_
                         _e122152122441_
                         _hd122151122444_
                         _tl122150122446_
                         _e122155122449_
                         _hd122154122452_
                         _tl122153122454_
                         _e122158122457_
                         _hd122157122460_
                         _tl122156122462_
                         _e122161122465_
                         _hd122160122468_
                         _tl122159122470_
                         _e122164122473_
                         _hd122163122476_
                         _tl122162122478_))))
                (___match126541126542_
                 _e122131122385_
                 _hd122130122388_
                 _tl122129122390_
                 _e122143122417_
                 _hd122142122420_
                 _tl122141122422_
                 _e122146122425_
                 _hd122145122428_
                 _tl122144122430_
                 _e122149122433_
                 _hd122148122436_
                 _tl122147122438_
                 _e122152122441_
                 _hd122151122444_
                 _tl122150122446_
                 _e122155122449_
                 _hd122154122452_
                 _tl122153122454_
                 _e122158122457_
                 _hd122157122460_
                 _tl122156122462_
                 _e122161122465_
                 _hd122160122468_
                 _tl122159122470_
                 _e122164122473_
                 _hd122163122476_
                 _tl122162122478_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match126541126542_
                                                     _e122131122385_
                                                     _hd122130122388_
                                                     _tl122129122390_
                                                     _e122143122417_
                                                     _hd122142122420_
                                                     _tl122141122422_
                                                     _e122146122425_
                                                     _hd122145122428_
                                                     _tl122144122430_
                                                     _e122149122433_
                                                     _hd122148122436_
                                                     _tl122147122438_
                                                     _e122152122441_
                                                     _hd122151122444_
                                                     _tl122150122446_
                                                     _e122155122449_
                                                     _hd122154122452_
                                                     _tl122153122454_
                                                     _e122158122457_
                                                     _hd122157122460_
                                                     _tl122156122462_
                                                     _e122161122465_
                                                     _hd122160122468_
                                                     _tl122159122470_
                                                     _e122164122473_
                                                     _hd122163122476_
                                                     _tl122162122478_))
                                                (___match126541126542_
                                                 _e122131122385_
                                                 _hd122130122388_
                                                 _tl122129122390_
                                                 _e122143122417_
                                                 _hd122142122420_
                                                 _tl122141122422_
                                                 _e122146122425_
                                                 _hd122145122428_
                                                 _tl122144122430_
                                                 _e122149122433_
                                                 _hd122148122436_
                                                 _tl122147122438_
                                                 _e122152122441_
                                                 _hd122151122444_
                                                 _tl122150122446_
                                                 _e122155122449_
                                                 _hd122154122452_
                                                 _tl122153122454_
                                                 _e122158122457_
                                                 _hd122157122460_
                                                 _tl122156122462_
                                                 _e122161122465_
                                                 _hd122160122468_
                                                 _tl122159122470_
                                                 _e122164122473_
                                                 _hd122163122476_
                                                 _tl122162122478_))))
                                        (___match126541126542_
                                         _e122131122385_
                                         _hd122130122388_
                                         _tl122129122390_
                                         _e122143122417_
                                         _hd122142122420_
                                         _tl122141122422_
                                         _e122146122425_
                                         _hd122145122428_
                                         _tl122144122430_
                                         _e122149122433_
                                         _hd122148122436_
                                         _tl122147122438_
                                         _e122152122441_
                                         _hd122151122444_
                                         _tl122150122446_
                                         _e122155122449_
                                         _hd122154122452_
                                         _tl122153122454_
                                         _e122158122457_
                                         _hd122157122460_
                                         _tl122156122462_
                                         _e122161122465_
                                         _hd122160122468_
                                         _tl122159122470_
                                         _e122164122473_
                                         _hd122163122476_
                                         _tl122162122478_))))
                                (___match126541126542_
                                 _e122131122385_
                                 _hd122130122388_
                                 _tl122129122390_
                                 _e122143122417_
                                 _hd122142122420_
                                 _tl122141122422_
                                 _e122146122425_
                                 _hd122145122428_
                                 _tl122144122430_
                                 _e122149122433_
                                 _hd122148122436_
                                 _tl122147122438_
                                 _e122152122441_
                                 _hd122151122444_
                                 _tl122150122446_
                                 _e122155122449_
                                 _hd122154122452_
                                 _tl122153122454_
                                 _e122158122457_
                                 _hd122157122460_
                                 _tl122156122462_
                                 _e122161122465_
                                 _hd122160122468_
                                 _tl122159122470_
                                 _e122164122473_
                                 _hd122163122476_
                                 _tl122162122478_))))
                        (___match126541126542_
                         _e122131122385_
                         _hd122130122388_
                         _tl122129122390_
                         _e122143122417_
                         _hd122142122420_
                         _tl122141122422_
                         _e122146122425_
                         _hd122145122428_
                         _tl122144122430_
                         _e122149122433_
                         _hd122148122436_
                         _tl122147122438_
                         _e122152122441_
                         _hd122151122444_
                         _tl122150122446_
                         _e122155122449_
                         _hd122154122452_
                         _tl122153122454_
                         _e122158122457_
                         _hd122157122460_
                         _tl122156122462_
                         _e122161122465_
                         _hd122160122468_
                         _tl122159122470_
                         _e122164122473_
                         _hd122163122476_
                         _tl122162122478_))
                    (___match126541126542_
                     _e122131122385_
                     _hd122130122388_
                     _tl122129122390_
                     _e122143122417_
                     _hd122142122420_
                     _tl122141122422_
                     _e122146122425_
                     _hd122145122428_
                     _tl122144122430_
                     _e122149122433_
                     _hd122148122436_
                     _tl122147122438_
                     _e122152122441_
                     _hd122151122444_
                     _tl122150122446_
                     _e122155122449_
                     _hd122154122452_
                     _tl122153122454_
                     _e122158122457_
                     _hd122157122460_
                     _tl122156122462_
                     _e122161122465_
                     _hd122160122468_
                     _tl122159122470_
                     _e122164122473_
                     _hd122163122476_
                     _tl122162122478_))
                (___kont126444126445_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont126444126445_))
                                            (___kont126444126445_))
                                        (___kont126444126445_))))
                                (___kont126444126445_))))
                        (___kont126444126445_))
                    (___kont126444126445_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont126444126445_))
                                                (___kont126444126445_))
                                            (___kont126444126445_))))
                                    (___kont126444126445_))))
                            (___kont126444126445_))
                        (___kont126444126445_))
                    (___kont126444126445_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont126444126445_))))
                                            (___kont126444126445_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop122135122398_ _target122132122393_ '())))))
                   (___match126459126460_
                    (lambda (_e122083122645_
                             _hd122082122648_
                             _tl122081122650_
                             ___splice126432126433_
                             _target122084122653_
                             _tl122086122655_)
                      (letrec ((_loop122087122658_
                                (lambda (_hd122085122661_ _arg122091122663_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd122085122661_))
                                      (let ((_e122088122666_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd122085122661_))))
                                        (let ((_lp-tl122090122671_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122088122666_)))
                                              (_lp-hd122089122669_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122088122666_))))
                                          (let ((__tmp127835
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd122089122669_
                                                         _arg122091122663_))))
                                            (declare (not safe))
                                            (_loop122087122658_
                                             _lp-tl122090122671_
                                             __tmp127835))))
                                      (let ((_arg122092122674_
                                             (reverse _arg122091122663_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl122081122650_))
                                            (let ((_e122095122677_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl122081122650_))))
                                              (let ((_tl122093122682_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122095122677_)))
                                                    (_hd122094122680_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122095122677_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd122094122680_))
                                                    (let ((_e122098122685_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd122094122680_))))
                                                      (let ((_tl122096122690_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122098122685_)))
                    (_hd122097122688_
                     (let () (declare (not safe)) (##car _e122098122685_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd122097122688_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd122097122688_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122096122690_))
                            (let ((_e122101122693_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122096122690_))))
                              (let ((_tl122099122698_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122101122693_)))
                                    (_hd122100122696_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122101122693_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd122100122696_))
                                    (let ((_e122104122701_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd122100122696_))))
                                      (let ((_tl122102122706_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e122104122701_)))
                                            (_hd122103122704_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e122104122701_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd122103122704_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd122103122704_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl122102122706_))
                                                    (let ((_e122107122709_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl122102122706_))))
                                                      (let ((_tl122105122714_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122107122709_)))
                    (_hd122106122712_
                     (let () (declare (not safe)) (##car _e122107122709_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl122105122714_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl122099122698_))
                        (let ((___splice126434126435_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl122099122698_
                                  '0))))
                          (let ((_tl122110122719_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice126434126435_ '1)))
                                (_target122108122717_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice126434126435_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl122110122719_))
                                (letrec ((_loop122111122722_
                                          (lambda (_hd122109122725_
                                                   _xarg122115122727_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd122109122725_))
                                                (let ((_e122112122730_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd122109122725_))))
                                                  (let ((_lp-tl122114122735_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122112122730_)))
                                                        (_lp-hd122113122733_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122112122730_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd122113122733_))
                                                        (let ((_e122119122738_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd122113122733_))))
                  (let ((_tl122117122743_
                         (let () (declare (not safe)) (##cdr _e122119122738_)))
                        (_hd122118122741_
                         (let ()
                           (declare (not safe))
                           (##car _e122119122738_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd122118122741_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd122118122741_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl122117122743_))
                                (let ((_e122122122746_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl122117122743_))))
                                  (let ((_tl122120122751_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122122122746_)))
                                        (_hd122121122749_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122122122746_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl122120122751_))
                                        (let ((__tmp127834
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd122121122749_
                                                       _xarg122115122727_))))
                                          (declare (not safe))
                                          (_loop122111122722_
                                           _lp-tl122114122735_
                                           __tmp127834))
                                        (___match126471126472_
                                         _e122083122645_
                                         _hd122082122648_
                                         _tl122081122650_
                                         ___splice126432126433_
                                         _target122084122653_
                                         _tl122086122655_))))
                                (___match126471126472_
                                 _e122083122645_
                                 _hd122082122648_
                                 _tl122081122650_
                                 ___splice126432126433_
                                 _target122084122653_
                                 _tl122086122655_))
                            (___match126471126472_
                             _e122083122645_
                             _hd122082122648_
                             _tl122081122650_
                             ___splice126432126433_
                             _target122084122653_
                             _tl122086122655_))
                        (___match126471126472_
                         _e122083122645_
                         _hd122082122648_
                         _tl122081122650_
                         ___splice126432126433_
                         _target122084122653_
                         _tl122086122655_))))
                (___match126471126472_
                 _e122083122645_
                 _hd122082122648_
                 _tl122081122650_
                 ___splice126432126433_
                 _target122084122653_
                 _tl122086122655_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg122116122754_
                                                       (reverse _xarg122115122727_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl122093122682_))
                                                      (let ((_L122757_
                                                             _xarg122116122754_)
                                                            (_L122758_
                                                             _hd122106122712_)
                                                            (_L122759_
                                                             _arg122092122674_))
                                                        (if (and (let ((__tmp127832
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp127833
                                       (lambda (_g122787122790_
                                                _g122788122792_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g122787122790_
                                                 _g122788122792_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp127833 '() _L122759_))))
                           (declare (not safe))
                           (gx#identifier-list? __tmp127832))
                         (fx= (length (let ((__tmp127830
                                             (lambda (_g122794122797_
                                                      _g122795122799_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g122794122797_
                                                       _g122795122799_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp127830 '() _L122759_)))
                              (length (let ((__tmp127831
                                             (lambda (_g122801122804_
                                                      _g122802122806_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g122801122804_
                                                       _g122802122806_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp127831 '() _L122757_))))
                         (let ((__tmp127828
                                (let ((__tmp127829
                                       (lambda (_g122808122811_
                                                _g122809122813_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g122808122811_
                                                 _g122809122813_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp127829 '() _L122759_)))
                               (__tmp127826
                                (let ((__tmp127827
                                       (lambda (_g122815122818_
                                                _g122816122820_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g122815122818_
                                                 _g122816122820_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp127827 '() _L122757_))))
                           (declare (not safe))
                           (andmap2 gx#free-identifier=?
                                    __tmp127828
                                    __tmp127826))
                         (let ((__tmp127822
                                (let ((__tmp127825
                                       (lambda (_g122822122824_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _g122822122824_
                                            _L122758_))))
                                      (__tmp127823
                                       (let ((__tmp127824
                                              (lambda (_g122826122829_
                                                       _g122827122831_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g122826122829_
                                                        _g122827122831_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp127824 '() _L122759_))))
                                  (declare (not safe))
                                  (find __tmp127825 __tmp127823))))
                           (declare (not safe))
                           (not __tmp127822)))
                    (___kont126430126431_ _L122757_ _L122758_ _L122759_)
                    (___match126471126472_
                     _e122083122645_
                     _hd122082122648_
                     _tl122081122650_
                     ___splice126432126433_
                     _target122084122653_
                     _tl122086122655_)))
              (___match126471126472_
               _e122083122645_
               _hd122082122648_
               _tl122081122650_
               ___splice126432126433_
               _target122084122653_
               _tl122086122655_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (let ()
                                    (declare (not safe))
                                    (_loop122111122722_
                                     _target122108122717_
                                     '())))
                                (___match126471126472_
                                 _e122083122645_
                                 _hd122082122648_
                                 _tl122081122650_
                                 ___splice126432126433_
                                 _target122084122653_
                                 _tl122086122655_))))
                        (___match126471126472_
                         _e122083122645_
                         _hd122082122648_
                         _tl122081122650_
                         ___splice126432126433_
                         _target122084122653_
                         _tl122086122655_))
                    (___match126471126472_
                     _e122083122645_
                     _hd122082122648_
                     _tl122081122650_
                     ___splice126432126433_
                     _target122084122653_
                     _tl122086122655_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match126471126472_
                                                     _e122083122645_
                                                     _hd122082122648_
                                                     _tl122081122650_
                                                     ___splice126432126433_
                                                     _target122084122653_
                                                     _tl122086122655_))
                                                (___match126471126472_
                                                 _e122083122645_
                                                 _hd122082122648_
                                                 _tl122081122650_
                                                 ___splice126432126433_
                                                 _target122084122653_
                                                 _tl122086122655_))
                                            (___match126471126472_
                                             _e122083122645_
                                             _hd122082122648_
                                             _tl122081122650_
                                             ___splice126432126433_
                                             _target122084122653_
                                             _tl122086122655_))))
                                    (___match126471126472_
                                     _e122083122645_
                                     _hd122082122648_
                                     _tl122081122650_
                                     ___splice126432126433_
                                     _target122084122653_
                                     _tl122086122655_))))
                            (___match126471126472_
                             _e122083122645_
                             _hd122082122648_
                             _tl122081122650_
                             ___splice126432126433_
                             _target122084122653_
                             _tl122086122655_))
                        (___match126471126472_
                         _e122083122645_
                         _hd122082122648_
                         _tl122081122650_
                         ___splice126432126433_
                         _target122084122653_
                         _tl122086122655_))
                    (___match126471126472_
                     _e122083122645_
                     _hd122082122648_
                     _tl122081122650_
                     ___splice126432126433_
                     _target122084122653_
                     _tl122086122655_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match126471126472_
                                                     _e122083122645_
                                                     _hd122082122648_
                                                     _tl122081122650_
                                                     ___splice126432126433_
                                                     _target122084122653_
                                                     _tl122086122655_))))
                                            (___match126471126472_
                                             _e122083122645_
                                             _hd122082122648_
                                             _tl122081122650_
                                             ___splice126432126433_
                                             _target122084122653_
                                             _tl122086122655_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop122087122658_ _target122084122653_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx126428126429_))
                  (let ((_e122083122645_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx126428126429_))))
                    (let ((_tl122081122650_
                           (let ()
                             (declare (not safe))
                             (##cdr _e122083122645_)))
                          (_hd122082122648_
                           (let ()
                             (declare (not safe))
                             (##car _e122083122645_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd122082122648_))
                          (let ((___splice126432126433_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd122082122648_
                                    '0))))
                            (let ((_tl122086122655_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice126432126433_ '1)))
                                  (_target122084122653_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice126432126433_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl122086122655_))
                                  (___match126459126460_
                                   _e122083122645_
                                   _hd122082122648_
                                   _tl122081122650_
                                   ___splice126432126433_
                                   _target122084122653_
                                   _tl122086122655_)
                                  (___match126471126472_
                                   _e122083122645_
                                   _hd122082122648_
                                   _tl122081122650_
                                   ___splice126432126433_
                                   _target122084122653_
                                   _tl122086122655_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl122081122650_))
                              (let ((_e122198122253_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl122081122650_))))
                                (let ((_tl122196122258_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e122198122253_)))
                                      (_hd122197122256_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e122198122253_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd122197122256_))
                                      (let ((_e122201122261_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd122197122256_))))
                                        (let ((_tl122199122266_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122201122261_)))
                                              (_hd122200122264_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122201122261_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd122200122264_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd122200122264_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl122199122266_))
                                                      (let ((_e122204122269_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl122199122266_))))
                (let ((_tl122202122274_
                       (let () (declare (not safe)) (##cdr _e122204122269_)))
                      (_hd122203122272_
                       (let () (declare (not safe)) (##car _e122204122269_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd122203122272_))
                      (let ((_e122207122277_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd122203122272_))))
                        (let ((_tl122205122282_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e122207122277_)))
                              (_hd122206122280_
                               (let ()
                                 (declare (not safe))
                                 (##car _e122207122277_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd122206122280_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd122206122280_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl122205122282_))
                                      (let ((_e122210122285_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl122205122282_))))
                                        (let ((_tl122208122290_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122210122285_)))
                                              (_hd122209122288_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122210122285_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl122208122290_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl122202122274_))
                                                  (let ((_e122213122293_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl122202122274_))))
                                                    (let ((_tl122211122298_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e122213122293_)))
                                                          (_hd122212122296_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e122213122293_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd122212122296_))
                                                          (let ((_e122216122301_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd122212122296_))))
                    (let ((_tl122214122306_
                           (let ()
                             (declare (not safe))
                             (##cdr _e122216122301_)))
                          (_hd122215122304_
                           (let ()
                             (declare (not safe))
                             (##car _e122216122301_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd122215122304_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd122215122304_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl122214122306_))
                                  (let ((_e122219122309_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl122214122306_))))
                                    (let ((_tl122217122314_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e122219122309_)))
                                          (_hd122218122312_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e122219122309_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl122217122314_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl122211122298_))
                                              (let ((_e122222122317_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl122211122298_))))
                                                (let ((_tl122220122322_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e122222122317_)))
                                                      (_hd122221122320_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e122222122317_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd122221122320_))
                                                      (let ((_e122225122325_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd122221122320_))))
                (let ((_tl122223122330_
                       (let () (declare (not safe)) (##cdr _e122225122325_)))
                      (_hd122224122328_
                       (let () (declare (not safe)) (##car _e122225122325_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd122224122328_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd122224122328_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl122223122330_))
                              (let ((_e122228122333_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl122223122330_))))
                                (let ((_tl122226122338_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e122228122333_)))
                                      (_hd122227122336_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e122228122333_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl122226122338_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl122220122322_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl122196122258_))
                                              (___match126569126570_
                                               _e122083122645_
                                               _hd122082122648_
                                               _tl122081122650_
                                               _e122198122253_
                                               _hd122197122256_
                                               _tl122196122258_
                                               _e122201122261_
                                               _hd122200122264_
                                               _tl122199122266_
                                               _e122204122269_
                                               _hd122203122272_
                                               _tl122202122274_
                                               _e122207122277_
                                               _hd122206122280_
                                               _tl122205122282_
                                               _e122210122285_
                                               _hd122209122288_
                                               _tl122208122290_
                                               _e122213122293_
                                               _hd122212122296_
                                               _tl122211122298_
                                               _e122216122301_
                                               _hd122215122304_
                                               _tl122214122306_
                                               _e122219122309_
                                               _hd122218122312_
                                               _tl122217122314_
                                               _e122222122317_
                                               _hd122221122320_
                                               _tl122220122322_
                                               _e122225122325_
                                               _hd122224122328_
                                               _tl122223122330_
                                               _e122228122333_
                                               _hd122227122336_
                                               _tl122226122338_)
                                              (___kont126444126445_))
                                          (___kont126444126445_))
                                      (___kont126444126445_))))
                              (___kont126444126445_))
                          (___kont126444126445_))
                      (___kont126444126445_))))
              (___kont126444126445_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont126444126445_))
                                          (___kont126444126445_))))
                                  (___kont126444126445_))
                              (___kont126444126445_))
                          (___kont126444126445_))))
                  (___kont126444126445_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont126444126445_))
                                              (___kont126444126445_))))
                                      (___kont126444126445_))
                                  (___kont126444126445_))
                              (___kont126444126445_))))
                      (___kont126444126445_))))
              (___kont126444126445_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont126444126445_))
                                              (___kont126444126445_))))
                                      (___kont126444126445_))))
                              (___kont126444126445_)))))
                  (___kont126444126445_)))))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_form121539_)
        (let* ((___stx126572126573_ _form121539_)
               (_g121543121667_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126572126573_)))))
          (let ((___kont126574126575_
                 (lambda (_L122037_ _L122038_ _L122039_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L122038_))))
                (___kont126580126581_
                 (lambda (_L121885_ _L121886_ _L121887_ _L121888_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L121885_))))
                (___kont126584126585_
                 (lambda (_L121752_ _L121753_ _L121754_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L121752_)))))
            (let* ((___match126681126682_
                    (lambda (_e121635121672_
                             _hd121634121675_
                             _tl121633121677_
                             _e121638121680_
                             _hd121637121683_
                             _tl121636121685_
                             _e121641121688_
                             _hd121640121691_
                             _tl121639121693_
                             _e121644121696_
                             _hd121643121699_
                             _tl121642121701_
                             _e121647121704_
                             _hd121646121707_
                             _tl121645121709_
                             _e121650121712_
                             _hd121649121715_
                             _tl121648121717_
                             _e121653121720_
                             _hd121652121723_
                             _tl121651121725_
                             _e121656121728_
                             _hd121655121731_
                             _tl121654121733_
                             _e121659121736_
                             _hd121658121739_
                             _tl121657121741_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl121651121725_))
                          (let ((_e121662121744_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl121651121725_))))
                            (let ((_tl121660121749_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e121662121744_)))
                                  (_hd121661121747_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e121662121744_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl121660121749_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl121636121685_))
                                      (___kont126584126585_
                                       _hd121658121739_
                                       _hd121649121715_
                                       _hd121634121675_)
                                      (let ()
                                        (declare (not safe))
                                        (_g121543121667_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g121543121667_)))))
                          (let () (declare (not safe)) (_g121543121667_)))))
                   (___match126611126612_
                    (lambda (_e121596121789_
                             _hd121595121792_
                             _tl121594121794_
                             ___splice126582126583_
                             _target121597121797_
                             _tl121599121799_)
                      (letrec ((_loop121600121802_
                                (lambda (_hd121598121805_ _arg121604121807_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd121598121805_))
                                      (let ((_e121601121810_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd121598121805_))))
                                        (let ((_lp-tl121603121815_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e121601121810_)))
                                              (_lp-hd121602121813_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e121601121810_))))
                                          (let ((__tmp127836
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd121602121813_
                                                         _arg121604121807_))))
                                            (declare (not safe))
                                            (_loop121600121802_
                                             _lp-tl121603121815_
                                             __tmp127836))))
                                      (let ((_arg121605121818_
                                             (reverse _arg121604121807_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl121594121794_))
                                            (let ((_e121608121821_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl121594121794_))))
                                              (let ((_tl121606121826_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e121608121821_)))
                                                    (_hd121607121824_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e121608121821_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd121607121824_))
                                                    (let ((_e121611121829_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd121607121824_))))
                                                      (let ((_tl121609121834_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121611121829_)))
                    (_hd121610121832_
                     (let () (declare (not safe)) (##car _e121611121829_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd121610121832_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd121610121832_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121609121834_))
                            (let ((_e121614121837_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121609121834_))))
                              (let ((_tl121612121842_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121614121837_)))
                                    (_hd121613121840_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121614121837_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd121613121840_))
                                    (let ((_e121617121845_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd121613121840_))))
                                      (let ((_tl121615121850_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121617121845_)))
                                            (_hd121616121848_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121617121845_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd121616121848_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd121616121848_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl121615121850_))
                                                    (let ((_e121620121853_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl121615121850_))))
                                                      (let ((_tl121618121858_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121620121853_)))
                    (_hd121619121856_
                     (let () (declare (not safe)) (##car _e121620121853_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl121618121858_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl121612121842_))
                        (let ((_e121623121861_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl121612121842_))))
                          (let ((_tl121621121866_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e121623121861_)))
                                (_hd121622121864_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e121623121861_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd121622121864_))
                                (let ((_e121626121869_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd121622121864_))))
                                  (let ((_tl121624121874_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121626121869_)))
                                        (_hd121625121872_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121626121869_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd121625121872_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd121625121872_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl121624121874_))
                                                (let ((_e121629121877_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl121624121874_))))
                                                  (let ((_tl121627121882_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121629121877_)))
                                                        (_hd121628121880_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121629121877_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl121627121882_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl121606121826_))
                                                            (___kont126580126581_
                                                             _hd121628121880_
                                                             _hd121619121856_
                                                             _tl121599121799_
                                                             _arg121605121818_)
                                                            (___match126681126682_
                                                             _e121596121789_
                                                             _hd121595121792_
                                                             _tl121594121794_
                                                             _e121608121821_
                                                             _hd121607121824_
                                                             _tl121606121826_
                                                             _e121611121829_
                                                             _hd121610121832_
                                                             _tl121609121834_
                                                             _e121614121837_
                                                             _hd121613121840_
                                                             _tl121612121842_
                                                             _e121617121845_
                                                             _hd121616121848_
                                                             _tl121615121850_
                                                             _e121620121853_
                                                             _hd121619121856_
                                                             _tl121618121858_
                                                             _e121623121861_
                                                             _hd121622121864_
                                                             _tl121621121866_
                                                             _e121626121869_
                                                             _hd121625121872_
                                                             _tl121624121874_
                                                             _e121629121877_
                                                             _hd121628121880_
                                                             _tl121627121882_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g121543121667_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g121543121667_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g121543121667_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g121543121667_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g121543121667_)))))
                        (let () (declare (not safe)) (_g121543121667_)))
                    (let () (declare (not safe)) (_g121543121667_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g121543121667_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g121543121667_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g121543121667_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g121543121667_)))))
                            (let () (declare (not safe)) (_g121543121667_)))
                        (let () (declare (not safe)) (_g121543121667_)))
                    (let () (declare (not safe)) (_g121543121667_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g121543121667_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g121543121667_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop121600121802_ _target121597121797_ '())))))
                   (___match126599126600_
                    (lambda (_e121550121925_
                             _hd121549121928_
                             _tl121548121930_
                             ___splice126576126577_
                             _target121551121933_
                             _tl121553121935_)
                      (letrec ((_loop121554121938_
                                (lambda (_hd121552121941_ _arg121558121943_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd121552121941_))
                                      (let ((_e121555121946_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd121552121941_))))
                                        (let ((_lp-tl121557121951_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e121555121946_)))
                                              (_lp-hd121556121949_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e121555121946_))))
                                          (let ((__tmp127838
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd121556121949_
                                                         _arg121558121943_))))
                                            (declare (not safe))
                                            (_loop121554121938_
                                             _lp-tl121557121951_
                                             __tmp127838))))
                                      (let ((_arg121559121954_
                                             (reverse _arg121558121943_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl121548121930_))
                                            (let ((_e121562121957_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl121548121930_))))
                                              (let ((_tl121560121962_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e121562121957_)))
                                                    (_hd121561121960_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e121562121957_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd121561121960_))
                                                    (let ((_e121565121965_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd121561121960_))))
                                                      (let ((_tl121563121970_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121565121965_)))
                    (_hd121564121968_
                     (let () (declare (not safe)) (##car _e121565121965_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd121564121968_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd121564121968_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121563121970_))
                            (let ((_e121568121973_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121563121970_))))
                              (let ((_tl121566121978_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121568121973_)))
                                    (_hd121567121976_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121568121973_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd121567121976_))
                                    (let ((_e121571121981_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd121567121976_))))
                                      (let ((_tl121569121986_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121571121981_)))
                                            (_hd121570121984_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121571121981_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd121570121984_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd121570121984_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl121569121986_))
                                                    (let ((_e121574121989_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl121569121986_))))
                                                      (let ((_tl121572121994_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121574121989_)))
                    (_hd121573121992_
                     (let () (declare (not safe)) (##car _e121574121989_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl121572121994_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl121566121978_))
                        (let ((___splice126578126579_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl121566121978_
                                  '0))))
                          (let ((_tl121577121999_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice126578126579_ '1)))
                                (_target121575121997_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice126578126579_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl121577121999_))
                                (letrec ((_loop121578122002_
                                          (lambda (_hd121576122005_
                                                   _xarg121582122007_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd121576122005_))
                                                (let ((_e121579122010_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd121576122005_))))
                                                  (let ((_lp-tl121581122015_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121579122010_)))
                                                        (_lp-hd121580122013_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121579122010_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd121580122013_))
                                                        (let ((_e121586122018_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd121580122013_))))
                  (let ((_tl121584122023_
                         (let () (declare (not safe)) (##cdr _e121586122018_)))
                        (_hd121585122021_
                         (let ()
                           (declare (not safe))
                           (##car _e121586122018_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd121585122021_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd121585122021_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl121584122023_))
                                (let ((_e121589122026_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl121584122023_))))
                                  (let ((_tl121587122031_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121589122026_)))
                                        (_hd121588122029_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121589122026_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl121587122031_))
                                        (let ((__tmp127837
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd121588122029_
                                                       _xarg121582122007_))))
                                          (declare (not safe))
                                          (_loop121578122002_
                                           _lp-tl121581122015_
                                           __tmp127837))
                                        (___match126611126612_
                                         _e121550121925_
                                         _hd121549121928_
                                         _tl121548121930_
                                         ___splice126576126577_
                                         _target121551121933_
                                         _tl121553121935_))))
                                (___match126611126612_
                                 _e121550121925_
                                 _hd121549121928_
                                 _tl121548121930_
                                 ___splice126576126577_
                                 _target121551121933_
                                 _tl121553121935_))
                            (___match126611126612_
                             _e121550121925_
                             _hd121549121928_
                             _tl121548121930_
                             ___splice126576126577_
                             _target121551121933_
                             _tl121553121935_))
                        (___match126611126612_
                         _e121550121925_
                         _hd121549121928_
                         _tl121548121930_
                         ___splice126576126577_
                         _target121551121933_
                         _tl121553121935_))))
                (___match126611126612_
                 _e121550121925_
                 _hd121549121928_
                 _tl121548121930_
                 ___splice126576126577_
                 _target121551121933_
                 _tl121553121935_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg121583122034_
                                                       (reverse _xarg121582122007_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl121560121962_))
                                                      (___kont126574126575_
                                                       _xarg121583122034_
                                                       _hd121573121992_
                                                       _arg121559121954_)
                                                      (___match126611126612_
                                                       _e121550121925_
                                                       _hd121549121928_
                                                       _tl121548121930_
                                                       ___splice126576126577_
                                                       _target121551121933_
                                                       _tl121553121935_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_loop121578122002_
                                     _target121575121997_
                                     '())))
                                (___match126611126612_
                                 _e121550121925_
                                 _hd121549121928_
                                 _tl121548121930_
                                 ___splice126576126577_
                                 _target121551121933_
                                 _tl121553121935_))))
                        (___match126611126612_
                         _e121550121925_
                         _hd121549121928_
                         _tl121548121930_
                         ___splice126576126577_
                         _target121551121933_
                         _tl121553121935_))
                    (___match126611126612_
                     _e121550121925_
                     _hd121549121928_
                     _tl121548121930_
                     ___splice126576126577_
                     _target121551121933_
                     _tl121553121935_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match126611126612_
                                                     _e121550121925_
                                                     _hd121549121928_
                                                     _tl121548121930_
                                                     ___splice126576126577_
                                                     _target121551121933_
                                                     _tl121553121935_))
                                                (___match126611126612_
                                                 _e121550121925_
                                                 _hd121549121928_
                                                 _tl121548121930_
                                                 ___splice126576126577_
                                                 _target121551121933_
                                                 _tl121553121935_))
                                            (___match126611126612_
                                             _e121550121925_
                                             _hd121549121928_
                                             _tl121548121930_
                                             ___splice126576126577_
                                             _target121551121933_
                                             _tl121553121935_))))
                                    (___match126611126612_
                                     _e121550121925_
                                     _hd121549121928_
                                     _tl121548121930_
                                     ___splice126576126577_
                                     _target121551121933_
                                     _tl121553121935_))))
                            (___match126611126612_
                             _e121550121925_
                             _hd121549121928_
                             _tl121548121930_
                             ___splice126576126577_
                             _target121551121933_
                             _tl121553121935_))
                        (___match126611126612_
                         _e121550121925_
                         _hd121549121928_
                         _tl121548121930_
                         ___splice126576126577_
                         _target121551121933_
                         _tl121553121935_))
                    (___match126611126612_
                     _e121550121925_
                     _hd121549121928_
                     _tl121548121930_
                     ___splice126576126577_
                     _target121551121933_
                     _tl121553121935_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match126611126612_
                                                     _e121550121925_
                                                     _hd121549121928_
                                                     _tl121548121930_
                                                     ___splice126576126577_
                                                     _target121551121933_
                                                     _tl121553121935_))))
                                            (___match126611126612_
                                             _e121550121925_
                                             _hd121549121928_
                                             _tl121548121930_
                                             ___splice126576126577_
                                             _target121551121933_
                                             _tl121553121935_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop121554121938_ _target121551121933_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx126572126573_))
                  (let ((_e121550121925_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx126572126573_))))
                    (let ((_tl121548121930_
                           (let ()
                             (declare (not safe))
                             (##cdr _e121550121925_)))
                          (_hd121549121928_
                           (let ()
                             (declare (not safe))
                             (##car _e121550121925_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd121549121928_))
                          (let ((___splice126576126577_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd121549121928_
                                    '0))))
                            (let ((_tl121553121935_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice126576126577_ '1)))
                                  (_target121551121933_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice126576126577_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl121553121935_))
                                  (___match126599126600_
                                   _e121550121925_
                                   _hd121549121928_
                                   _tl121548121930_
                                   ___splice126576126577_
                                   _target121551121933_
                                   _tl121553121935_)
                                  (___match126611126612_
                                   _e121550121925_
                                   _hd121549121928_
                                   _tl121548121930_
                                   ___splice126576126577_
                                   _target121551121933_
                                   _tl121553121935_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl121548121930_))
                              (let ((_e121638121680_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl121548121930_))))
                                (let ((_tl121636121685_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e121638121680_)))
                                      (_hd121637121683_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e121638121680_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd121637121683_))
                                      (let ((_e121641121688_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd121637121683_))))
                                        (let ((_tl121639121693_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e121641121688_)))
                                              (_hd121640121691_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e121641121688_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd121640121691_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd121640121691_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl121639121693_))
                                                      (let ((_e121644121696_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl121639121693_))))
                (let ((_tl121642121701_
                       (let () (declare (not safe)) (##cdr _e121644121696_)))
                      (_hd121643121699_
                       (let () (declare (not safe)) (##car _e121644121696_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd121643121699_))
                      (let ((_e121647121704_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd121643121699_))))
                        (let ((_tl121645121709_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e121647121704_)))
                              (_hd121646121707_
                               (let ()
                                 (declare (not safe))
                                 (##car _e121647121704_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd121646121707_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd121646121707_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl121645121709_))
                                      (let ((_e121650121712_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl121645121709_))))
                                        (let ((_tl121648121717_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e121650121712_)))
                                              (_hd121649121715_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e121650121712_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl121648121717_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl121642121701_))
                                                  (let ((_e121653121720_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl121642121701_))))
                                                    (let ((_tl121651121725_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e121653121720_)))
                                                          (_hd121652121723_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e121653121720_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd121652121723_))
                                                          (let ((_e121656121728_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd121652121723_))))
                    (let ((_tl121654121733_
                           (let ()
                             (declare (not safe))
                             (##cdr _e121656121728_)))
                          (_hd121655121731_
                           (let ()
                             (declare (not safe))
                             (##car _e121656121728_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd121655121731_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd121655121731_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl121654121733_))
                                  (let ((_e121659121736_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl121654121733_))))
                                    (let ((_tl121657121741_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e121659121736_)))
                                          (_hd121658121739_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e121659121736_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl121657121741_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl121651121725_))
                                              (let ((_e121662121744_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl121651121725_))))
                                                (let ((_tl121660121749_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e121662121744_)))
                                                      (_hd121661121747_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e121662121744_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl121660121749_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl121636121685_))
                                                          (___kont126584126585_
                                                           _hd121658121739_
                                                           _hd121649121715_
                                                           _hd121549121928_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g121543121667_)))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g121543121667_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g121543121667_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g121543121667_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g121543121667_)))
                              (let () (declare (not safe)) (_g121543121667_)))
                          (let () (declare (not safe)) (_g121543121667_)))))
                  (let () (declare (not safe)) (_g121543121667_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g121543121667_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g121543121667_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g121543121667_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g121543121667_)))
                              (let ()
                                (declare (not safe))
                                (_g121543121667_)))))
                      (let () (declare (not safe)) (_g121543121667_)))))
              (let () (declare (not safe)) (_g121543121667_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g121543121667_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g121543121667_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g121543121667_)))))
                              (let ()
                                (declare (not safe))
                                (_g121543121667_))))))
                  (let () (declare (not safe)) (_g121543121667_))))))))
    (define gxc#lambda-form-arity
      (lambda (_form121343_)
        (let* ((_g121345121359_
                (lambda (_g121346121356_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g121346121356_))))
               (_g121344121536_
                (lambda (_g121346121362_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g121346121362_))
                      (let ((_e121351121364_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g121346121362_))))
                        (let ((_hd121350121367_
                               (let ()
                                 (declare (not safe))
                                 (##car _e121351121364_)))
                              (_tl121349121369_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e121351121364_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl121349121369_))
                              (let ((_e121354121372_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl121349121369_))))
                                (let ((_hd121353121375_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e121354121372_)))
                                      (_tl121352121377_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e121354121372_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl121352121377_))
                                      ((lambda (_L121380_ _L121381_)
                                         (let* ((___stx126694126695_ _L121381_)
                                                (_g121396121424_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx126694126695_)))))
                                           (let ((___kont126696126697_
                                                  (lambda (_L121515_)
                                                    (length (let ((__tmp127839
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g121525121528_ _g121526121530_)
                             (let ()
                               (declare (not safe))
                               (cons _g121525121528_ _g121526121530_)))))
                      (declare (not safe))
                      (foldr1 __tmp127839 '() _L121515_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont126700126701_
                                                  (lambda (_L121466_ _L121467_)
                                                    (let ((__tmp127840
                                                           (length (let ((__tmp127841
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g121478121481_ _g121479121483_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g121478121481_
                                            _g121479121483_)))))
                             (declare (not safe))
                             (foldr1 __tmp127841 '() _L121467_)))))
              (declare (not safe))
              (cons __tmp127840 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont126704126705_
                                                  (lambda (_L121429_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '())))))
                                             (let* ((___match126719126720_
                                                     (lambda (___splice126702126703_
                                                              _target121410121442_
                                                              _tl121412121444_)
                                                       (letrec ((_loop121413121447_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd121411121450_ _arg121417121452_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd121411121450_))
                               (let ((_e121414121455_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd121411121450_))))
                                 (let ((_lp-tl121416121460_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e121414121455_)))
                                       (_lp-hd121415121458_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e121414121455_))))
                                   (let ((__tmp127842
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd121415121458_
                                                  _arg121417121452_))))
                                     (declare (not safe))
                                     (_loop121413121447_
                                      _lp-tl121416121460_
                                      __tmp127842))))
                               (let ((_arg121418121463_
                                      (reverse _arg121417121452_)))
                                 (___kont126700126701_
                                  _tl121412121444_
                                  _arg121418121463_))))))
                 (let ()
                   (declare (not safe))
                   (_loop121413121447_ _target121410121442_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match126713126714_
                                                     (lambda (___splice126698126699_
                                                              _target121399121491_
                                                              _tl121401121493_)
                                                       (letrec ((_loop121402121496_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd121400121499_ _arg121406121501_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd121400121499_))
                               (let ((_e121403121504_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd121400121499_))))
                                 (let ((_lp-tl121405121509_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e121403121504_)))
                                       (_lp-hd121404121507_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e121403121504_))))
                                   (let ((__tmp127843
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd121404121507_
                                                  _arg121406121501_))))
                                     (declare (not safe))
                                     (_loop121402121496_
                                      _lp-tl121405121509_
                                      __tmp127843))))
                               (let ((_arg121407121512_
                                      (reverse _arg121406121501_)))
                                 (___kont126696126697_ _arg121407121512_))))))
                 (let ()
                   (declare (not safe))
                   (_loop121402121496_ _target121399121491_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair/null?
                                                      ___stx126694126695_))
                                                   (let ((___splice126698126699_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-split-splice
                                                             ___stx126694126695_
                                                             '0))))
                                                     (let ((_tl121401121493_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice126698126699_
                                                               '1)))
                                                           (_target121399121491_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice126698126699_
                                                               '0))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl121401121493_))
                                                           (___match126713126714_
                                                            ___splice126698126699_
                                                            _target121399121491_
                                                            _tl121401121493_)
                                                           (___match126719126720_
                                                            ___splice126698126699_
                                                            _target121399121491_
                                                            _tl121401121493_))))
                                                   (___kont126704126705_
                                                    ___stx126694126695_))))))
                                       _hd121353121375_
                                       _hd121350121367_)
                                      (let ()
                                        (declare (not safe))
                                        (_g121345121359_ _g121346121362_)))))
                              (let ()
                                (declare (not safe))
                                (_g121345121359_ _g121346121362_)))))
                      (let ()
                        (declare (not safe))
                        (_g121345121359_ _g121346121362_))))))
          (declare (not safe))
          (_g121344121536_ _form121343_))))
    (define gxc#lambda-expr?
      (lambda (_expr121296_)
        (let* ((___stx126722126723_ _expr121296_)
               (_g121299121309_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126722126723_)))))
          (let ((___kont126724126725_ (lambda (_L121329_) '#t))
                (___kont126726126727_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx126722126723_))
                (let ((_e121304121321_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx126722126723_))))
                  (let ((_tl121302121326_
                         (let () (declare (not safe)) (##cdr _e121304121321_)))
                        (_hd121303121324_
                         (let ()
                           (declare (not safe))
                           (##car _e121304121321_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd121303121324_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#lambda _hd121303121324_))
                            (___kont126724126725_ _tl121302121326_)
                            (___kont126726126727_))
                        (___kont126726126727_))))
                (___kont126726126727_))))))
    (define gxc#case-lambda-expr?
      (lambda (_expr121249_)
        (let* ((___stx126740126741_ _expr121249_)
               (_g121252121262_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126740126741_)))))
          (let ((___kont126742126743_ (lambda (_L121282_) '#t))
                (___kont126744126745_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx126740126741_))
                (let ((_e121257121274_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx126740126741_))))
                  (let ((_tl121255121279_
                         (let () (declare (not safe)) (##cdr _e121257121274_)))
                        (_hd121256121277_
                         (let ()
                           (declare (not safe))
                           (##car _e121257121274_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd121256121277_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#case-lambda _hd121256121277_))
                            (___kont126742126743_ _tl121255121279_)
                            (___kont126744126745_))
                        (___kont126744126745_))))
                (___kont126744126745_))))))
    (define gxc#opt-lambda-expr?
      (lambda (_expr121118_)
        (let* ((___stx126758126759_ _expr121118_)
               (_g121121121151_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126758126759_)))))
          (let ((___kont126760126761_
                 (lambda (_L121219_ _L121220_ _L121221_)
                   (if (let () (declare (not safe)) (gx#identifier? _L121221_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#lambda-expr? _L121220_))
                           (let ()
                             (declare (not safe))
                             (gxc#case-lambda-expr? _L121219_))
                           '#f)
                       '#f)))
                (___kont126762126763_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx126758126759_))
                (let ((_e121128121163_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx126758126759_))))
                  (let ((_tl121126121168_
                         (let () (declare (not safe)) (##cdr _e121128121163_)))
                        (_hd121127121166_
                         (let ()
                           (declare (not safe))
                           (##car _e121128121163_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd121127121166_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd121127121166_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl121126121168_))
                                (let ((_e121131121171_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl121126121168_))))
                                  (let ((_tl121129121176_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121131121171_)))
                                        (_hd121130121174_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121131121171_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd121130121174_))
                                        (let ((_e121134121179_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd121130121174_))))
                                          (let ((_tl121132121184_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e121134121179_)))
                                                (_hd121133121182_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e121134121179_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd121133121182_))
                                                (let ((_e121137121187_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd121133121182_))))
                                                  (let ((_tl121135121192_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121137121187_)))
                                                        (_hd121136121190_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121137121187_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd121136121190_))
                                                        (let ((_e121140121195_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd121136121190_))))
                  (let ((_tl121138121200_
                         (let () (declare (not safe)) (##cdr _e121140121195_)))
                        (_hd121139121198_
                         (let ()
                           (declare (not safe))
                           (##car _e121140121195_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl121138121200_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121135121192_))
                            (let ((_e121143121203_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121135121192_))))
                              (let ((_tl121141121208_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121143121203_)))
                                    (_hd121142121206_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121143121203_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl121141121208_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl121132121184_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl121129121176_))
                                            (let ((_e121146121211_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl121129121176_))))
                                              (let ((_tl121144121216_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e121146121211_)))
                                                    (_hd121145121214_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e121146121211_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl121144121216_))
                                                    (___kont126760126761_
                                                     _hd121145121214_
                                                     _hd121142121206_
                                                     _hd121139121198_)
                                                    (___kont126762126763_))))
                                            (___kont126762126763_))
                                        (___kont126762126763_))
                                    (___kont126762126763_))))
                            (___kont126762126763_))
                        (___kont126762126763_))))
                (___kont126762126763_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont126762126763_))))
                                        (___kont126762126763_))))
                                (___kont126762126763_))
                            (___kont126762126763_))
                        (___kont126762126763_))))
                (___kont126762126763_))))))
    (define gxc#kw-lambda-expr?
      (lambda (_expr120443_)
        (let* ((___stx126820126821_ _expr120443_)
               (_g120446120604_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126820126821_)))))
          (let ((___kont126822126823_
                 (lambda (_L120992_
                          _L120993_
                          _L120994_
                          _L120995_
                          _L120996_
                          _L120997_
                          _L120998_
                          _L120999_
                          _L121000_
                          _L121001_
                          _L121002_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#runtime-identifier=? _L120999_ 'apply))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L120995_ 'apply))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#runtime-identifier=?
                                  _L120994_
                                  'keyword-dispatch))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L121002_
                                      _L120993_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L121001_
                                          _L120998_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L120996_
                                              _L120992_))
                                           (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L121000_
                                              _L120997_))
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)))
                (___kont126824126825_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx126820126821_))
                (let ((_e120461120616_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx126820126821_))))
                  (let ((_tl120459120621_
                         (let () (declare (not safe)) (##cdr _e120461120616_)))
                        (_hd120460120619_
                         (let ()
                           (declare (not safe))
                           (##car _e120461120616_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd120460120619_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd120460120619_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl120459120621_))
                                (let ((_e120464120624_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl120459120621_))))
                                  (let ((_tl120462120629_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e120464120624_)))
                                        (_hd120463120627_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e120464120624_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd120463120627_))
                                        (let ((_e120467120632_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd120463120627_))))
                                          (let ((_tl120465120637_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e120467120632_)))
                                                (_hd120466120635_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e120467120632_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd120466120635_))
                                                (let ((_e120470120640_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd120466120635_))))
                                                  (let ((_tl120468120645_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120470120640_)))
                                                        (_hd120469120643_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120470120640_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd120469120643_))
                                                        (let ((_e120473120648_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd120469120643_))))
                  (let ((_tl120471120653_
                         (let () (declare (not safe)) (##cdr _e120473120648_)))
                        (_hd120472120651_
                         (let ()
                           (declare (not safe))
                           (##car _e120473120648_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl120471120653_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl120468120645_))
                            (let ((_e120476120656_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl120468120645_))))
                              (let ((_tl120474120661_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e120476120656_)))
                                    (_hd120475120659_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e120476120656_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd120475120659_))
                                    (let ((_e120479120664_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd120475120659_))))
                                      (let ((_tl120477120669_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e120479120664_)))
                                            (_hd120478120667_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e120479120664_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd120478120667_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#let-values
                                                   _hd120478120667_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl120477120669_))
                                                    (let ((_e120482120672_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl120477120669_))))
                                                      (let ((_tl120480120677_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e120482120672_)))
                    (_hd120481120675_
                     (let () (declare (not safe)) (##car _e120482120672_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd120481120675_))
                    (let ((_e120485120680_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd120481120675_))))
                      (let ((_tl120483120685_
                             (let ()
                               (declare (not safe))
                               (##cdr _e120485120680_)))
                            (_hd120484120683_
                             (let ()
                               (declare (not safe))
                               (##car _e120485120680_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd120484120683_))
                            (let ((_e120488120688_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd120484120683_))))
                              (let ((_tl120486120693_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e120488120688_)))
                                    (_hd120487120691_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e120488120688_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd120487120691_))
                                    (let ((_e120491120696_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd120487120691_))))
                                      (let ((_tl120489120701_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e120491120696_)))
                                            (_hd120490120699_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e120491120696_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl120489120701_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl120486120693_))
                                                (let ((_e120494120704_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl120486120693_))))
                                                  (let ((_tl120492120709_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120494120704_)))
                                                        (_hd120493120707_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120494120704_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl120492120709_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl120483120685_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl120480120677_))
                        (let ((_e120497120712_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl120480120677_))))
                          (let ((_tl120495120717_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e120497120712_)))
                                (_hd120496120715_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e120497120712_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd120496120715_))
                                (let ((_e120500120720_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd120496120715_))))
                                  (let ((_tl120498120725_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e120500120720_)))
                                        (_hd120499120723_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e120500120720_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd120499120723_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#lambda
                                               _hd120499120723_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl120498120725_))
                                                (let ((_e120503120728_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl120498120725_))))
                                                  (let ((_tl120501120733_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120503120728_)))
                                                        (_hd120502120731_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120503120728_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd120502120731_))
                                                        (let ((_e120506120736_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd120502120731_))))
                  (let ((_tl120504120741_
                         (let () (declare (not safe)) (##cdr _e120506120736_)))
                        (_hd120505120739_
                         (let ()
                           (declare (not safe))
                           (##car _e120506120736_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl120501120733_))
                        (let ((_e120509120744_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl120501120733_))))
                          (let ((_tl120507120749_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e120509120744_)))
                                (_hd120508120747_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e120509120744_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd120508120747_))
                                (let ((_e120512120752_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd120508120747_))))
                                  (let ((_tl120510120757_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e120512120752_)))
                                        (_hd120511120755_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e120512120752_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd120511120755_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#call
                                               _hd120511120755_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl120510120757_))
                                                (let ((_e120515120760_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl120510120757_))))
                                                  (let ((_tl120513120765_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120515120760_)))
                                                        (_hd120514120763_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120515120760_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd120514120763_))
                                                        (let ((_e120518120768_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd120514120763_))))
                  (let ((_tl120516120773_
                         (let () (declare (not safe)) (##cdr _e120518120768_)))
                        (_hd120517120771_
                         (let ()
                           (declare (not safe))
                           (##car _e120518120768_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd120517120771_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd120517120771_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl120516120773_))
                                (let ((_e120521120776_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl120516120773_))))
                                  (let ((_tl120519120781_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e120521120776_)))
                                        (_hd120520120779_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e120521120776_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl120519120781_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl120513120765_))
                                            (let ((_e120524120784_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl120513120765_))))
                                              (let ((_tl120522120789_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e120524120784_)))
                                                    (_hd120523120787_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e120524120784_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd120523120787_))
                                                    (let ((_e120527120792_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd120523120787_))))
                                                      (let ((_tl120525120797_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e120527120792_)))
                    (_hd120526120795_
                     (let () (declare (not safe)) (##car _e120527120792_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd120526120795_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd120526120795_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl120525120797_))
                            (let ((_e120530120800_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl120525120797_))))
                              (let ((_tl120528120805_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e120530120800_)))
                                    (_hd120529120803_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e120530120800_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl120528120805_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl120522120789_))
                                        (let ((_e120533120808_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl120522120789_))))
                                          (let ((_tl120531120813_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e120533120808_)))
                                                (_hd120532120811_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e120533120808_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd120532120811_))
                                                (let ((_e120536120816_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd120532120811_))))
                                                  (let ((_tl120534120821_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120536120816_)))
                                                        (_hd120535120819_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120536120816_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd120535120819_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd120535120819_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl120534120821_))
                        (let ((_e120539120824_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl120534120821_))))
                          (let ((_tl120537120829_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e120539120824_)))
                                (_hd120538120827_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e120539120824_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl120537120829_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl120507120749_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl120495120717_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl120474120661_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl120465120637_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl120462120629_))
                                                    (let ((_e120542120832_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl120462120629_))))
                                                      (let ((_tl120540120837_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e120542120832_)))
                    (_hd120541120835_
                     (let () (declare (not safe)) (##car _e120542120832_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd120541120835_))
                    (let ((_e120545120840_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd120541120835_))))
                      (let ((_tl120543120845_
                             (let ()
                               (declare (not safe))
                               (##cdr _e120545120840_)))
                            (_hd120544120843_
                             (let ()
                               (declare (not safe))
                               (##car _e120545120840_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd120544120843_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#lambda _hd120544120843_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl120543120845_))
                                    (let ((_e120548120848_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl120543120845_))))
                                      (let ((_tl120546120853_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e120548120848_)))
                                            (_hd120547120851_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e120548120848_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl120546120853_))
                                            (let ((_e120551120856_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl120546120853_))))
                                              (let ((_tl120549120861_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e120551120856_)))
                                                    (_hd120550120859_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e120551120856_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd120550120859_))
                                                    (let ((_e120554120864_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd120550120859_))))
                                                      (let ((_tl120552120869_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e120554120864_)))
                    (_hd120553120867_
                     (let () (declare (not safe)) (##car _e120554120864_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd120553120867_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd120553120867_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl120552120869_))
                            (let ((_e120557120872_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl120552120869_))))
                              (let ((_tl120555120877_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e120557120872_)))
                                    (_hd120556120875_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e120557120872_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd120556120875_))
                                    (let ((_e120560120880_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd120556120875_))))
                                      (let ((_tl120558120885_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e120560120880_)))
                                            (_hd120559120883_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e120560120880_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd120559120883_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd120559120883_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl120558120885_))
                                                    (let ((_e120563120888_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl120558120885_))))
                                                      (let ((_tl120561120893_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e120563120888_)))
                    (_hd120562120891_
                     (let () (declare (not safe)) (##car _e120563120888_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl120561120893_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl120555120877_))
                        (let ((_e120566120896_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl120555120877_))))
                          (let ((_tl120564120901_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e120566120896_)))
                                (_hd120565120899_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e120566120896_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd120565120899_))
                                (let ((_e120569120904_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd120565120899_))))
                                  (let ((_tl120567120909_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e120569120904_)))
                                        (_hd120568120907_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e120569120904_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd120568120907_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd120568120907_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl120567120909_))
                                                (let ((_e120572120912_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl120567120909_))))
                                                  (let ((_tl120570120917_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120572120912_)))
                                                        (_hd120571120915_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120572120912_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl120570120917_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl120564120901_))
                                                            (let ((_e120575120920_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl120564120901_))))
                      (let ((_tl120573120925_
                             (let ()
                               (declare (not safe))
                               (##cdr _e120575120920_)))
                            (_hd120574120923_
                             (let ()
                               (declare (not safe))
                               (##car _e120575120920_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd120574120923_))
                            (let ((_e120578120928_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd120574120923_))))
                              (let ((_tl120576120933_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e120578120928_)))
                                    (_hd120577120931_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e120578120928_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd120577120931_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd120577120931_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl120576120933_))
                                            (let ((_e120581120936_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl120576120933_))))
                                              (let ((_tl120579120941_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e120581120936_)))
                                                    (_hd120580120939_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e120581120936_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl120579120941_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl120573120925_))
                                                        (let ((_e120584120944_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl120573120925_))))
                  (let ((_tl120582120949_
                         (let () (declare (not safe)) (##cdr _e120584120944_)))
                        (_hd120583120947_
                         (let ()
                           (declare (not safe))
                           (##car _e120584120944_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd120583120947_))
                        (let ((_e120587120952_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd120583120947_))))
                          (let ((_tl120585120957_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e120587120952_)))
                                (_hd120586120955_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e120587120952_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd120586120955_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd120586120955_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl120585120957_))
                                        (let ((_e120590120960_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl120585120957_))))
                                          (let ((_tl120588120965_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e120590120960_)))
                                                (_hd120589120963_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e120590120960_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl120588120965_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl120582120949_))
                                                    (let ((_e120593120968_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl120582120949_))))
                                                      (let ((_tl120591120973_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e120593120968_)))
                    (_hd120592120971_
                     (let () (declare (not safe)) (##car _e120593120968_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd120592120971_))
                    (let ((_e120596120976_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd120592120971_))))
                      (let ((_tl120594120981_
                             (let ()
                               (declare (not safe))
                               (##cdr _e120596120976_)))
                            (_hd120595120979_
                             (let ()
                               (declare (not safe))
                               (##car _e120596120976_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd120595120979_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#ref _hd120595120979_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl120594120981_))
                                    (let ((_e120599120984_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl120594120981_))))
                                      (let ((_tl120597120989_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e120599120984_)))
                                            (_hd120598120987_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e120599120984_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl120597120989_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl120591120973_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl120549120861_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl120540120837_))
                                                        (___kont126822126823_
                                                         _hd120598120987_
                                                         _hd120589120963_
                                                         _hd120571120915_
                                                         _hd120562120891_
                                                         _hd120547120851_
                                                         _hd120538120827_
                                                         _hd120529120803_
                                                         _hd120520120779_
                                                         _hd120505120739_
                                                         _hd120490120699_
                                                         _hd120472120651_)
                                                        (___kont126824126825_))
                                                    (___kont126824126825_))
                                                (___kont126824126825_))
                                            (___kont126824126825_))))
                                    (___kont126824126825_))
                                (___kont126824126825_))
                            (___kont126824126825_))))
                    (___kont126824126825_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont126824126825_))
                                                (___kont126824126825_))))
                                        (___kont126824126825_))
                                    (___kont126824126825_))
                                (___kont126824126825_))))
                        (___kont126824126825_))))
                (___kont126824126825_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont126824126825_))))
                                            (___kont126824126825_))
                                        (___kont126824126825_))
                                    (___kont126824126825_))))
                            (___kont126824126825_))))
                    (___kont126824126825_))
                (___kont126824126825_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont126824126825_))
                                            (___kont126824126825_))
                                        (___kont126824126825_))))
                                (___kont126824126825_))))
                        (___kont126824126825_))
                    (___kont126824126825_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont126824126825_))
                                                (___kont126824126825_))
                                            (___kont126824126825_))))
                                    (___kont126824126825_))))
                            (___kont126824126825_))
                        (___kont126824126825_))
                    (___kont126824126825_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont126824126825_))))
                                            (___kont126824126825_))))
                                    (___kont126824126825_))
                                (___kont126824126825_))
                            (___kont126824126825_))))
                    (___kont126824126825_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont126824126825_))
                                                (___kont126824126825_))
                                            (___kont126824126825_))
                                        (___kont126824126825_))
                                    (___kont126824126825_))
                                (___kont126824126825_))))
                        (___kont126824126825_))
                    (___kont126824126825_))
                (___kont126824126825_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont126824126825_))))
                                        (___kont126824126825_))
                                    (___kont126824126825_))))
                            (___kont126824126825_))
                        (___kont126824126825_))
                    (___kont126824126825_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont126824126825_))))
                                            (___kont126824126825_))
                                        (___kont126824126825_))))
                                (___kont126824126825_))
                            (___kont126824126825_))
                        (___kont126824126825_))))
                (___kont126824126825_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont126824126825_))
                                            (___kont126824126825_))
                                        (___kont126824126825_))))
                                (___kont126824126825_))))
                        (___kont126824126825_))))
                (___kont126824126825_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont126824126825_))
                                            (___kont126824126825_))
                                        (___kont126824126825_))))
                                (___kont126824126825_))))
                        (___kont126824126825_))
                    (___kont126824126825_))
                (___kont126824126825_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont126824126825_))
                                            (___kont126824126825_))))
                                    (___kont126824126825_))))
                            (___kont126824126825_))))
                    (___kont126824126825_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont126824126825_))
                                                (___kont126824126825_))
                                            (___kont126824126825_))))
                                    (___kont126824126825_))))
                            (___kont126824126825_))
                        (___kont126824126825_))))
                (___kont126824126825_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont126824126825_))))
                                        (___kont126824126825_))))
                                (___kont126824126825_))
                            (___kont126824126825_))
                        (___kont126824126825_))))
                (___kont126824126825_))))))
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx120185_ _id120186_ _clauses120187_ _gensym?120188_)
        (let _lp120190_ ((_rest120192_ _clauses120187_)
                         (_ids120193_ '())
                         (_impls120194_ '())
                         (_clauses120195_ '()))
          (let* ((_rest120196120204_ _rest120192_)
                 (_else120198120212_
                  (lambda ()
                    (values (reverse _ids120193_)
                            (reverse _impls120194_)
                            (reverse _clauses120195_))))
                 (_K120200120417_
                  (lambda (_rest120215_ _clause120216_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#dispatch-lambda-form? _clause120216_))
                        (let ((__tmp127899
                               (let ()
                                 (declare (not safe))
                                 (cons _clause120216_ _clauses120195_))))
                          (declare (not safe))
                          (_lp120190_
                           _rest120215_
                           _ids120193_
                           _impls120194_
                           __tmp127899))
                        (let* ((_g120218120229_
                                (lambda (_g120219120226_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g120219120226_))))
                               (_g120217120414_
                                (lambda (_g120219120232_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _g120219120232_))
                                      (let ((_e120224120234_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _g120219120232_))))
                                        (let ((_hd120223120237_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e120224120234_)))
                                              (_tl120222120239_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e120224120234_))))
                                          ((lambda (_L120242_ _L120243_)
                                             (let* ((_id120260_
                                                     (let ((__tmp127846
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _id120186_)))
                                                           (__tmp127845
                                                            (length _clauses120195_))
                                                           (__tmp127844
                                                            (if _gensym?120188_
                                                                (gensym '__)
                                                                '"")))
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        __tmp127846
                                                        '"__"
                                                        __tmp127845
                                                        __tmp127844)))
                                                    (_id120262_
                                                     (let ((__tmp127847
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-source
                                                               _stx120185_))))
                                                       (declare (not safe))
                                                       (gx#core-quote-syntax__1
                                                        _id120260_
                                                        __tmp127847)))
                                                    (_impl120264_
                                                     (let ((__tmp127848
                                                            (let ((__tmp127850
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '%#lambda)))
                          (__tmp127849
                           (let ()
                             (declare (not safe))
                             (cons _L120243_ _L120242_))))
                      (declare (not safe))
                      (cons __tmp127850 __tmp127849))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp127848 _stx120185_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause120411_
                                                     (let* ((___stx127204127205_
                                                             _L120243_)
                                                            (_g120268120296_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx127204127205_)))))
               (let ((___kont127206127207_
                      (lambda (_L120390_)
                        (let ((__tmp127851
                               (let ((__tmp127852
                                      (let ((__tmp127853
                                             (let ((__tmp127854
                                                    (let ((__tmp127860
                                                           (let ((__tmp127861
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id120262_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp127861)))
                  (__tmp127855
                   (let ((__tmp127856
                          (lambda (_g120400120403_ _g120401120405_)
                            (let ((__tmp127857
                                   (let ((__tmp127859
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp127858
                                          (let ()
                                            (declare (not safe))
                                            (cons _g120400120403_ '()))))
                                     (declare (not safe))
                                     (cons __tmp127859 __tmp127858))))
                              (declare (not safe))
                              (cons __tmp127857 _g120401120405_)))))
                     (declare (not safe))
                     (foldr1 __tmp127856 '() _L120390_))))
              (declare (not safe))
              (cons __tmp127860 __tmp127855))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp127854))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp127853
                                         _stx120185_))))
                                 (declare (not safe))
                                 (cons __tmp127852 '()))))
                          (declare (not safe))
                          (cons _L120243_ __tmp127851))))
                     (___kont127210127211_
                      (lambda (_L120341_ _L120342_)
                        (let ((__tmp127862
                               (let ((__tmp127863
                                      (let ((__tmp127864
                                             (let ((__tmp127865
                                                    (let ((__tmp127879
                                                           (let ((__tmp127880
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp127880)))
                  (__tmp127866
                   (let ((__tmp127877
                          (let ((__tmp127878
                                 (let ()
                                   (declare (not safe))
                                   (cons _id120262_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp127878)))
                         (__tmp127867
                          (let ((__tmp127873
                                 (let ((__tmp127874
                                        (let ((__tmp127876
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)))
                                              (__tmp127875
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L120341_ '()))))
                                          (declare (not safe))
                                          (cons __tmp127876 __tmp127875))))
                                   (declare (not safe))
                                   (cons __tmp127874 '())))
                                (__tmp127868
                                 (let ((__tmp127869
                                        (lambda (_g120353120356_
                                                 _g120354120358_)
                                          (let ((__tmp127870
                                                 (let ((__tmp127872
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)))
                                                       (__tmp127871
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g120353120356_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp127872
                                                         __tmp127871))))
                                            (declare (not safe))
                                            (cons __tmp127870
                                                  _g120354120358_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp127869 '() _L120342_))))
                            (declare (not safe))
                            (foldr1 cons __tmp127873 __tmp127868))))
                     (declare (not safe))
                     (cons __tmp127877 __tmp127867))))
              (declare (not safe))
              (cons __tmp127879 __tmp127866))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp127865))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp127864
                                         _stx120185_))))
                                 (declare (not safe))
                                 (cons __tmp127863 '()))))
                          (declare (not safe))
                          (cons _L120243_ __tmp127862))))
                     (___kont127214127215_
                      (lambda (_L120301_)
                        (let ((__tmp127881
                               (let ((__tmp127882
                                      (let ((__tmp127883
                                             (let ((__tmp127884
                                                    (let ((__tmp127892
                                                           (let ((__tmp127893
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp127893)))
                  (__tmp127885
                   (let ((__tmp127890
                          (let ((__tmp127891
                                 (let ()
                                   (declare (not safe))
                                   (cons _id120262_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp127891)))
                         (__tmp127886
                          (let ((__tmp127887
                                 (let ((__tmp127889
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '%#ref)))
                                       (__tmp127888
                                        (let ()
                                          (declare (not safe))
                                          (cons _L120301_ '()))))
                                   (declare (not safe))
                                   (cons __tmp127889 __tmp127888))))
                            (declare (not safe))
                            (cons __tmp127887 '()))))
                     (declare (not safe))
                     (cons __tmp127890 __tmp127886))))
              (declare (not safe))
              (cons __tmp127892 __tmp127885))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp127884))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp127883
                                         _stx120185_))))
                                 (declare (not safe))
                                 (cons __tmp127882 '()))))
                          (declare (not safe))
                          (cons _L120243_ __tmp127881)))))
                 (let* ((___match127229127230_
                         (lambda (___splice127212127213_
                                  _target120282120317_
                                  _tl120284120319_)
                           (letrec ((_loop120285120322_
                                     (lambda (_hd120283120325_
                                              _arg120289120327_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd120283120325_))
                                           (let ((_e120286120330_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd120283120325_))))
                                             (let ((_lp-tl120288120335_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e120286120330_)))
                                                   (_lp-hd120287120333_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e120286120330_))))
                                               (let ((__tmp127894
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd120287120333_
                                                              _arg120289120327_))))
                                                 (declare (not safe))
                                                 (_loop120285120322_
                                                  _lp-tl120288120335_
                                                  __tmp127894))))
                                           (let ((_arg120290120338_
                                                  (reverse _arg120289120327_)))
                                             (___kont127210127211_
                                              _tl120284120319_
                                              _arg120290120338_))))))
                             (let ()
                               (declare (not safe))
                               (_loop120285120322_
                                _target120282120317_
                                '())))))
                        (___match127223127224_
                         (lambda (___splice127208127209_
                                  _target120271120366_
                                  _tl120273120368_)
                           (letrec ((_loop120274120371_
                                     (lambda (_hd120272120374_
                                              _arg120278120376_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd120272120374_))
                                           (let ((_e120275120379_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd120272120374_))))
                                             (let ((_lp-tl120277120384_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e120275120379_)))
                                                   (_lp-hd120276120382_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e120275120379_))))
                                               (let ((__tmp127895
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd120276120382_
                                                              _arg120278120376_))))
                                                 (declare (not safe))
                                                 (_loop120274120371_
                                                  _lp-tl120277120384_
                                                  __tmp127895))))
                                           (let ((_arg120279120387_
                                                  (reverse _arg120278120376_)))
                                             (___kont127206127207_
                                              _arg120279120387_))))))
                             (let ()
                               (declare (not safe))
                               (_loop120274120371_
                                _target120271120366_
                                '()))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? ___stx127204127205_))
                       (let ((___splice127208127209_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 ___stx127204127205_
                                 '0))))
                         (let ((_tl120273120368_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice127208127209_ '1)))
                               (_target120271120366_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice127208127209_ '0))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl120273120368_))
                               (___match127223127224_
                                ___splice127208127209_
                                _target120271120366_
                                _tl120273120368_)
                               (___match127229127230_
                                ___splice127208127209_
                                _target120271120366_
                                _tl120273120368_))))
                       (___kont127214127215_ ___stx127204127205_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp127898
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _id120262_
                                                              _ids120193_)))
                                                     (__tmp127897
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _impl120264_
                                                              _impls120194_)))
                                                     (__tmp127896
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _clause120411_
                                                              _clauses120195_))))
                                                 (declare (not safe))
                                                 (_lp120190_
                                                  _rest120215_
                                                  __tmp127898
                                                  __tmp127897
                                                  __tmp127896))))
                                           _tl120222120239_
                                           _hd120223120237_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g120218120229_ _g120219120232_))))))
                          (declare (not safe))
                          (_g120217120414_ _clause120216_))))))
            (if (let () (declare (not safe)) (##pair? _rest120196120204_))
                (let ((_hd120201120420_
                       (let ()
                         (declare (not safe))
                         (##car _rest120196120204_)))
                      (_tl120202120422_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest120196120204_))))
                  (let* ((_clause120425_ _hd120201120420_)
                         (_rest120427_ _tl120202120422_))
                    (declare (not safe))
                    (_K120200120417_ _rest120427_ _clause120425_)))
                (let () (declare (not safe)) (_else120198120212_)))))))
    (define gxc#lift-case-lambda-clauses__0
      (lambda (_stx120432_ _id120433_ _clauses120434_)
        (let ((_gensym?120436_ '#f))
          (declare (not safe))
          (gxc#lift-case-lambda-clauses__%
           _stx120432_
           _id120433_
           _clauses120434_
           _gensym?120436_))))
    (define gxc#lift-case-lambda-clauses
      (lambda _g127901_
        (let ((_g127900_ (let () (declare (not safe)) (##length _g127901_))))
          (cond ((let () (declare (not safe)) (##fx= _g127900_ 3))
                 (apply (lambda (_stx120432_ _id120433_ _clauses120434_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__0
                             _stx120432_
                             _id120433_
                             _clauses120434_)))
                        _g127901_))
                ((let () (declare (not safe)) (##fx= _g127900_ 4))
                 (apply (lambda (_stx120438_
                                 _id120439_
                                 _clauses120440_
                                 _gensym?120441_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__%
                             _stx120438_
                             _id120439_
                             _clauses120440_
                             _gensym?120441_)))
                        _g127901_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#lift-case-lambda-clauses
                  _g127901_))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_stx119462_)
        (letrec ((_case-lambda-clause-def119464_
                  (lambda (_id120181_ _impl120182_)
                    (let ((__tmp127902
                           (let ((__tmp127903
                                  (let ((__tmp127906
                                         (let ()
                                           (declare (not safe))
                                           (cons _id120181_ '())))
                                        (__tmp127904
                                         (let ((__tmp127905
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _impl120182_))))
                                           (declare (not safe))
                                           (cons __tmp127905 '()))))
                                    (declare (not safe))
                                    (cons __tmp127906 __tmp127904))))
                             (declare (not safe))
                             (cons '%#define-values __tmp127903))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp127902 _stx119462_))))
                 (_opt-lambda-dispatch-name119465_
                  (lambda (_id120177_)
                    (if (uninterned-symbol? _id120177_)
                        (let ((_str120179_ (symbol->string _id120177_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"opt-lambda" _str120179_))
                              '"%"
                              _id120177_))
                        _id120177_)))
                 (_kw-lambda-dispatch-name119466_
                  (lambda (_id120172_ _name120173_)
                    (if (uninterned-symbol? _id120172_)
                        (let ((_str120175_ (symbol->string _id120172_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"kw-lambda" _str120175_))
                              _name120173_
                              _id120172_))
                        _id120172_))))
          (let* ((___stx127252127253_ _stx119462_)
                 (_g119471119530_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx127252127253_)))))
            (let ((___kont127254127255_
                   (lambda (_L120081_ _L120082_)
                     (let* ((___stx127232127233_ _L120081_)
                            (_g120099120113_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx127232127233_)))))
                       (let ((___kont127234127235_
                              (lambda (_L120157_) _stx119462_))
                             (___kont127236127237_
                              (lambda (_L120126_)
                                (let ((_g127907_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#lift-case-lambda-clauses__0
                                          _stx119462_
                                          _L120082_
                                          _L120126_))))
                                  (begin
                                    (let ((_g127908_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g127907_)
                                                 (##vector-length _g127907_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g127908_ 3)))
                                          (error "Context expects 3 values"
                                                 _g127908_)))
                                    (let ((_ids120136_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g127907_ 0)))
                                          (_impls120137_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g127907_ 1)))
                                          (_clauses120138_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g127907_ 2))))
                                      (let* ((_g127909_
                                              (for-each
                                               gx#core-bind-runtime!
                                               _ids120136_))
                                             (_defs120141_
                                              (map _case-lambda-clause-def119464_
                                                   _ids120136_
                                                   _impls120137_)))
                                        (let ((__tmp127911
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L120082_)))
                                              (__tmp127910
                                               (map gxc#identifier-symbol
                                                    _ids120136_)))
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"lift case-lambda clauses "
                                           __tmp127911
                                           '" => "
                                           __tmp127910))
                                        (let ((__tmp127912
                                               (let ((__tmp127913
                                                      (let ((__tmp127914
                                                             (let ((__tmp127915
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp127916
                                   (let ((__tmp127917
                                          (let ((__tmp127922
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L120082_ '())))
                                                (__tmp127918
                                                 (let ((__tmp127919
                                                        (let ((__tmp127921
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '%#case-lambda _clauses120138_)))
                      (__tmp127920
                       (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp127921 __tmp127920))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp127919 '()))))
                                            (declare (not safe))
                                            (cons __tmp127922 __tmp127918))))
                                     (declare (not safe))
                                     (cons '%#define-values __tmp127917))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp127916
                               _stx119462_))))
                       (declare (not safe))
                       (cons __tmp127915 '()))))
                (declare (not safe))
                (foldr1 cons __tmp127914 _defs120141_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#begin __tmp127913))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp127912
                                           _stx119462_)))))))))
                         (let ((___match127243127244_
                                (lambda (_e120104120149_
                                         _hd120103120152_
                                         _tl120102120154_)
                                  (let ((_L120157_ _tl120102120154_))
                                    (if (let ()
                                          (declare (not safe))
                                          (andmap1 gxc#dispatch-lambda-form?
                                                   _L120157_))
                                        (___kont127234127235_ _L120157_)
                                        (___kont127236127237_
                                         _tl120102120154_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? ___stx127232127233_))
                               (let ((_e120104120149_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e ___stx127232127233_))))
                                 (let ((_tl120102120154_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e120104120149_)))
                                       (_hd120103120152_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e120104120149_))))
                                   (___match127243127244_
                                    _e120104120149_
                                    _hd120103120152_
                                    _tl120102120154_)))
                               (let ()
                                 (declare (not safe))
                                 (_g120099120113_))))))))
                  (___kont127256127257_
                   (lambda (_L119899_ _L119900_)
                     (let* ((_g119916119946_
                             (lambda (_g119917119943_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g119917119943_))))
                            (_g119915120041_
                             (lambda (_g119917119949_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g119917119949_))
                                   (let ((_e119923119951_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g119917119949_))))
                                     (let ((_hd119922119954_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e119923119951_)))
                                           (_tl119921119956_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e119923119951_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl119921119956_))
                                           (let ((_e119926119959_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl119921119956_))))
                                             (let ((_hd119925119962_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e119926119959_)))
                                                   (_tl119924119964_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e119926119959_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd119925119962_))
                                                   (let ((_e119929119967_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd119925119962_))))
                                                     (let ((_hd119928119970_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e119929119967_)))
                                                           (_tl119927119972_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e119929119967_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd119928119970_))
                                                           (let ((_e119932119975_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd119928119970_))))
                     (let ((_hd119931119978_
                            (let ()
                              (declare (not safe))
                              (##car _e119932119975_)))
                           (_tl119930119980_
                            (let ()
                              (declare (not safe))
                              (##cdr _e119932119975_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd119931119978_))
                           (let ((_e119935119983_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd119931119978_))))
                             (let ((_hd119934119986_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e119935119983_)))
                                   (_tl119933119988_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e119935119983_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl119933119988_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl119930119980_))
                                       (let ((_e119938119991_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl119930119980_))))
                                         (let ((_hd119937119994_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e119938119991_)))
                                               (_tl119936119996_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e119938119991_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl119936119996_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl119927119972_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl119924119964_))
                                                       (let ((_e119941119999_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl119924119964_))))
                 (let ((_hd119940120002_
                        (let () (declare (not safe)) (##car _e119941119999_)))
                       (_tl119939120004_
                        (let () (declare (not safe)) (##cdr _e119941119999_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl119939120004_))
                       ((lambda (_L120007_ _L120008_ _L120009_)
                          (let* ((_lambda-id120033_
                                  (let ((__tmp127925
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L119900_)))
                                        (__tmp127923
                                         (let ((__tmp127924
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L120009_))))
                                           (declare (not safe))
                                           (_opt-lambda-dispatch-name119465_
                                            __tmp127924))))
                                    (declare (not safe))
                                    (make-symbol__1
                                     __tmp127925
                                     '"__"
                                     __tmp127923)))
                                 (_lambda-id120035_
                                  (let ((__tmp127926
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-source _stx119462_))))
                                    (declare (not safe))
                                    (gx#core-quote-syntax__1
                                     _lambda-id120033_
                                     __tmp127926)))
                                 (_g127927_
                                  (let ()
                                    (declare (not safe))
                                    (gx#core-bind-runtime!__0
                                     _lambda-id120035_)))
                                 (_new-case-lambda-expr120038_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-expression-subst
                                     _L120007_
                                     _L120009_
                                     _lambda-id120035_))))
                            (let ((__tmp127929
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol _L119900_)))
                                  (__tmp127928
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol
                                      _lambda-id120035_))))
                              (declare (not safe))
                              (gxc#verbose
                               '"lift opt-lambda dispatch "
                               __tmp127929
                               '" => "
                               __tmp127928))
                            (let ((__tmp127930
                                   (let ((__tmp127931
                                          (let ((__tmp127939
                                                 (let ((__tmp127940
                                                        (let ((__tmp127941
                                                               (let ((__tmp127944
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _lambda-id120035_ '())))
                             (__tmp127942
                              (let ((__tmp127943
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L120008_))))
                                (declare (not safe))
                                (cons __tmp127943 '()))))
                         (declare (not safe))
                         (cons __tmp127944 __tmp127942))))
                  (declare (not safe))
                  (cons '%#define-values __tmp127941))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp127940
                                                    _stx119462_)))
                                                (__tmp127932
                                                 (let ((__tmp127933
                                                        (let ((__tmp127934
                                                               (let ((__tmp127935
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp127936
                                     (let ((__tmp127938
                                            (let ()
                                              (declare (not safe))
                                              (cons _L119900_ '())))
                                           (__tmp127937
                                            (let ()
                                              (declare (not safe))
                                              (cons _new-case-lambda-expr120038_
                                                    '()))))
                                       (declare (not safe))
                                       (cons __tmp127938 __tmp127937))))
                                (declare (not safe))
                                (cons '%#define-values __tmp127936))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp127935 _stx119462_))))
                  (declare (not safe))
                  (gxc#lift-top-lambda-define-values% __tmp127934))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp127933 '()))))
                                            (declare (not safe))
                                            (cons __tmp127939 __tmp127932))))
                                     (declare (not safe))
                                     (cons '%#begin __tmp127931))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp127930
                               _stx119462_))))
                        _hd119940120002_
                        _hd119937119994_
                        _hd119934119986_)
                       (let ()
                         (declare (not safe))
                         (_g119916119946_ _g119917119949_)))))
               (let () (declare (not safe)) (_g119916119946_ _g119917119949_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g119916119946_
                                                      _g119917119949_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g119916119946_
                                                  _g119917119949_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g119916119946_ _g119917119949_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g119916119946_ _g119917119949_)))))
                           (let ()
                             (declare (not safe))
                             (_g119916119946_ _g119917119949_)))))
                   (let ()
                     (declare (not safe))
                     (_g119916119946_ _g119917119949_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g119916119946_
                                                      _g119917119949_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g119916119946_
                                              _g119917119949_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g119916119946_ _g119917119949_))))))
                       (declare (not safe))
                       (_g119915120041_ _L119899_))))
                  (___kont127258127259_
                   (lambda (_L119613_ _L119614_)
                     (let* ((_g119630119683_
                             (lambda (_g119631119680_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g119631119680_))))
                            (_g119629119859_
                             (lambda (_g119631119686_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g119631119686_))
                                   (let ((_e119639119688_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g119631119686_))))
                                     (let ((_hd119638119691_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e119639119688_)))
                                           (_tl119637119693_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e119639119688_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl119637119693_))
                                           (let ((_e119642119696_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl119637119693_))))
                                             (let ((_hd119641119699_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e119642119696_)))
                                                   (_tl119640119701_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e119642119696_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd119641119699_))
                                                   (let ((_e119645119704_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd119641119699_))))
                                                     (let ((_hd119644119707_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e119645119704_)))
                                                           (_tl119643119709_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e119645119704_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd119644119707_))
                                                           (let ((_e119648119712_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd119644119707_))))
                     (let ((_hd119647119715_
                            (let ()
                              (declare (not safe))
                              (##car _e119648119712_)))
                           (_tl119646119717_
                            (let ()
                              (declare (not safe))
                              (##cdr _e119648119712_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd119647119715_))
                           (let ((_e119651119720_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd119647119715_))))
                             (let ((_hd119650119723_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e119651119720_)))
                                   (_tl119649119725_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e119651119720_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl119649119725_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl119646119717_))
                                       (let ((_e119654119728_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl119646119717_))))
                                         (let ((_hd119653119731_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e119654119728_)))
                                               (_tl119652119733_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e119654119728_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd119653119731_))
                                               (let ((_e119657119736_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd119653119731_))))
                                                 (let ((_hd119656119739_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e119657119736_)))
                                                       (_tl119655119741_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e119657119736_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl119655119741_))
                                                       (let ((_e119660119744_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl119655119741_))))
                 (let ((_hd119659119747_
                        (let () (declare (not safe)) (##car _e119660119744_)))
                       (_tl119658119749_
                        (let () (declare (not safe)) (##cdr _e119660119744_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _hd119659119747_))
                       (let ((_e119663119752_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _hd119659119747_))))
                         (let ((_hd119662119755_
                                (let ()
                                  (declare (not safe))
                                  (##car _e119663119752_)))
                               (_tl119661119757_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e119663119752_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd119662119755_))
                               (let ((_e119666119760_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd119662119755_))))
                                 (let ((_hd119665119763_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e119666119760_)))
                                       (_tl119664119765_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e119666119760_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd119665119763_))
                                       (let ((_e119669119768_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd119665119763_))))
                                         (let ((_hd119668119771_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e119669119768_)))
                                               (_tl119667119773_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e119669119768_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl119667119773_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl119664119765_))
                                                   (let ((_e119672119776_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl119664119765_))))
                                                     (let ((_hd119671119779_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e119672119776_)))
                                                           (_tl119670119781_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e119672119776_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl119670119781_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-null? _tl119661119757_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl119658119749_))
                           (let ((_e119675119784_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl119658119749_))))
                             (let ((_hd119674119787_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e119675119784_)))
                                   (_tl119673119789_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e119675119784_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl119673119789_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl119652119733_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl119643119709_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl119640119701_))
                                               (let ((_e119678119792_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl119640119701_))))
                                                 (let ((_hd119677119795_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e119678119792_)))
                                                       (_tl119676119797_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e119678119792_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl119676119797_))
                                                       ((lambda (_L119800_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L119801_
                         _L119802_
                         _L119803_
                         _L119804_)
                  (let* ((_get-kws-id119844_
                          (let ((__tmp127947
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L119614_)))
                                (__tmp127945
                                 (let ((__tmp127946
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L119804_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name119466_
                                    __tmp127946
                                    '"@"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp127947 '"__" __tmp127945)))
                         (_get-kws-id119846_
                          (let ((__tmp127948
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx119462_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _get-kws-id119844_
                             __tmp127948)))
                         (_main-id119848_
                          (let ((__tmp127951
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L119614_)))
                                (__tmp127949
                                 (let ((__tmp127950
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L119803_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name119466_
                                    __tmp127950
                                    '"%"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp127951 '"__" __tmp127949)))
                         (_main-id119850_
                          (let ((__tmp127952
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx119462_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _main-id119848_
                             __tmp127952)))
                         (_g127953_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _get-kws-id119846_)))
                         (_g127954_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _main-id119850_)))
                         (_new-kw-dispatch119854_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L119800_
                             _L119804_
                             _get-kws-id119846_)))
                         (_new-get-kws119856_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L119801_
                             _L119803_
                             _main-id119850_))))
                    (let ((__tmp127957
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L119614_)))
                          (__tmp127956
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _get-kws-id119846_)))
                          (__tmp127955
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _main-id119850_))))
                      (declare (not safe))
                      (gxc#verbose
                       '"lift kw-lambda dispatch "
                       __tmp127957
                       '" => "
                       __tmp127956
                       '" => "
                       __tmp127955))
                    (let ((__tmp127958
                           (let ((__tmp127959
                                  (let ((__tmp127972
                                         (let ((__tmp127973
                                                (let ((__tmp127974
                                                       (let ((__tmp127975
                                                              (let ((__tmp127977
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _main-id119850_ '())))
                            (__tmp127976
                             (let ()
                               (declare (not safe))
                               (cons _L119802_ '()))))
                        (declare (not safe))
                        (cons __tmp127977 __tmp127976))))
                 (declare (not safe))
                 (cons '%#define-values __tmp127975))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp127974
                                                   _stx119462_))))
                                           (declare (not safe))
                                           (gxc#lift-top-lambda-define-values%
                                            __tmp127973)))
                                        (__tmp127960
                                         (let ((__tmp127967
                                                (let ((__tmp127968
                                                       (let ((__tmp127969
                                                              (let ((__tmp127971
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _get-kws-id119846_ '())))
                            (__tmp127970
                             (let ()
                               (declare (not safe))
                               (cons _new-get-kws119856_ '()))))
                        (declare (not safe))
                        (cons __tmp127971 __tmp127970))))
                 (declare (not safe))
                 (cons '%#define-values __tmp127969))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp127968
                                                   _stx119462_)))
                                               (__tmp127961
                                                (let ((__tmp127962
                                                       (let ((__tmp127963
                                                              (let ((__tmp127964
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp127966
                                    (let ()
                                      (declare (not safe))
                                      (cons _L119614_ '())))
                                   (__tmp127965
                                    (let ()
                                      (declare (not safe))
                                      (cons _new-kw-dispatch119854_ '()))))
                               (declare (not safe))
                               (cons __tmp127966 __tmp127965))))
                        (declare (not safe))
                        (cons '%#define-values __tmp127964))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp127963 _stx119462_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp127962 '()))))
                                           (declare (not safe))
                                           (cons __tmp127967 __tmp127961))))
                                    (declare (not safe))
                                    (cons __tmp127972 __tmp127960))))
                             (declare (not safe))
                             (cons '%#begin __tmp127959))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp127958 _stx119462_))))
                _hd119677119795_
                _hd119674119787_
                _hd119671119779_
                _hd119668119771_
                _hd119650119723_)
               (let ()
                 (declare (not safe))
                 (_g119630119683_ _g119631119686_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g119630119683_
                                                  _g119631119686_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g119630119683_
                                              _g119631119686_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g119630119683_ _g119631119686_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g119630119683_ _g119631119686_)))))
                           (let ()
                             (declare (not safe))
                             (_g119630119683_ _g119631119686_)))
                       (let ()
                         (declare (not safe))
                         (_g119630119683_ _g119631119686_)))
                   (let ()
                     (declare (not safe))
                     (_g119630119683_ _g119631119686_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g119630119683_
                                                      _g119631119686_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g119630119683_
                                                  _g119631119686_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g119630119683_ _g119631119686_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g119630119683_ _g119631119686_)))))
                       (let ()
                         (declare (not safe))
                         (_g119630119683_ _g119631119686_)))))
               (let ()
                 (declare (not safe))
                 (_g119630119683_ _g119631119686_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g119630119683_
                                                  _g119631119686_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g119630119683_ _g119631119686_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g119630119683_ _g119631119686_)))))
                           (let ()
                             (declare (not safe))
                             (_g119630119683_ _g119631119686_)))))
                   (let ()
                     (declare (not safe))
                     (_g119630119683_ _g119631119686_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g119630119683_
                                                      _g119631119686_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g119630119683_
                                              _g119631119686_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g119630119683_ _g119631119686_))))))
                       (declare (not safe))
                       (_g119629119859_ _L119613_))))
                  (___kont127260127261_
                   (lambda (_L119559_ _L119560_)
                     (let ((__tmp127978
                            (let ((__tmp127979
                                   (let ((__tmp127980
                                          (let ((__tmp127981
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L119559_))))
                                            (declare (not safe))
                                            (cons __tmp127981 '()))))
                                     (declare (not safe))
                                     (cons _L119560_ __tmp127980))))
                              (declare (not safe))
                              (cons '%#define-values __tmp127979))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp127978 _stx119462_)))))
              (let* ((___match127345127346_
                      (lambda (_e119505119581_
                               _hd119504119584_
                               _tl119503119586_
                               _e119508119589_
                               _hd119507119592_
                               _tl119506119594_
                               _e119511119597_
                               _hd119510119600_
                               _tl119509119602_
                               _e119514119605_
                               _hd119513119608_
                               _tl119512119610_)
                        (let ((_L119613_ _hd119513119608_)
                              (_L119614_ _hd119510119600_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L119614_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L119613_)))
                              (___kont127258127259_ _L119613_ _L119614_)
                              (___kont127260127261_
                               _hd119513119608_
                               _hd119507119592_)))))
                     (___match127317127318_
                      (lambda (_e119491119867_
                               _hd119490119870_
                               _tl119489119872_
                               _e119494119875_
                               _hd119493119878_
                               _tl119492119880_
                               _e119497119883_
                               _hd119496119886_
                               _tl119495119888_
                               _e119500119891_
                               _hd119499119894_
                               _tl119498119896_)
                        (let ((_L119899_ _hd119499119894_)
                              (_L119900_ _hd119496119886_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L119900_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr? _L119899_)))
                              (___kont127256127257_ _L119899_ _L119900_)
                              (___match127345127346_
                               _e119491119867_
                               _hd119490119870_
                               _tl119489119872_
                               _e119494119875_
                               _hd119493119878_
                               _tl119492119880_
                               _e119497119883_
                               _hd119496119886_
                               _tl119495119888_
                               _e119500119891_
                               _hd119499119894_
                               _tl119498119896_)))))
                     (___match127289127290_
                      (lambda (_e119477120049_
                               _hd119476120052_
                               _tl119475120054_
                               _e119480120057_
                               _hd119479120060_
                               _tl119478120062_
                               _e119483120065_
                               _hd119482120068_
                               _tl119481120070_
                               _e119486120073_
                               _hd119485120076_
                               _tl119484120078_)
                        (let ((_L120081_ _hd119485120076_)
                              (_L120082_ _hd119482120068_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L120082_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#case-lambda-expr? _L120081_)))
                              (___kont127254127255_ _L120081_ _L120082_)
                              (___match127317127318_
                               _e119477120049_
                               _hd119476120052_
                               _tl119475120054_
                               _e119480120057_
                               _hd119479120060_
                               _tl119478120062_
                               _e119483120065_
                               _hd119482120068_
                               _tl119481120070_
                               _e119486120073_
                               _hd119485120076_
                               _tl119484120078_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx127252127253_))
                    (let ((_e119477120049_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx127252127253_))))
                      (let ((_tl119475120054_
                             (let ()
                               (declare (not safe))
                               (##cdr _e119477120049_)))
                            (_hd119476120052_
                             (let ()
                               (declare (not safe))
                               (##car _e119477120049_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl119475120054_))
                            (let ((_e119480120057_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl119475120054_))))
                              (let ((_tl119478120062_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e119480120057_)))
                                    (_hd119479120060_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e119480120057_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd119479120060_))
                                    (let ((_e119483120065_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd119479120060_))))
                                      (let ((_tl119481120070_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e119483120065_)))
                                            (_hd119482120068_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e119483120065_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl119481120070_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl119478120062_))
                                                (let ((_e119486120073_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl119478120062_))))
                                                  (let ((_tl119484120078_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e119486120073_)))
                                                        (_hd119485120076_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e119486120073_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl119484120078_))
                                                        (___match127289127290_
                                                         _e119477120049_
                                                         _hd119476120052_
                                                         _tl119475120054_
                                                         _e119480120057_
                                                         _hd119479120060_
                                                         _tl119478120062_
                                                         _e119483120065_
                                                         _hd119482120068_
                                                         _tl119481120070_
                                                         _e119486120073_
                                                         _hd119485120076_
                                                         _tl119484120078_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g119471119530_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g119471119530_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl119478120062_))
                                                (let ((_e119525119551_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl119478120062_))))
                                                  (let ((_tl119523119556_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e119525119551_)))
                                                        (_hd119524119554_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e119525119551_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl119523119556_))
                                                        (___kont127260127261_
                                                         _hd119524119554_
                                                         _hd119479120060_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g119471119530_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g119471119530_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl119478120062_))
                                        (let ((_e119525119551_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl119478120062_))))
                                          (let ((_tl119523119556_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e119525119551_)))
                                                (_hd119524119554_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e119525119551_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl119523119556_))
                                                (___kont127260127261_
                                                 _hd119524119554_
                                                 _hd119479120060_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g119471119530_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g119471119530_))))))
                            (let () (declare (not safe)) (_g119471119530_)))))
                    (let () (declare (not safe)) (_g119471119530_)))))))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_stx118394_)
        (letrec* ((_bind-e__125648125649_
                   (lambda (_id119446_ _expr119447_ _compile?119448_)
                     (let ((__tmp127984
                            (let ()
                              (declare (not safe))
                              (cons _id119446_ '())))
                           (__tmp127982
                            (let ((__tmp127983
                                   (if _compile?119448_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr119447_))
                                       _expr119447_)))
                              (declare (not safe))
                              (cons __tmp127983 '()))))
                       (declare (not safe))
                       (cons __tmp127984 __tmp127982))))
                  (_bind-e__0__125650125651_
                   (lambda (_id119453_ _expr119454_)
                     (let ((_compile?119456_ '#t))
                       (declare (not safe))
                       (_bind-e__125648125649_
                        _id119453_
                        _expr119454_
                        _compile?119456_))))
                  (_bind-e118396_
                   (lambda _g127986_
                     (let ((_g127985_
                            (let ()
                              (declare (not safe))
                              (##length _g127986_))))
                       (cond ((let () (declare (not safe)) (##fx= _g127985_ 2))
                              (apply (lambda (_id119453_ _expr119454_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__125650125651_
                                          _id119453_
                                          _expr119454_)))
                                     _g127986_))
                             ((let () (declare (not safe)) (##fx= _g127985_ 3))
                              (apply (lambda (_id119458_
                                              _expr119459_
                                              _compile?119460_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__125648125649_
                                          _id119458_
                                          _expr119459_
                                          _compile?119460_)))
                                     _g127986_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g127986_))))))
                  (_compile-bindings118397_
                   (lambda (_bindings119030_)
                     (let _lp119032_ ((_rest119034_ _bindings119030_)
                                      (_lift1119035_ '())
                                      (_lift2119036_ '())
                                      (_bind119037_ '()))
                       (let* ((_rest119038119046_ _rest119034_)
                              (_else119040119054_
                               (lambda ()
                                 (values (reverse _lift1119035_)
                                         (reverse _lift2119036_)
                                         (reverse _bind119037_))))
                              (_K119042119433_
                               (lambda (_rest119057_ _hd119058_)
                                 (let* ((___stx127388127389_ _hd119058_)
                                        (_g119062119098_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx127388127389_)))))
                                   (let ((___kont127390127391_
                                          (lambda (_L119340_ _L119341_)
                                            (let* ((___stx127368127369_
                                                    _L119340_)
                                                   (_g119356119370_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx127368127369_)))))
                                              (let ((___kont127370127371_
                                                     (lambda (_L119418_)
                                                       (let ((__tmp127987
                                                              (let ((__tmp127988
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__125648125649_
                                _L119341_
                                _L119340_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp127988 _bind119037_))))
                 (declare (not safe))
                 (_lp119032_
                  _rest119057_
                  _lift1119035_
                  _lift2119036_
                  __tmp127987))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127372127373_
                                                     (lambda (_L119383_)
                                                       (let ((_g127989_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx118394_
                         _L119341_
                         _L119383_
                         '#t))))
                 (begin
                   (let ((_g127990_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g127989_)
                                (##vector-length _g127989_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g127990_ 3)))
                         (error "Context expects 3 values" _g127990_)))
                   (let ((_ids119393_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g127989_ 0)))
                         (_impls119394_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g127989_ 1)))
                         (_clauses119395_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g127989_ 2))))
                     (let* ((_g127991_
                             (for-each gx#core-bind-runtime! _ids119393_))
                            (_xbind119398_
                             (map _bind-e118396_ _ids119393_ _impls119394_))
                            (_expr*119400_
                             (let ((__tmp127993
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses119395_)))
                                   (__tmp127992
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp127993
                                __tmp127992)))
                            (_bind*119402_
                             (let ()
                               (declare (not safe))
                               (_bind-e__125648125649_
                                _L119341_
                                _expr*119400_
                                '#f))))
                       (let ((__tmp127995
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L119341_)))
                             (__tmp127994
                              (map gxc#identifier-symbol _ids119393_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp127995
                          '" => "
                          __tmp127994))
                       (let ((__tmp127997
                              (let ()
                                (declare (not safe))
                                (foldl1 cons _lift2119036_ _xbind119398_)))
                             (__tmp127996
                              (let ()
                                (declare (not safe))
                                (cons _bind*119402_ _bind119037_))))
                         (declare (not safe))
                         (_lp119032_
                          _rest119057_
                          _lift1119035_
                          __tmp127997
                          __tmp127996)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match127379127380_
                                                       (lambda (_e119361119410_
                                                                _hd119360119413_
                                                                _tl119359119415_)
                                                         (let ((_L119418_
                                                                _tl119359119415_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L119418_))
                       (___kont127370127371_ _L119418_)
                       (___kont127372127373_ _tl119359119415_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx127368127369_))
                                                      (let ((_e119361119410_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx127368127369_))))
                (let ((_tl119359119415_
                       (let () (declare (not safe)) (##cdr _e119361119410_)))
                      (_hd119360119413_
                       (let () (declare (not safe)) (##car _e119361119410_))))
                  (___match127379127380_
                   _e119361119410_
                   _hd119360119413_
                   _tl119359119415_)))
              (let () (declare (not safe)) (_g119356119370_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont127392127393_
                                          (lambda (_L119168_ _L119169_)
                                            (let* ((_g119183119213_
                                                    (lambda (_g119184119210_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g119184119210_))))
                                                   (_g119182119308_
                                                    (lambda (_g119184119216_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g119184119216_))
                                                          (let ((_e119190119218_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g119184119216_))))
                    (let ((_hd119189119221_
                           (let ()
                             (declare (not safe))
                             (##car _e119190119218_)))
                          (_tl119188119223_
                           (let ()
                             (declare (not safe))
                             (##cdr _e119190119218_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl119188119223_))
                          (let ((_e119193119226_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl119188119223_))))
                            (let ((_hd119192119229_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e119193119226_)))
                                  (_tl119191119231_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e119193119226_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd119192119229_))
                                  (let ((_e119196119234_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd119192119229_))))
                                    (let ((_hd119195119237_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e119196119234_)))
                                          (_tl119194119239_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e119196119234_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd119195119237_))
                                          (let ((_e119199119242_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd119195119237_))))
                                            (let ((_hd119198119245_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e119199119242_)))
                                                  (_tl119197119247_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e119199119242_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd119198119245_))
                                                  (let ((_e119202119250_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd119198119245_))))
                                                    (let ((_hd119201119253_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e119202119250_)))
                                                          (_tl119200119255_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e119202119250_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl119200119255_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl119197119247_))
                      (let ((_e119205119258_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl119197119247_))))
                        (let ((_hd119204119261_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119205119258_)))
                              (_tl119203119263_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119205119258_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl119203119263_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl119194119239_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl119191119231_))
                                      (let ((_e119208119266_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl119191119231_))))
                                        (let ((_hd119207119269_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e119208119266_)))
                                              (_tl119206119271_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e119208119266_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl119206119271_))
                                              ((lambda (_L119274_
                                                        _L119275_
                                                        _L119276_)
                                                 (let* ((_lambda-id119300_
                                                         (let ((__tmp127999
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L119169_)))
                       (__tmp127998 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp127999 __tmp127998)))
                (_lambda-id119302_
                 (let ((__tmp128000
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx118394_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id119300_ __tmp128000)))
                (_g128001_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id119302_)))
                (_new-case-lambda-expr119305_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L119274_
                    _L119276_
                    _lambda-id119302_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp128003
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L119169_)))
                                                         (__tmp128002
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id119302_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp128003
                                                      '" => "
                                                      __tmp128002))
                                                   (let ((__tmp128006
                                                          (let ((__tmp128007
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__125648125649_
                            _L119169_
                            _new-case-lambda-expr119305_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp128007 _rest119057_)))
                 (__tmp128004
                  (let ((__tmp128005
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__125650125651_
                            _lambda-id119302_
                            _L119275_))))
                    (declare (not safe))
                    (cons __tmp128005 _lift1119035_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp119032_
                                                      __tmp128006
                                                      __tmp128004
                                                      _lift2119036_
                                                      _bind119037_))))
                                               _hd119207119269_
                                               _hd119204119261_
                                               _hd119201119253_)
                                              (let ()
                                                (declare (not safe))
                                                (_g119183119213_
                                                 _g119184119216_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g119183119213_ _g119184119216_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g119183119213_ _g119184119216_)))
                              (let ()
                                (declare (not safe))
                                (_g119183119213_ _g119184119216_)))))
                      (let ()
                        (declare (not safe))
                        (_g119183119213_ _g119184119216_)))
                  (let ()
                    (declare (not safe))
                    (_g119183119213_ _g119184119216_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g119183119213_
                                                     _g119184119216_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g119183119213_
                                             _g119184119216_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g119183119213_ _g119184119216_)))))
                          (let ()
                            (declare (not safe))
                            (_g119183119213_ _g119184119216_)))))
                  (let ()
                    (declare (not safe))
                    (_g119183119213_ _g119184119216_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g119182119308_ _L119168_))))
                                         (___kont127394127395_
                                          (lambda (_L119119_ _L119120_)
                                            (let ((__tmp128008
                                                   (let ((__tmp128009
                                                          (let ((__tmp128010
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp128011
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L119119_))))
                           (declare (not safe))
                           (cons __tmp128011 '()))))
                    (declare (not safe))
                    (cons _L119120_ __tmp128010))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp128009
                                                           _bind119037_))))
                                              (declare (not safe))
                                              (_lp119032_
                                               _rest119057_
                                               _lift1119035_
                                               _lift2119036_
                                               __tmp128008)))))
                                     (let* ((___match127439127440_
                                             (lambda (_e119079119144_
                                                      _hd119078119147_
                                                      _tl119077119149_
                                                      _e119082119152_
                                                      _hd119081119155_
                                                      _tl119080119157_
                                                      _e119085119160_
                                                      _hd119084119163_
                                                      _tl119083119165_)
                                               (let ((_L119168_
                                                      _hd119084119163_)
                                                     (_L119169_
                                                      _hd119081119155_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L119169_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L119168_)))
                                                     (___kont127392127393_
                                                      _L119168_
                                                      _L119169_)
                                                     (___kont127394127395_
                                                      _hd119084119163_
                                                      _hd119078119147_)))))
                                            (___match127417127418_
                                             (lambda (_e119068119316_
                                                      _hd119067119319_
                                                      _tl119066119321_
                                                      _e119071119324_
                                                      _hd119070119327_
                                                      _tl119069119329_
                                                      _e119074119332_
                                                      _hd119073119335_
                                                      _tl119072119337_)
                                               (let ((_L119340_
                                                      _hd119073119335_)
                                                     (_L119341_
                                                      _hd119070119327_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L119341_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L119340_)))
                                                     (___kont127390127391_
                                                      _L119340_
                                                      _L119341_)
                                                     (___match127439127440_
                                                      _e119068119316_
                                                      _hd119067119319_
                                                      _tl119066119321_
                                                      _e119071119324_
                                                      _hd119070119327_
                                                      _tl119069119329_
                                                      _e119074119332_
                                                      _hd119073119335_
                                                      _tl119072119337_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx127388127389_))
                                           (let ((_e119068119316_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx127388127389_))))
                                             (let ((_tl119066119321_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e119068119316_)))
                                                   (_hd119067119319_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e119068119316_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd119067119319_))
                                                   (let ((_e119071119324_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd119067119319_))))
                                                     (let ((_tl119069119329_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e119071119324_)))
                                                           (_hd119070119327_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e119071119324_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl119069119329_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl119066119321_))
                       (let ((_e119074119332_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl119066119321_))))
                         (let ((_tl119072119337_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e119074119332_)))
                               (_hd119073119335_
                                (let ()
                                  (declare (not safe))
                                  (##car _e119074119332_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl119072119337_))
                               (___match127417127418_
                                _e119068119316_
                                _hd119067119319_
                                _tl119066119321_
                                _e119071119324_
                                _hd119070119327_
                                _tl119069119329_
                                _e119074119332_
                                _hd119073119335_
                                _tl119072119337_)
                               (let ()
                                 (declare (not safe))
                                 (_g119062119098_)))))
                       (let () (declare (not safe)) (_g119062119098_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl119066119321_))
                       (let ((_e119093119111_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl119066119321_))))
                         (let ((_tl119091119116_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e119093119111_)))
                               (_hd119092119114_
                                (let ()
                                  (declare (not safe))
                                  (##car _e119093119111_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl119091119116_))
                               (___kont127394127395_
                                _hd119092119114_
                                _hd119067119319_)
                               (let ()
                                 (declare (not safe))
                                 (_g119062119098_)))))
                       (let () (declare (not safe)) (_g119062119098_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl119066119321_))
                                                       (let ((_e119093119111_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl119066119321_))))
                 (let ((_tl119091119116_
                        (let () (declare (not safe)) (##cdr _e119093119111_)))
                       (_hd119092119114_
                        (let () (declare (not safe)) (##car _e119093119111_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl119091119116_))
                       (___kont127394127395_ _hd119092119114_ _hd119067119319_)
                       (let () (declare (not safe)) (_g119062119098_)))))
               (let () (declare (not safe)) (_g119062119098_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g119062119098_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest119038119046_))
                             (let ((_hd119043119436_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest119038119046_)))
                                   (_tl119044119438_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest119038119046_))))
                               (let* ((_hd119441_ _hd119043119436_)
                                      (_rest119443_ _tl119044119438_))
                                 (declare (not safe))
                                 (_K119042119433_ _rest119443_ _hd119441_)))
                             (let ()
                               (declare (not safe))
                               (_else119040119054_)))))))
                  (_lift-kw-lambda?118398_
                   (lambda (_bind118954_)
                     (let* ((___stx127456127457_ _bind118954_)
                            (_g118957118974_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx127456127457_)))))
                       (let ((___kont127458127459_
                              (lambda (_L119010_ _L119011_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _L119011_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#kw-lambda-expr? _L119010_))
                                    '#f)))
                             (___kont127460127461_ (lambda () '#f)))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? ___stx127456127457_))
                             (let ((_e118963118986_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e ___stx127456127457_))))
                               (let ((_tl118961118991_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e118963118986_)))
                                     (_hd118962118989_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e118963118986_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd118962118989_))
                                     (let ((_e118966118994_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd118962118989_))))
                                       (let ((_tl118964118999_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e118966118994_)))
                                             (_hd118965118997_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e118966118994_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl118964118999_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl118961118991_))
                                                 (let ((_e118969119002_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl118961118991_))))
                                                   (let ((_tl118967119007_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e118969119002_)))
                                                         (_hd118968119005_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e118969119002_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl118967119007_))
                                                         (___kont127458127459_
                                                          _hd118968119005_
                                                          _hd118965118997_)
                                                         (___kont127460127461_))))
                                                 (___kont127460127461_))
                                             (___kont127460127461_))))
                                     (___kont127460127461_))))
                             (___kont127460127461_))))))
                  (_lift-kw-lambda-bindings118399_
                   (lambda (_bindings118566_)
                     (let _lp118568_ ((_rest118570_ _bindings118566_)
                                      (_lift1118571_ '())
                                      (_lift2118572_ '())
                                      (_bind118573_ '()))
                       (let* ((_rest118574118582_ _rest118570_)
                              (_else118576118590_
                               (lambda ()
                                 (values (reverse _lift1118571_)
                                         (reverse _lift2118572_)
                                         (reverse _bind118573_))))
                              (_K118578118942_
                               (lambda (_rest118593_ _hd118594_)
                                 (let* ((___stx127486127487_ _hd118594_)
                                        (_g118597118622_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx127486127487_)))))
                                   (let ((___kont127488127489_
                                          (lambda (_L118692_ _L118693_)
                                            (let* ((_g118707118760_
                                                    (lambda (_g118708118757_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g118708118757_))))
                                                   (_g118706118936_
                                                    (lambda (_g118708118763_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g118708118763_))
                                                          (let ((_e118716118765_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g118708118763_))))
                    (let ((_hd118715118768_
                           (let ()
                             (declare (not safe))
                             (##car _e118716118765_)))
                          (_tl118714118770_
                           (let ()
                             (declare (not safe))
                             (##cdr _e118716118765_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl118714118770_))
                          (let ((_e118719118773_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl118714118770_))))
                            (let ((_hd118718118776_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e118719118773_)))
                                  (_tl118717118778_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e118719118773_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd118718118776_))
                                  (let ((_e118722118781_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd118718118776_))))
                                    (let ((_hd118721118784_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e118722118781_)))
                                          (_tl118720118786_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e118722118781_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd118721118784_))
                                          (let ((_e118725118789_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd118721118784_))))
                                            (let ((_hd118724118792_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e118725118789_)))
                                                  (_tl118723118794_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e118725118789_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd118724118792_))
                                                  (let ((_e118728118797_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd118724118792_))))
                                                    (let ((_hd118727118800_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e118728118797_)))
                                                          (_tl118726118802_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e118728118797_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl118726118802_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl118723118794_))
                      (let ((_e118731118805_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl118723118794_))))
                        (let ((_hd118730118808_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118731118805_)))
                              (_tl118729118810_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118731118805_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd118730118808_))
                              (let ((_e118734118813_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd118730118808_))))
                                (let ((_hd118733118816_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118734118813_)))
                                      (_tl118732118818_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118734118813_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118732118818_))
                                      (let ((_e118737118821_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118732118818_))))
                                        (let ((_hd118736118824_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118737118821_)))
                                              (_tl118735118826_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118737118821_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd118736118824_))
                                              (let ((_e118740118829_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd118736118824_))))
                                                (let ((_hd118739118832_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e118740118829_)))
                                                      (_tl118738118834_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e118740118829_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd118739118832_))
                                                      (let ((_e118743118837_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd118739118832_))))
                (let ((_hd118742118840_
                       (let () (declare (not safe)) (##car _e118743118837_)))
                      (_tl118741118842_
                       (let () (declare (not safe)) (##cdr _e118743118837_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd118742118840_))
                      (let ((_e118746118845_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd118742118840_))))
                        (let ((_hd118745118848_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118746118845_)))
                              (_tl118744118850_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118746118845_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl118744118850_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl118741118842_))
                                  (let ((_e118749118853_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl118741118842_))))
                                    (let ((_hd118748118856_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e118749118853_)))
                                          (_tl118747118858_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e118749118853_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl118747118858_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118738118834_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl118735118826_))
                                                  (let ((_e118752118861_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl118735118826_))))
                                                    (let ((_hd118751118864_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e118752118861_)))
                                                          (_tl118750118866_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e118752118861_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl118750118866_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl118729118810_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl118720118786_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118717118778_))
                              (let ((_e118755118869_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118717118778_))))
                                (let ((_hd118754118872_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118755118869_)))
                                      (_tl118753118874_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118755118869_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118753118874_))
                                      ((lambda (_L118877_
                                                _L118878_
                                                _L118879_
                                                _L118880_
                                                _L118881_)
                                         (let* ((_get-kws-id118921_
                                                 (let ((__tmp128013
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L118693_)))
                                                       (__tmp128012
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp128013
                                                    __tmp128012)))
                                                (_get-kws-id118923_
                                                 (let ((__tmp128014
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx118394_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id118921_
                                                    __tmp128014)))
                                                (_main-id118925_
                                                 (let ((__tmp128016
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L118693_)))
                                                       (__tmp128015
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp128016
                                                    __tmp128015)))
                                                (_main-id118927_
                                                 (let ((__tmp128017
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx118394_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id118925_
                                                    __tmp128017)))
                                                (_g128018_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id118923_)))
                                                (_g128019_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id118927_)))
                                                (_new-kw-dispatch118931_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L118877_
                                                    _L118881_
                                                    _get-kws-id118923_)))
                                                (_new-get-kws118933_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L118878_
                                                    _L118880_
                                                    _main-id118927_))))
                                           (let ((__tmp128022
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L118693_)))
                                                 (__tmp128021
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id118923_)))
                                                 (__tmp128020
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id118927_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp128022
                                              '" => "
                                              __tmp128021
                                              '" => "
                                              __tmp128020))
                                           (let ((__tmp128027
                                                  (let ((__tmp128028
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__125648125649_
                                                            _main-id118927_
                                                            _L118879_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp128028
                                                          _lift1118571_)))
                                                 (__tmp128025
                                                  (let ((__tmp128026
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__125648125649_
                                                            _get-kws-id118923_
                                                            _new-get-kws118933_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp128026
                                                          _lift2118572_)))
                                                 (__tmp128023
                                                  (let ((__tmp128024
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__125648125649_
                                                            _L118693_
                                                            _new-kw-dispatch118931_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp128024
                                                          _bind118573_))))
                                             (declare (not safe))
                                             (_lp118568_
                                              _rest118593_
                                              __tmp128027
                                              __tmp128025
                                              __tmp128023))))
                                       _hd118754118872_
                                       _hd118751118864_
                                       _hd118748118856_
                                       _hd118745118848_
                                       _hd118727118800_)
                                      (let ()
                                        (declare (not safe))
                                        (_g118707118760_ _g118708118763_)))))
                              (let ()
                                (declare (not safe))
                                (_g118707118760_ _g118708118763_)))
                          (let ()
                            (declare (not safe))
                            (_g118707118760_ _g118708118763_)))
                      (let ()
                        (declare (not safe))
                        (_g118707118760_ _g118708118763_)))
                  (let ()
                    (declare (not safe))
                    (_g118707118760_ _g118708118763_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g118707118760_
                                                     _g118708118763_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g118707118760_
                                                 _g118708118763_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g118707118760_
                                             _g118708118763_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g118707118760_ _g118708118763_)))
                              (let ()
                                (declare (not safe))
                                (_g118707118760_ _g118708118763_)))))
                      (let ()
                        (declare (not safe))
                        (_g118707118760_ _g118708118763_)))))
              (let ()
                (declare (not safe))
                (_g118707118760_ _g118708118763_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g118707118760_
                                                 _g118708118763_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g118707118760_ _g118708118763_)))))
                              (let ()
                                (declare (not safe))
                                (_g118707118760_ _g118708118763_)))))
                      (let ()
                        (declare (not safe))
                        (_g118707118760_ _g118708118763_)))
                  (let ()
                    (declare (not safe))
                    (_g118707118760_ _g118708118763_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g118707118760_
                                                     _g118708118763_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g118707118760_
                                             _g118708118763_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g118707118760_ _g118708118763_)))))
                          (let ()
                            (declare (not safe))
                            (_g118707118760_ _g118708118763_)))))
                  (let ()
                    (declare (not safe))
                    (_g118707118760_ _g118708118763_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g118706118936_ _L118692_))))
                                         (___kont127490127491_
                                          (lambda (_L118643_ _L118644_)
                                            (let ((__tmp128029
                                                   (let ((__tmp128030
                                                          (let ((__tmp128031
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L118643_ '()))))
                    (declare (not safe))
                    (cons _L118644_ __tmp128031))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp128030
                                                           _bind118573_))))
                                              (declare (not safe))
                                              (_lp118568_
                                               _rest118593_
                                               _lift1118571_
                                               _lift2118572_
                                               __tmp128029)))))
                                     (let ((___match127513127514_
                                            (lambda (_e118603118668_
                                                     _hd118602118671_
                                                     _tl118601118673_
                                                     _e118606118676_
                                                     _hd118605118679_
                                                     _tl118604118681_
                                                     _e118609118684_
                                                     _hd118608118687_
                                                     _tl118607118689_)
                                              (let ((_L118692_
                                                     _hd118608118687_)
                                                    (_L118693_
                                                     _hd118605118679_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _L118693_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#kw-lambda-expr?
                                                            _L118692_)))
                                                    (___kont127488127489_
                                                     _L118692_
                                                     _L118693_)
                                                    (___kont127490127491_
                                                     _hd118608118687_
                                                     _hd118602118671_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx127486127487_))
                                           (let ((_e118603118668_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx127486127487_))))
                                             (let ((_tl118601118673_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e118603118668_)))
                                                   (_hd118602118671_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e118603118668_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd118602118671_))
                                                   (let ((_e118606118676_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd118602118671_))))
                                                     (let ((_tl118604118681_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e118606118676_)))
                                                           (_hd118605118679_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e118606118676_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl118604118681_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl118601118673_))
                       (let ((_e118609118684_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl118601118673_))))
                         (let ((_tl118607118689_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e118609118684_)))
                               (_hd118608118687_
                                (let ()
                                  (declare (not safe))
                                  (##car _e118609118684_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl118607118689_))
                               (___match127513127514_
                                _e118603118668_
                                _hd118602118671_
                                _tl118601118673_
                                _e118606118676_
                                _hd118605118679_
                                _tl118604118681_
                                _e118609118684_
                                _hd118608118687_
                                _tl118607118689_)
                               (let ()
                                 (declare (not safe))
                                 (_g118597118622_)))))
                       (let () (declare (not safe)) (_g118597118622_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl118601118673_))
                       (let ((_e118617118635_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl118601118673_))))
                         (let ((_tl118615118640_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e118617118635_)))
                               (_hd118616118638_
                                (let ()
                                  (declare (not safe))
                                  (##car _e118617118635_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl118615118640_))
                               (___kont127490127491_
                                _hd118616118638_
                                _hd118602118671_)
                               (let ()
                                 (declare (not safe))
                                 (_g118597118622_)))))
                       (let () (declare (not safe)) (_g118597118622_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl118601118673_))
                                                       (let ((_e118617118635_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl118601118673_))))
                 (let ((_tl118615118640_
                        (let () (declare (not safe)) (##cdr _e118617118635_)))
                       (_hd118616118638_
                        (let () (declare (not safe)) (##car _e118617118635_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl118615118640_))
                       (___kont127490127491_ _hd118616118638_ _hd118602118671_)
                       (let () (declare (not safe)) (_g118597118622_)))))
               (let () (declare (not safe)) (_g118597118622_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g118597118622_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest118574118582_))
                             (let ((_hd118579118945_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest118574118582_)))
                                   (_tl118580118947_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest118574118582_))))
                               (let* ((_hd118950_ _hd118579118945_)
                                      (_rest118952_ _tl118580118947_))
                                 (declare (not safe))
                                 (_K118578118942_ _rest118952_ _hd118950_)))
                             (let ()
                               (declare (not safe))
                               (_else118576118590_))))))))
          (let* ((___stx127530127531_ _stx118394_)
                 (_g118402118428_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx127530127531_)))))
            (let ((___kont127532127533_
                   (lambda (_L118488_ _L118489_)
                     (let ((__tmp128033
                            (lambda ()
                              (if (let ((__tmp128060
                                         (let ((__tmp128061
                                                (lambda (_g118517118520_
                                                         _g118518118522_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g118517118520_
                                                          _g118518118522_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp128061
                                                   '()
                                                   _L118489_))))
                                    (declare (not safe))
                                    (ormap1 _lift-kw-lambda?118398_
                                            __tmp128060))
                                  (let ((_g128047_
                                         (let ((__tmp128049
                                                (let ((__tmp128050
                                                       (lambda (_g118524118527_
                                                                _g118525118529_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g118524118527_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g118525118529_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp128050
                                                          '()
                                                          _L118489_))))
                                           (declare (not safe))
                                           (_lift-kw-lambda-bindings118399_
                                            __tmp128049))))
                                    (begin
                                      (let ((_g128048_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g128047_)
                                                   (##vector-length _g128047_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g128048_ 3)))
                                            (error "Context expects 3 values"
                                                   _g128048_)))
                                      (let ((_lift1118532_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g128047_ 0)))
                                            (_lift2118533_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g128047_ 1)))
                                            (_hd118534_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g128047_ 2))))
                                        (let* ((_expr118536_
                                                (let ((__tmp128051
                                                       (let ((__tmp128052
                                                              (let ((__tmp128053
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L118488_ '()))))
                        (declare (not safe))
                        (cons _hd118534_ __tmp128053))))
                 (declare (not safe))
                 (cons '%#let-values __tmp128052))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp128051
                                                   _stx118394_)))
                                               (_expr118538_
                                                (let ((__tmp128054
                                                       (let ((__tmp128055
                                                              (let ((__tmp128056
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr118536_ '()))))
                        (declare (not safe))
                        (cons _lift2118533_ __tmp128056))))
                 (declare (not safe))
                 (cons '%#let-values __tmp128055))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp128054
                                                   _stx118394_)))
                                               (_expr118540_
                                                (let ((__tmp128057
                                                       (let ((__tmp128058
                                                              (let ((__tmp128059
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr118538_ '()))))
                        (declare (not safe))
                        (cons _lift1118532_ __tmp128059))))
                 (declare (not safe))
                 (cons '%#let-values __tmp128058))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp128057
                                                   _stx118394_))))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#lift-top-lambda-let-values%
                                             _expr118540_))))))
                                  (let ((_g128034_
                                         (let ((__tmp128036
                                                (let ((__tmp128037
                                                       (lambda (_g118542118545_
                                                                _g118543118547_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g118542118545_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g118543118547_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp128037
                                                          '()
                                                          _L118489_))))
                                           (declare (not safe))
                                           (_compile-bindings118397_
                                            __tmp128036))))
                                    (begin
                                      (let ((_g128035_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g128034_)
                                                   (##vector-length _g128034_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g128035_ 3)))
                                            (error "Context expects 3 values"
                                                   _g128035_)))
                                      (let ((_lift1118550_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g128034_ 0)))
                                            (_lift2118551_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g128034_ 1)))
                                            (_hd118552_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g128034_ 2))))
                                        (let* ((_body118554_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _L118488_)))
                                               (_expr118556_
                                                (let ((__tmp128038
                                                       (let ((__tmp128039
                                                              (let ((__tmp128040
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _body118554_ '()))))
                        (declare (not safe))
                        (cons _hd118552_ __tmp128040))))
                 (declare (not safe))
                 (cons '%#let-values __tmp128039))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp128038
                                                   _stx118394_)))
                                               (_expr118558_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift2118551_))
                                                    _expr118556_
                                                    (let ((__tmp128041
                                                           (let ((__tmp128042
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp128043
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr118556_ '()))))
                            (declare (not safe))
                            (cons _lift2118551_ __tmp128043))))
                     (declare (not safe))
                     (cons '%#let-values __tmp128042))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp128041 _stx118394_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_expr118560_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift1118550_))
                                                    _expr118558_
                                                    (let ((__tmp128044
                                                           (let ((__tmp128045
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp128046
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr118558_ '()))))
                            (declare (not safe))
                            (cons _lift1118550_ __tmp128046))))
                     (declare (not safe))
                     (cons '%#let-values __tmp128045))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp128044 _stx118394_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _expr118560_)))))))
                           (__tmp128032
                            (let ((__obj127736
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj127736)
                              __obj127736)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp128033
                        gx#current-expander-context
                        __tmp128032))))
                  (___kont127536127537_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx118394_)))))
              (let ((___match127557127558_
                     (lambda (_e118408118440_
                              _hd118407118443_
                              _tl118406118445_
                              _e118411118448_
                              _hd118410118451_
                              _tl118409118453_
                              ___splice127534127535_
                              _target118412118456_
                              _tl118414118458_)
                       (letrec ((_loop118415118461_
                                 (lambda (_hd118413118464_ _bind118419118466_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd118413118464_))
                                       (let ((_e118416118469_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd118413118464_))))
                                         (let ((_lp-tl118418118474_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e118416118469_)))
                                               (_lp-hd118417118472_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e118416118469_))))
                                           (let ((__tmp128064
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd118417118472_
                                                          _bind118419118466_))))
                                             (declare (not safe))
                                             (_loop118415118461_
                                              _lp-tl118418118474_
                                              __tmp128064))))
                                       (let ((_bind118420118477_
                                              (reverse _bind118419118466_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl118409118453_))
                                             (let ((_e118423118480_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl118409118453_))))
                                               (let ((_tl118421118485_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e118423118480_)))
                                                     (_hd118422118483_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e118423118480_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl118421118485_))
                                                     (let ((_L118488_
                                                            _hd118422118483_)
                                                           (_L118489_
                                                            _bind118420118477_))
                                                       (if (let ((__tmp128062
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp128063
                                 (lambda (_g118509118512_ _g118510118514_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g118509118512_ _g118510118514_)))))
                            (declare (not safe))
                            (foldr1 __tmp128063 '() _L118489_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp128062))
                   (___kont127532127533_ _L118488_ _L118489_)
                   (___kont127536127537_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont127536127537_))))
                                             (___kont127536127537_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop118415118461_ _target118412118456_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx127530127531_))
                    (let ((_e118408118440_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx127530127531_))))
                      (let ((_tl118406118445_
                             (let ()
                               (declare (not safe))
                               (##cdr _e118408118440_)))
                            (_hd118407118443_
                             (let ()
                               (declare (not safe))
                               (##car _e118408118440_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl118406118445_))
                            (let ((_e118411118448_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl118406118445_))))
                              (let ((_tl118409118453_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e118411118448_)))
                                    (_hd118410118451_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e118411118448_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd118410118451_))
                                    (let ((___splice127534127535_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd118410118451_
                                              '0))))
                                      (let ((_tl118414118458_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice127534127535_
                                                '1)))
                                            (_target118412118456_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice127534127535_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl118414118458_))
                                            (___match127557127558_
                                             _e118408118440_
                                             _hd118407118443_
                                             _tl118406118445_
                                             _e118411118448_
                                             _hd118410118451_
                                             _tl118409118453_
                                             ___splice127534127535_
                                             _target118412118456_
                                             _tl118414118458_)
                                            (___kont127536127537_))))
                                    (___kont127536127537_))))
                            (___kont127536127537_))))
                    (___kont127536127537_))))))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_stx117538_)
        (letrec* ((_bind-e__125653125654_
                   (lambda (_id118378_ _expr118379_ _compile?118380_)
                     (let ((__tmp128067
                            (let ()
                              (declare (not safe))
                              (cons _id118378_ '())))
                           (__tmp128065
                            (let ((__tmp128066
                                   (if _compile?118380_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr118379_))
                                       _expr118379_)))
                              (declare (not safe))
                              (cons __tmp128066 '()))))
                       (declare (not safe))
                       (cons __tmp128067 __tmp128065))))
                  (_bind-e__0__125655125656_
                   (lambda (_id118385_ _expr118386_)
                     (let ((_compile?118388_ '#t))
                       (declare (not safe))
                       (_bind-e__125653125654_
                        _id118385_
                        _expr118386_
                        _compile?118388_))))
                  (_bind-e117540_
                   (lambda _g128069_
                     (let ((_g128068_
                            (let ()
                              (declare (not safe))
                              (##length _g128069_))))
                       (cond ((let () (declare (not safe)) (##fx= _g128068_ 2))
                              (apply (lambda (_id118385_ _expr118386_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__125655125656_
                                          _id118385_
                                          _expr118386_)))
                                     _g128069_))
                             ((let () (declare (not safe)) (##fx= _g128068_ 3))
                              (apply (lambda (_id118390_
                                              _expr118391_
                                              _compile?118392_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__125653125654_
                                          _id118390_
                                          _expr118391_
                                          _compile?118392_)))
                                     _g128069_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g128069_))))))
                  (_compile-bindings117541_
                   (lambda (_rest117676_)
                     (let _lp117678_ ((_rest117680_ _rest117676_)
                                      (_bind117681_ '()))
                       (let* ((_rest117682117690_ _rest117680_)
                              (_else117684117698_
                               (lambda () (reverse _bind117681_)))
                              (_K117686118365_
                               (lambda (_rest117701_ _hd117702_)
                                 (let* ((___stx127580127581_ _hd117702_)
                                        (_g117707117754_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx127580127581_)))))
                                   (let ((___kont127582127583_
                                          (lambda (_L118272_ _L118273_)
                                            (let* ((___stx127560127561_
                                                    _L118272_)
                                                   (_g118288118302_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx127560127561_)))))
                                              (let ((___kont127562127563_
                                                     (lambda (_L118350_)
                                                       (let ((__tmp128070
                                                              (let ((__tmp128071
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__125653125654_
                                _L118273_
                                _L118272_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp128071 _bind117681_))))
                 (declare (not safe))
                 (_lp117678_ _rest117701_ __tmp128070))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127564127565_
                                                     (lambda (_L118315_)
                                                       (let ((_g128072_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx117538_
                         _L118273_
                         _L118315_
                         '#t))))
                 (begin
                   (let ((_g128073_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g128072_)
                                (##vector-length _g128072_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g128073_ 3)))
                         (error "Context expects 3 values" _g128073_)))
                   (let ((_ids118325_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g128072_ 0)))
                         (_impls118326_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g128072_ 1)))
                         (_clauses118327_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g128072_ 2))))
                     (let* ((_g128074_
                             (for-each gx#core-bind-runtime! _ids118325_))
                            (_xbind118330_
                             (map _bind-e117540_ _ids118325_ _impls118326_))
                            (_expr*118332_
                             (let ((__tmp128076
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses118327_)))
                                   (__tmp128075
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp128076
                                __tmp128075)))
                            (_bind*118334_
                             (let ()
                               (declare (not safe))
                               (_bind-e__125653125654_
                                _L118273_
                                _expr*118332_
                                '#f))))
                       (let ((__tmp128078
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L118273_)))
                             (__tmp128077
                              (map gxc#identifier-symbol _ids118325_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp128078
                          '" => "
                          __tmp128077))
                       (let ((__tmp128079
                              (let ((__tmp128080
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _bind117681_
                                               _xbind118330_))))
                                (declare (not safe))
                                (cons _bind*118334_ __tmp128080))))
                         (declare (not safe))
                         (_lp117678_ _rest117701_ __tmp128079)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match127571127572_
                                                       (lambda (_e118293118342_
                                                                _hd118292118345_
                                                                _tl118291118347_)
                                                         (let ((_L118350_
                                                                _tl118291118347_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L118350_))
                       (___kont127562127563_ _L118350_)
                       (___kont127564127565_ _tl118291118347_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx127560127561_))
                                                      (let ((_e118293118342_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx127560127561_))))
                (let ((_tl118291118347_
                       (let () (declare (not safe)) (##cdr _e118293118342_)))
                      (_hd118292118345_
                       (let () (declare (not safe)) (##car _e118293118342_))))
                  (___match127571127572_
                   _e118293118342_
                   _hd118292118345_
                   _tl118291118347_)))
              (let () (declare (not safe)) (_g118288118302_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont127584127585_
                                          (lambda (_L118100_ _L118101_)
                                            (let* ((_g118115118145_
                                                    (lambda (_g118116118142_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g118116118142_))))
                                                   (_g118114118240_
                                                    (lambda (_g118116118148_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g118116118148_))
                                                          (let ((_e118122118150_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g118116118148_))))
                    (let ((_hd118121118153_
                           (let ()
                             (declare (not safe))
                             (##car _e118122118150_)))
                          (_tl118120118155_
                           (let ()
                             (declare (not safe))
                             (##cdr _e118122118150_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl118120118155_))
                          (let ((_e118125118158_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl118120118155_))))
                            (let ((_hd118124118161_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e118125118158_)))
                                  (_tl118123118163_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e118125118158_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd118124118161_))
                                  (let ((_e118128118166_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd118124118161_))))
                                    (let ((_hd118127118169_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e118128118166_)))
                                          (_tl118126118171_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e118128118166_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd118127118169_))
                                          (let ((_e118131118174_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd118127118169_))))
                                            (let ((_hd118130118177_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e118131118174_)))
                                                  (_tl118129118179_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e118131118174_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd118130118177_))
                                                  (let ((_e118134118182_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd118130118177_))))
                                                    (let ((_hd118133118185_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e118134118182_)))
                                                          (_tl118132118187_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e118134118182_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl118132118187_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl118129118179_))
                      (let ((_e118137118190_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl118129118179_))))
                        (let ((_hd118136118193_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118137118190_)))
                              (_tl118135118195_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118137118190_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl118135118195_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl118126118171_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118123118163_))
                                      (let ((_e118140118198_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118123118163_))))
                                        (let ((_hd118139118201_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118140118198_)))
                                              (_tl118138118203_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118140118198_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118138118203_))
                                              ((lambda (_L118206_
                                                        _L118207_
                                                        _L118208_)
                                                 (let* ((_lambda-id118232_
                                                         (let ((__tmp128082
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L118101_)))
                       (__tmp128081 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp128082 __tmp128081)))
                (_lambda-id118234_
                 (let ((__tmp128083
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx117538_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id118232_ __tmp128083)))
                (_g128084_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id118234_)))
                (_new-case-lambda-expr118237_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L118206_
                    _L118208_
                    _lambda-id118234_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp128086
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L118101_)))
                                                         (__tmp128085
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id118234_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp128086
                                                      '" => "
                                                      __tmp128085))
                                                   (let ((__tmp128089
                                                          (let ((__tmp128090
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__125653125654_
                            _L118101_
                            _new-case-lambda-expr118237_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp128090 _rest117701_)))
                 (__tmp128087
                  (let ((__tmp128088
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__125655125656_
                            _lambda-id118234_
                            _L118207_))))
                    (declare (not safe))
                    (cons __tmp128088 _bind117681_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp117678_
                                                      __tmp128089
                                                      __tmp128087))))
                                               _hd118139118201_
                                               _hd118136118193_
                                               _hd118133118185_)
                                              (let ()
                                                (declare (not safe))
                                                (_g118115118145_
                                                 _g118116118148_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g118115118145_ _g118116118148_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g118115118145_ _g118116118148_)))
                              (let ()
                                (declare (not safe))
                                (_g118115118145_ _g118116118148_)))))
                      (let ()
                        (declare (not safe))
                        (_g118115118145_ _g118116118148_)))
                  (let ()
                    (declare (not safe))
                    (_g118115118145_ _g118116118148_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g118115118145_
                                                     _g118116118148_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g118115118145_
                                             _g118116118148_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g118115118145_ _g118116118148_)))))
                          (let ()
                            (declare (not safe))
                            (_g118115118145_ _g118116118148_)))))
                  (let ()
                    (declare (not safe))
                    (_g118115118145_ _g118116118148_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g118114118240_ _L118100_))))
                                         (___kont127586127587_
                                          (lambda (_L117824_ _L117825_)
                                            (let* ((_g117839117892_
                                                    (lambda (_g117840117889_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g117840117889_))))
                                                   (_g117838118068_
                                                    (lambda (_g117840117895_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g117840117895_))
                                                          (let ((_e117848117897_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g117840117895_))))
                    (let ((_hd117847117900_
                           (let ()
                             (declare (not safe))
                             (##car _e117848117897_)))
                          (_tl117846117902_
                           (let ()
                             (declare (not safe))
                             (##cdr _e117848117897_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl117846117902_))
                          (let ((_e117851117905_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl117846117902_))))
                            (let ((_hd117850117908_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e117851117905_)))
                                  (_tl117849117910_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e117851117905_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd117850117908_))
                                  (let ((_e117854117913_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd117850117908_))))
                                    (let ((_hd117853117916_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e117854117913_)))
                                          (_tl117852117918_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e117854117913_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd117853117916_))
                                          (let ((_e117857117921_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd117853117916_))))
                                            (let ((_hd117856117924_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e117857117921_)))
                                                  (_tl117855117926_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e117857117921_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd117856117924_))
                                                  (let ((_e117860117929_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd117856117924_))))
                                                    (let ((_hd117859117932_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e117860117929_)))
                                                          (_tl117858117934_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e117860117929_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl117858117934_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl117855117926_))
                      (let ((_e117863117937_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl117855117926_))))
                        (let ((_hd117862117940_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117863117937_)))
                              (_tl117861117942_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117863117937_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd117862117940_))
                              (let ((_e117866117945_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd117862117940_))))
                                (let ((_hd117865117948_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117866117945_)))
                                      (_tl117864117950_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117866117945_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl117864117950_))
                                      (let ((_e117869117953_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl117864117950_))))
                                        (let ((_hd117868117956_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e117869117953_)))
                                              (_tl117867117958_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e117869117953_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd117868117956_))
                                              (let ((_e117872117961_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd117868117956_))))
                                                (let ((_hd117871117964_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e117872117961_)))
                                                      (_tl117870117966_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e117872117961_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd117871117964_))
                                                      (let ((_e117875117969_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd117871117964_))))
                (let ((_hd117874117972_
                       (let () (declare (not safe)) (##car _e117875117969_)))
                      (_tl117873117974_
                       (let () (declare (not safe)) (##cdr _e117875117969_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd117874117972_))
                      (let ((_e117878117977_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd117874117972_))))
                        (let ((_hd117877117980_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117878117977_)))
                              (_tl117876117982_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117878117977_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl117876117982_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl117873117974_))
                                  (let ((_e117881117985_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl117873117974_))))
                                    (let ((_hd117880117988_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e117881117985_)))
                                          (_tl117879117990_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e117881117985_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl117879117990_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl117870117966_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl117867117958_))
                                                  (let ((_e117884117993_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl117867117958_))))
                                                    (let ((_hd117883117996_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e117884117993_)))
                                                          (_tl117882117998_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e117884117993_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl117882117998_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl117861117942_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl117852117918_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117849117910_))
                              (let ((_e117887118001_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117849117910_))))
                                (let ((_hd117886118004_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117887118001_)))
                                      (_tl117885118006_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117887118001_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl117885118006_))
                                      ((lambda (_L118009_
                                                _L118010_
                                                _L118011_
                                                _L118012_
                                                _L118013_)
                                         (let* ((_get-kws-id118053_
                                                 (let ((__tmp128092
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L117825_)))
                                                       (__tmp128091
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp128092
                                                    __tmp128091)))
                                                (_get-kws-id118055_
                                                 (let ((__tmp128093
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx117538_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id118053_
                                                    __tmp128093)))
                                                (_main-id118057_
                                                 (let ((__tmp128095
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L117825_)))
                                                       (__tmp128094
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp128095
                                                    __tmp128094)))
                                                (_main-id118059_
                                                 (let ((__tmp128096
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx117538_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id118057_
                                                    __tmp128096)))
                                                (_g128097_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id118055_)))
                                                (_g128098_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id118059_)))
                                                (_new-kw-dispatch118063_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L118009_
                                                    _L118013_
                                                    _get-kws-id118055_)))
                                                (_new-get-kws118065_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L118010_
                                                    _L118012_
                                                    _main-id118059_))))
                                           (let ((__tmp128101
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L117825_)))
                                                 (__tmp128100
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id118055_)))
                                                 (__tmp128099
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id118059_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp128101
                                              '" => "
                                              __tmp128100
                                              '" => "
                                              __tmp128099))
                                           (let ((__tmp128102
                                                  (let ((__tmp128107
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__125653125654_
                                                            _main-id118059_
                                                            _L118011_
                                                            '#f)))
                                                        (__tmp128103
                                                         (let ((__tmp128106
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_bind-e__125653125654_
                           _get-kws-id118055_
                           _new-get-kws118065_
                           '#f)))
                       (__tmp128104
                        (let ((__tmp128105
                               (let ()
                                 (declare (not safe))
                                 (_bind-e__125653125654_
                                  _L117825_
                                  _new-kw-dispatch118063_
                                  '#f))))
                          (declare (not safe))
                          (cons __tmp128105 _rest117701_))))
                   (declare (not safe))
                   (cons __tmp128106 __tmp128104))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp128107
                                                          __tmp128103))))
                                             (declare (not safe))
                                             (_lp117678_
                                              __tmp128102
                                              _bind117681_))))
                                       _hd117886118004_
                                       _hd117883117996_
                                       _hd117880117988_
                                       _hd117877117980_
                                       _hd117859117932_)
                                      (let ()
                                        (declare (not safe))
                                        (_g117839117892_ _g117840117895_)))))
                              (let ()
                                (declare (not safe))
                                (_g117839117892_ _g117840117895_)))
                          (let ()
                            (declare (not safe))
                            (_g117839117892_ _g117840117895_)))
                      (let ()
                        (declare (not safe))
                        (_g117839117892_ _g117840117895_)))
                  (let ()
                    (declare (not safe))
                    (_g117839117892_ _g117840117895_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g117839117892_
                                                     _g117840117895_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g117839117892_
                                                 _g117840117895_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g117839117892_
                                             _g117840117895_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g117839117892_ _g117840117895_)))
                              (let ()
                                (declare (not safe))
                                (_g117839117892_ _g117840117895_)))))
                      (let ()
                        (declare (not safe))
                        (_g117839117892_ _g117840117895_)))))
              (let ()
                (declare (not safe))
                (_g117839117892_ _g117840117895_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g117839117892_
                                                 _g117840117895_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g117839117892_ _g117840117895_)))))
                              (let ()
                                (declare (not safe))
                                (_g117839117892_ _g117840117895_)))))
                      (let ()
                        (declare (not safe))
                        (_g117839117892_ _g117840117895_)))
                  (let ()
                    (declare (not safe))
                    (_g117839117892_ _g117840117895_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g117839117892_
                                                     _g117840117895_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g117839117892_
                                             _g117840117895_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g117839117892_ _g117840117895_)))))
                          (let ()
                            (declare (not safe))
                            (_g117839117892_ _g117840117895_)))))
                  (let ()
                    (declare (not safe))
                    (_g117839117892_ _g117840117895_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g117838118068_ _L117824_))))
                                         (___kont127588127589_
                                          (lambda (_L117775_ _L117776_)
                                            (let ((__tmp128108
                                                   (let ((__tmp128109
                                                          (let ((__tmp128110
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp128111
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L117775_))))
                           (declare (not safe))
                           (cons __tmp128111 '()))))
                    (declare (not safe))
                    (cons _L117776_ __tmp128110))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp128109
                                                           _bind117681_))))
                                              (declare (not safe))
                                              (_lp117678_
                                               _rest117701_
                                               __tmp128108)))))
                                     (let* ((___match127655127656_
                                             (lambda (_e117735117800_
                                                      _hd117734117803_
                                                      _tl117733117805_
                                                      _e117738117808_
                                                      _hd117737117811_
                                                      _tl117736117813_
                                                      _e117741117816_
                                                      _hd117740117819_
                                                      _tl117739117821_)
                                               (let ((_L117824_
                                                      _hd117740117819_)
                                                     (_L117825_
                                                      _hd117737117811_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L117825_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#kw-lambda-expr?
                                                             _L117824_)))
                                                     (___kont127586127587_
                                                      _L117824_
                                                      _L117825_)
                                                     (___kont127588127589_
                                                      _hd117740117819_
                                                      _hd117734117803_)))))
                                            (___match127633127634_
                                             (lambda (_e117724118076_
                                                      _hd117723118079_
                                                      _tl117722118081_
                                                      _e117727118084_
                                                      _hd117726118087_
                                                      _tl117725118089_
                                                      _e117730118092_
                                                      _hd117729118095_
                                                      _tl117728118097_)
                                               (let ((_L118100_
                                                      _hd117729118095_)
                                                     (_L118101_
                                                      _hd117726118087_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L118101_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L118100_)))
                                                     (___kont127584127585_
                                                      _L118100_
                                                      _L118101_)
                                                     (___match127655127656_
                                                      _e117724118076_
                                                      _hd117723118079_
                                                      _tl117722118081_
                                                      _e117727118084_
                                                      _hd117726118087_
                                                      _tl117725118089_
                                                      _e117730118092_
                                                      _hd117729118095_
                                                      _tl117728118097_)))))
                                            (___match127611127612_
                                             (lambda (_e117713118248_
                                                      _hd117712118251_
                                                      _tl117711118253_
                                                      _e117716118256_
                                                      _hd117715118259_
                                                      _tl117714118261_
                                                      _e117719118264_
                                                      _hd117718118267_
                                                      _tl117717118269_)
                                               (let ((_L118272_
                                                      _hd117718118267_)
                                                     (_L118273_
                                                      _hd117715118259_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L118273_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L118272_)))
                                                     (___kont127582127583_
                                                      _L118272_
                                                      _L118273_)
                                                     (___match127633127634_
                                                      _e117713118248_
                                                      _hd117712118251_
                                                      _tl117711118253_
                                                      _e117716118256_
                                                      _hd117715118259_
                                                      _tl117714118261_
                                                      _e117719118264_
                                                      _hd117718118267_
                                                      _tl117717118269_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx127580127581_))
                                           (let ((_e117713118248_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx127580127581_))))
                                             (let ((_tl117711118253_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e117713118248_)))
                                                   (_hd117712118251_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e117713118248_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd117712118251_))
                                                   (let ((_e117716118256_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd117712118251_))))
                                                     (let ((_tl117714118261_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e117716118256_)))
                                                           (_hd117715118259_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e117716118256_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl117714118261_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl117711118253_))
                       (let ((_e117719118264_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl117711118253_))))
                         (let ((_tl117717118269_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e117719118264_)))
                               (_hd117718118267_
                                (let ()
                                  (declare (not safe))
                                  (##car _e117719118264_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl117717118269_))
                               (___match127611127612_
                                _e117713118248_
                                _hd117712118251_
                                _tl117711118253_
                                _e117716118256_
                                _hd117715118259_
                                _tl117714118261_
                                _e117719118264_
                                _hd117718118267_
                                _tl117717118269_)
                               (let ()
                                 (declare (not safe))
                                 (_g117707117754_)))))
                       (let () (declare (not safe)) (_g117707117754_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl117711118253_))
                       (let ((_e117749117767_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl117711118253_))))
                         (let ((_tl117747117772_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e117749117767_)))
                               (_hd117748117770_
                                (let ()
                                  (declare (not safe))
                                  (##car _e117749117767_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl117747117772_))
                               (___kont127588127589_
                                _hd117748117770_
                                _hd117712118251_)
                               (let ()
                                 (declare (not safe))
                                 (_g117707117754_)))))
                       (let () (declare (not safe)) (_g117707117754_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl117711118253_))
                                                       (let ((_e117749117767_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl117711118253_))))
                 (let ((_tl117747117772_
                        (let () (declare (not safe)) (##cdr _e117749117767_)))
                       (_hd117748117770_
                        (let () (declare (not safe)) (##car _e117749117767_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl117747117772_))
                       (___kont127588127589_ _hd117748117770_ _hd117712118251_)
                       (let () (declare (not safe)) (_g117707117754_)))))
               (let () (declare (not safe)) (_g117707117754_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g117707117754_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest117682117690_))
                             (let ((_hd117687118368_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest117682117690_)))
                                   (_tl117688118370_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest117682117690_))))
                               (let* ((_hd118373_ _hd117687118368_)
                                      (_rest118375_ _tl117688118370_))
                                 (declare (not safe))
                                 (_K117686118365_ _rest118375_ _hd118373_)))
                             (let ()
                               (declare (not safe))
                               (_else117684117698_))))))))
          (let* ((___stx127672127673_ _stx117538_)
                 (_g117544117571_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx127672127673_)))))
            (let ((___kont127674127675_
                   (lambda (_L117631_ _L117632_ _L117633_)
                     (let ((__tmp128113
                            (lambda ()
                              (let ((_hd117670_
                                     (let ((__tmp128114
                                            (let ((__tmp128115
                                                   (lambda (_g117662117665_
                                                            _g117663117667_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g117662117665_
                                                             _g117663117667_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp128115
                                                      '()
                                                      _L117632_))))
                                       (declare (not safe))
                                       (_compile-bindings117541_ __tmp128114)))
                                    (_body117671_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L117631_))))
                                (let ((__tmp128116
                                       (let ((__tmp128117
                                              (let ((__tmp128118
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body117671_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _hd117670_
                                                      __tmp128118))))
                                         (declare (not safe))
                                         (cons _L117633_ __tmp128117))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp128116
                                   _stx117538_)))))
                           (__tmp128112
                            (let ((__obj127737
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj127737)
                              __obj127737)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp128113
                        gx#current-expander-context
                        __tmp128112))))
                  (___kont127678127679_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx117538_)))))
              (let ((___match127699127700_
                     (lambda (_e117551117583_
                              _hd117550117586_
                              _tl117549117588_
                              _e117554117591_
                              _hd117553117594_
                              _tl117552117596_
                              ___splice127676127677_
                              _target117555117599_
                              _tl117557117601_)
                       (letrec ((_loop117558117604_
                                 (lambda (_hd117556117607_ _bind117562117609_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd117556117607_))
                                       (let ((_e117559117612_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd117556117607_))))
                                         (let ((_lp-tl117561117617_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e117559117612_)))
                                               (_lp-hd117560117615_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e117559117612_))))
                                           (let ((__tmp128121
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd117560117615_
                                                          _bind117562117609_))))
                                             (declare (not safe))
                                             (_loop117558117604_
                                              _lp-tl117561117617_
                                              __tmp128121))))
                                       (let ((_bind117563117620_
                                              (reverse _bind117562117609_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl117552117596_))
                                             (let ((_e117566117623_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl117552117596_))))
                                               (let ((_tl117564117628_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e117566117623_)))
                                                     (_hd117565117626_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e117566117623_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl117564117628_))
                                                     (let ((_L117631_
                                                            _hd117565117626_)
                                                           (_L117632_
                                                            _bind117563117620_)
                                                           (_L117633_
                                                            _hd117550117586_))
                                                       (if (let ((__tmp128119
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp128120
                                 (lambda (_g117654117657_ _g117655117659_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g117654117657_ _g117655117659_)))))
                            (declare (not safe))
                            (foldr1 __tmp128120 '() _L117632_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp128119))
                   (___kont127674127675_ _L117631_ _L117632_ _L117633_)
                   (___kont127678127679_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont127678127679_))))
                                             (___kont127678127679_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop117558117604_ _target117555117599_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx127672127673_))
                    (let ((_e117551117583_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx127672127673_))))
                      (let ((_tl117549117588_
                             (let ()
                               (declare (not safe))
                               (##cdr _e117551117583_)))
                            (_hd117550117586_
                             (let ()
                               (declare (not safe))
                               (##car _e117551117583_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl117549117588_))
                            (let ((_e117554117591_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl117549117588_))))
                              (let ((_tl117552117596_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e117554117591_)))
                                    (_hd117553117594_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e117554117591_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd117553117594_))
                                    (let ((___splice127676127677_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd117553117594_
                                              '0))))
                                      (let ((_tl117557117601_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice127676127677_
                                                '1)))
                                            (_target117555117599_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice127676127677_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl117557117601_))
                                            (___match127699127700_
                                             _e117551117583_
                                             _hd117550117586_
                                             _tl117549117588_
                                             _e117554117591_
                                             _hd117553117594_
                                             _tl117552117596_
                                             ___splice127676127677_
                                             _target117555117599_
                                             _tl117557117601_)
                                            (___kont127678127679_))))
                                    (___kont127678127679_))))
                            (___kont127678127679_))))
                    (___kont127678127679_))))))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_bind117456_)
        (let* ((___stx127702127703_ _bind117456_)
               (_g117459117476_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127702127703_)))))
          (let ((___kont127704127705_
                 (lambda (_L117512_ _L117513_)
                   (if (let () (declare (not safe)) (gx#identifier? _L117513_))
                       (let ((_$e117529_
                              (let ()
                                (declare (not safe))
                                (gxc#case-lambda-expr? _L117512_))))
                         (if _$e117529_
                             _$e117529_
                             (let ((_$e117532_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#opt-lambda-expr? _L117512_))))
                               (if _$e117532_
                                   _$e117532_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L117512_))))))
                       '#f)))
                (___kont127706127707_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127702127703_))
                (let ((_e117465117488_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127702127703_))))
                  (let ((_tl117463117493_
                         (let () (declare (not safe)) (##cdr _e117465117488_)))
                        (_hd117464117491_
                         (let ()
                           (declare (not safe))
                           (##car _e117465117488_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd117464117491_))
                        (let ((_e117468117496_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd117464117491_))))
                          (let ((_tl117466117501_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e117468117496_)))
                                (_hd117467117499_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e117468117496_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl117466117501_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl117463117493_))
                                    (let ((_e117471117504_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl117463117493_))))
                                      (let ((_tl117469117509_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e117471117504_)))
                                            (_hd117470117507_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e117471117504_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl117469117509_))
                                            (___kont127704127705_
                                             _hd117470117507_
                                             _hd117467117499_)
                                            (___kont127706127707_))))
                                    (___kont127706127707_))
                                (___kont127706127707_))))
                        (___kont127706127707_))))
                (___kont127706127707_))))))))
