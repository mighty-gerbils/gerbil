(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1708352925)
  (begin
    (define gxc#&collect-top-level-type-info
      (make-promise
       (lambda ()
         (let ((_tbl125646_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp127739 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl125646_ __tmp127739))
           (let ()
             (declare (not safe))
             (hash-put! _tbl125646_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl125646_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl125646_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125646_
              '%#define-values
              gxc#collect-top-level-type-define-values%))
           _tbl125646_))))
    (define gxc#apply-collect-top-level-type-info
      (lambda (_stx125629_ . _args125631_)
        (let ((__tmp127741
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
              (__tmp127740 (force gxc#&collect-top-level-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp127741
           gxc#current-compile-methods
           __tmp127740))))
    (define gxc#&basic-expression-top-level-type
      (make-promise
       (lambda ()
         (let ((_tbl125626_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp127742 (force gxc#&false)))
             (declare (not safe))
             (hash-merge! _tbl125626_ __tmp127742))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125626_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl125626_ '%#call gxc#basic-expression-type-call%))
           _tbl125626_))))
    (define gxc#apply-basic-expression-top-level-type
      (lambda (_stx125609_ . _args125611_)
        (let ((__tmp127744
               (lambda ()
                 (declare (not safe))
                 (if (null? _args125611_)
                     (gxc#compile-e__0 _stx125609_)
                     (let ((_arg1125616_ (car _args125611_))
                           (_rest125618_ (cdr _args125611_)))
                       (if (null? _rest125618_)
                           (gxc#compile-e__1 _stx125609_ _arg1125616_)
                           (let ((_arg2125621_ (car _rest125618_))
                                 (_rest125623_ (cdr _rest125618_)))
                             (if (null? _rest125623_)
                                 (gxc#compile-e__2
                                  _stx125609_
                                  _arg1125616_
                                  _arg2125621_)
                                 (apply gxc#compile-e
                                        _stx125609_
                                        _arg1125616_
                                        _arg2125621_
                                        _rest125623_))))))))
              (__tmp127743 (force gxc#&basic-expression-top-level-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp127744
           gxc#current-compile-methods
           __tmp127743))))
    (define gxc#&collect-type-info
      (make-promise
       (lambda ()
         (let ((_tbl125606_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp127745 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl125606_ __tmp127745))
           (let ()
             (declare (not safe))
             (hash-put! _tbl125606_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl125606_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl125606_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125606_
              '%#define-values
              gxc#collect-type-define-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125606_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl125606_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125606_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125606_
              '%#let-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125606_
              '%#letrec-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125606_
              '%#letrec*-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl125606_ '%#call gxc#collect-type-call%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl125606_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl125606_ '%#set! gxc#collect-body-setq%))
           _tbl125606_))))
    (define gxc#apply-collect-type-info
      (lambda (_stx125589_ . _args125591_)
        (let ((__tmp127747
               (lambda ()
                 (declare (not safe))
                 (if (null? _args125591_)
                     (gxc#compile-e__0 _stx125589_)
                     (let ((_arg1125596_ (car _args125591_))
                           (_rest125598_ (cdr _args125591_)))
                       (if (null? _rest125598_)
                           (gxc#compile-e__1 _stx125589_ _arg1125596_)
                           (let ((_arg2125601_ (car _rest125598_))
                                 (_rest125603_ (cdr _rest125598_)))
                             (if (null? _rest125603_)
                                 (gxc#compile-e__2
                                  _stx125589_
                                  _arg1125596_
                                  _arg2125601_)
                                 (apply gxc#compile-e
                                        _stx125589_
                                        _arg1125596_
                                        _arg2125601_
                                        _rest125603_))))))))
              (__tmp127746 (force gxc#&collect-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp127747
           gxc#current-compile-methods
           __tmp127746))))
    (define gxc#&basic-expression-type
      (make-promise
       (lambda ()
         (let ((_tbl125586_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp127748 (force gxc#&false)))
             (declare (not safe))
             (hash-merge! _tbl125586_ __tmp127748))
           (let ()
             (declare (not safe))
             (hash-put! _tbl125586_ '%#begin gxc#basic-expression-type-begin%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125586_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125586_
              '%#lambda
              gxc#basic-expression-type-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125586_
              '%#case-lambda
              gxc#basic-expression-type-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125586_
              '%#let-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125586_
              '%#letrec-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125586_
              '%#letrec*-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl125586_ '%#call gxc#basic-expression-type-call%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl125586_ '%#ref gxc#basic-expression-type-ref%))
           _tbl125586_))))
    (define gxc#apply-basic-expression-type
      (lambda (_stx125569_ . _args125571_)
        (let ((__tmp127750
               (lambda ()
                 (declare (not safe))
                 (if (null? _args125571_)
                     (gxc#compile-e__0 _stx125569_)
                     (let ((_arg1125576_ (car _args125571_))
                           (_rest125578_ (cdr _args125571_)))
                       (if (null? _rest125578_)
                           (gxc#compile-e__1 _stx125569_ _arg1125576_)
                           (let ((_arg2125581_ (car _rest125578_))
                                 (_rest125583_ (cdr _rest125578_)))
                             (if (null? _rest125583_)
                                 (gxc#compile-e__2
                                  _stx125569_
                                  _arg1125576_
                                  _arg2125581_)
                                 (apply gxc#compile-e
                                        _stx125569_
                                        _arg1125576_
                                        _arg2125581_
                                        _rest125583_))))))))
              (__tmp127749 (force gxc#&basic-expression-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp127750
           gxc#current-compile-methods
           __tmp127749))))
    (define gxc#&lift-top-lambdas
      (make-promise
       (lambda ()
         (let ((_tbl125566_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp127751 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-merge! _tbl125566_ __tmp127751))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125566_
              '%#define-values
              gxc#lift-top-lambda-define-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125566_
              '%#let-values
              gxc#lift-top-lambda-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125566_
              '%#letrec-values
              gxc#lift-top-lambda-letrec-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125566_
              '%#letrec*-values
              gxc#lift-top-lambda-letrec-values%))
           _tbl125566_))))
    (define gxc#apply-lift-top-lambdas
      (lambda (_stx125549_ . _args125551_)
        (let ((__tmp127753
               (lambda ()
                 (declare (not safe))
                 (if (null? _args125551_)
                     (gxc#compile-e__0 _stx125549_)
                     (let ((_arg1125556_ (car _args125551_))
                           (_rest125558_ (cdr _args125551_)))
                       (if (null? _rest125558_)
                           (gxc#compile-e__1 _stx125549_ _arg1125556_)
                           (let ((_arg2125561_ (car _rest125558_))
                                 (_rest125563_ (cdr _rest125558_)))
                             (if (null? _rest125563_)
                                 (gxc#compile-e__2
                                  _stx125549_
                                  _arg1125556_
                                  _arg2125561_)
                                 (apply gxc#compile-e
                                        _stx125549_
                                        _arg1125556_
                                        _arg2125561_
                                        _rest125563_))))))))
              (__tmp127752 (force gxc#&lift-top-lambdas)))
          (declare (not safe))
          (call-with-parameters
           __tmp127753
           gxc#current-compile-methods
           __tmp127752))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_stx125452_)
        (let* ((___stx125659125660_ _stx125452_)
               (_g125455125475_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx125659125660_)))))
          (let ((___kont125661125662_
                 (lambda (_L125519_ _L125520_)
                   (let ((_sym125538_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L125520_))))
                     (if (let ((__tmp127754 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp127754 _sym125538_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym125538_))
                         (let ((_type125539125541_
                                (let ()
                                  (declare (not safe))
                                  (gxc#apply-basic-expression-top-level-type
                                   _L125519_))))
                           (if _type125539125541_
                               (let ((_type125544_ _type125539125541_))
                                 (declare (not safe))
                                 (gxc#optimizer-declare-type!__0
                                  _sym125538_
                                  _type125544_))
                               '#f))))))
                (___kont125663125664_ (lambda () '#!void)))
            (let ((___match125692125693_
                   (lambda (_e125461125487_
                            _hd125460125490_
                            _tl125459125492_
                            _e125464125495_
                            _hd125463125498_
                            _tl125462125500_
                            _e125467125503_
                            _hd125466125506_
                            _tl125465125508_
                            _e125470125511_
                            _hd125469125514_
                            _tl125468125516_)
                     (let ((_L125519_ _hd125469125514_)
                           (_L125520_ _hd125466125506_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L125520_))
                           (___kont125661125662_ _L125519_ _L125520_)
                           (___kont125663125664_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx125659125660_))
                  (let ((_e125461125487_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx125659125660_))))
                    (let ((_tl125459125492_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125461125487_)))
                          (_hd125460125490_
                           (let ()
                             (declare (not safe))
                             (##car _e125461125487_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl125459125492_))
                          (let ((_e125464125495_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl125459125492_))))
                            (let ((_tl125462125500_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125464125495_)))
                                  (_hd125463125498_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125464125495_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd125463125498_))
                                  (let ((_e125467125503_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd125463125498_))))
                                    (let ((_tl125465125508_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125467125503_)))
                                          (_hd125466125506_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125467125503_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125465125508_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125462125500_))
                                              (let ((_e125470125511_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125462125500_))))
                                                (let ((_tl125468125516_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125470125511_)))
                                                      (_hd125469125514_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125470125511_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125468125516_))
                                                      (___match125692125693_
                                                       _e125461125487_
                                                       _hd125460125490_
                                                       _tl125459125492_
                                                       _e125464125495_
                                                       _hd125463125498_
                                                       _tl125462125500_
                                                       _e125467125503_
                                                       _hd125466125506_
                                                       _tl125465125508_
                                                       _e125470125511_
                                                       _hd125469125514_
                                                       _tl125468125516_)
                                                      (___kont125663125664_))))
                                              (___kont125663125664_))
                                          (___kont125663125664_))))
                                  (___kont125663125664_))))
                          (___kont125663125664_))))
                  (___kont125663125664_)))))))
    (define gxc#collect-type-define-values%
      (lambda (_stx125308_)
        (let* ((___stx125695125696_ _stx125308_)
               (_g125311125342_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx125695125696_)))))
          (let ((___kont125697125698_
                 (lambda (_L125424_ _L125425_)
                   (let ((_sym125441_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L125425_))))
                     (if (let ((__tmp127755 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp127755 _sym125441_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym125441_))
                         (if (let ()
                               (declare (not safe))
                               (gxc#optimizer-lookup-type _sym125441_))
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"skipping type inference for already declared type "
                                _sym125441_))
                             (let ((_type125442125444_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#apply-basic-expression-type
                                       _L125424_))))
                               (if _type125442125444_
                                   (let ((_type125447_ _type125442125444_))
                                     (declare (not safe))
                                     (gxc#optimizer-declare-type!__0
                                      _sym125441_
                                      _type125447_))
                                   '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__0 _L125424_)))))
                (___kont125699125700_
                 (lambda (_L125371_ _L125372_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__0 _L125371_)))))
            (let ((___match125728125729_
                   (lambda (_e125317125392_
                            _hd125316125395_
                            _tl125315125397_
                            _e125320125400_
                            _hd125319125403_
                            _tl125318125405_
                            _e125323125408_
                            _hd125322125411_
                            _tl125321125413_
                            _e125326125416_
                            _hd125325125419_
                            _tl125324125421_)
                     (let ((_L125424_ _hd125325125419_)
                           (_L125425_ _hd125322125411_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L125425_))
                           (___kont125697125698_ _L125424_ _L125425_)
                           (___kont125699125700_
                            _hd125325125419_
                            _hd125319125403_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx125695125696_))
                  (let ((_e125317125392_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx125695125696_))))
                    (let ((_tl125315125397_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125317125392_)))
                          (_hd125316125395_
                           (let ()
                             (declare (not safe))
                             (##car _e125317125392_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl125315125397_))
                          (let ((_e125320125400_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl125315125397_))))
                            (let ((_tl125318125405_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125320125400_)))
                                  (_hd125319125403_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125320125400_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd125319125403_))
                                  (let ((_e125323125408_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd125319125403_))))
                                    (let ((_tl125321125413_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125323125408_)))
                                          (_hd125322125411_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125323125408_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125321125413_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125318125405_))
                                              (let ((_e125326125416_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125318125405_))))
                                                (let ((_tl125324125421_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125326125416_)))
                                                      (_hd125325125419_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125326125416_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125324125421_))
                                                      (___match125728125729_
                                                       _e125317125392_
                                                       _hd125316125395_
                                                       _tl125315125397_
                                                       _e125320125400_
                                                       _hd125319125403_
                                                       _tl125318125405_
                                                       _e125323125408_
                                                       _hd125322125411_
                                                       _tl125321125413_
                                                       _e125326125416_
                                                       _hd125325125419_
                                                       _tl125324125421_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125311125342_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125311125342_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125318125405_))
                                              (let ((_e125337125363_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125318125405_))))
                                                (let ((_tl125335125368_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125337125363_)))
                                                      (_hd125336125366_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125337125363_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125335125368_))
                                                      (___kont125699125700_
                                                       _hd125336125366_
                                                       _hd125319125403_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125311125342_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125311125342_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125318125405_))
                                      (let ((_e125337125363_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125318125405_))))
                                        (let ((_tl125335125368_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125337125363_)))
                                              (_hd125336125366_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125337125363_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125335125368_))
                                              (___kont125699125700_
                                               _hd125336125366_
                                               _hd125319125403_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125311125342_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125311125342_))))))
                          (let () (declare (not safe)) (_g125311125342_)))))
                  (let () (declare (not safe)) (_g125311125342_))))))))
    (define gxc#collect-type-let-values%
      (lambda (_stx125093_)
        (letrec ((_collect-e125095_
                  (lambda (_hd125252_ _expr125253_)
                    (let* ((___stx125751125752_ _hd125252_)
                           (_g125256125266_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx125751125752_)))))
                      (let ((___kont125753125754_
                             (lambda (_L125286_)
                               (let ((_sym125297_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#identifier-symbol _L125286_))))
                                 (if (let ((__tmp127756
                                            (gxc#current-compile-mutators)))
                                       (declare (not safe))
                                       (hash-get __tmp127756 _sym125297_))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#verbose
                                        '"skipping type declaration for mutable binding "
                                        _sym125297_))
                                     (let ((_type125298125300_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-basic-expression-type
                                               _expr125253_))))
                                       (if _type125298125300_
                                           (let ((_type125303_
                                                  _type125298125300_))
                                             (declare (not safe))
                                             (gxc#optimizer-declare-type!__%
                                              _sym125297_
                                              _type125303_
                                              '#t))
                                           '#f))))))
                            (___kont125755125756_ (lambda () '#!void)))
                        (let ((___match125764125765_
                               (lambda (_e125261125278_
                                        _hd125260125281_
                                        _tl125259125283_)
                                 (let ((_L125286_ _hd125260125281_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _L125286_))
                                       (___kont125753125754_ _L125286_)
                                       (___kont125755125756_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx125751125752_))
                              (let ((_e125261125278_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx125751125752_))))
                                (let ((_tl125259125283_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125261125278_)))
                                      (_hd125260125281_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125261125278_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125259125283_))
                                      (___match125764125765_
                                       _e125261125278_
                                       _hd125260125281_
                                       _tl125259125283_)
                                      (___kont125755125756_))))
                              (___kont125755125756_))))))))
          (let* ((_g125097125132_
                  (lambda (_g125098125129_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g125098125129_))))
                 (_g125096125249_
                  (lambda (_g125098125135_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g125098125135_))
                        (let ((_e125104125137_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g125098125135_))))
                          (let ((_hd125103125140_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e125104125137_)))
                                (_tl125102125142_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e125104125137_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl125102125142_))
                                (let ((_e125107125145_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl125102125142_))))
                                  (let ((_hd125106125148_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e125107125145_)))
                                        (_tl125105125150_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e125107125145_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd125106125148_))
                                        (let ((_g127757_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd125106125148_
                                                  '0))))
                                          (begin
                                            (let ((_g127758_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g127757_)
                                                         (##vector-length
                                                          _g127757_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g127758_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g127758_)))
                                            (let ((_target125108125153_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g127757_
                                                      0)))
                                                  (_tl125110125155_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g127757_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125110125155_))
                                                  (letrec ((_loop125111125158_
                                                            (lambda (_hd125109125161_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr125115125163_
                             _hd125116125165_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd125109125161_))
                          (let ((_e125112125168_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd125109125161_))))
                            (let ((_lp-hd125113125171_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125112125168_)))
                                  (_lp-tl125114125173_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125112125168_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _lp-hd125113125171_))
                                  (let ((_e125121125176_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _lp-hd125113125171_))))
                                    (let ((_hd125120125179_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125121125176_)))
                                          (_tl125119125181_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125121125176_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl125119125181_))
                                          (let ((_e125124125184_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl125119125181_))))
                                            (let ((_hd125123125187_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e125124125184_)))
                                                  (_tl125122125189_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e125124125184_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125122125189_))
                                                  (let ((__tmp127763
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _hd125123125187_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr125115125163_)))
                (__tmp127762
                 (let ()
                   (declare (not safe))
                   (cons _hd125120125179_ _hd125116125165_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_loop125111125158_
                                                     _lp-tl125114125173_
                                                     __tmp127763
                                                     __tmp127762))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125097125132_
                                                     _g125098125135_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g125097125132_
                                             _g125098125135_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g125097125132_ _g125098125135_)))))
                          (let ((_expr125117125192_
                                 (reverse _expr125115125163_))
                                (_hd125118125194_ (reverse _hd125116125165_)))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl125105125150_))
                                (let ((_e125127125197_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl125105125150_))))
                                  (let ((_hd125126125200_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e125127125197_)))
                                        (_tl125125125202_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e125127125197_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl125125125202_))
                                        ((lambda (_L125205_
                                                  _L125206_
                                                  _L125207_)
                                           (for-each
                                            _collect-e125095_
                                            (let ((__tmp127759
                                                   (lambda (_g125227125230_
                                                            _g125228125232_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g125227125230_
                                                             _g125228125232_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp127759
                                                      '()
                                                      _L125207_))
                                            (let ((__tmp127760
                                                   (lambda (_g125234125237_
                                                            _g125235125239_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g125234125237_
                                                             _g125235125239_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp127760
                                                      '()
                                                      _L125206_)))
                                           (for-each
                                            gxc#compile-e
                                            (let ((__tmp127761
                                                   (lambda (_g125241125244_
                                                            _g125242125246_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g125241125244_
                                                             _g125242125246_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp127761
                                                      '()
                                                      _L125206_)))
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _L125205_)))
                                         _hd125126125200_
                                         _expr125117125192_
                                         _hd125118125194_)
                                        (let ()
                                          (declare (not safe))
                                          (_g125097125132_ _g125098125135_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g125097125132_ _g125098125135_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop125111125158_
                                                       _target125108125153_
                                                       '()
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125097125132_
                                                     _g125098125135_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g125097125132_ _g125098125135_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g125097125132_ _g125098125135_)))))
                        (let ()
                          (declare (not safe))
                          (_g125097125132_ _g125098125135_))))))
            (declare (not safe))
            (_g125096125249_ _stx125093_)))))
    (define gxc#collect-type-call%
      (lambda (_stx124585_)
        (let* ((___stx125767125768_ _stx124585_)
               (_g124589124704_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx125767125768_)))))
          (let ((___kont125769125770_
                 (lambda (_L125043_ _L125044_ _L125045_ _L125046_ _L125047_)
                   (let ((__tmp127767
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L125046_)))
                         (__tmp127766
                          (let () (declare (not safe)) (gx#stx-e _L125045_)))
                         (__tmp127765
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L125044_)))
                         (__tmp127764
                          (let () (declare (not safe)) (gx#stx-e _L125043_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp127767
                      __tmp127766
                      __tmp127765
                      __tmp127764))))
                (___kont125771125772_
                 (lambda (_L124871_ _L124872_ _L124873_ _L124874_)
                   (let ((__tmp127770
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L124873_)))
                         (__tmp127769
                          (let () (declare (not safe)) (gx#stx-e _L124872_)))
                         (__tmp127768
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L124871_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp127770
                      __tmp127769
                      __tmp127768
                      '#f))))
                (___kont125773125774_
                 (lambda (_L124741_)
                   (for-each
                    gxc#compile-e
                    (let ((__tmp127771
                           (lambda (_g124754124757_ _g124755124759_)
                             (let ()
                               (declare (not safe))
                               (cons _g124754124757_ _g124755124759_)))))
                      (declare (not safe))
                      (foldr1 __tmp127771 '() _L124741_))))))
            (let* ((___match126024126025_
                    (lambda (_e124690124709_
                             _hd124689124712_
                             _tl124688124714_
                             ___splice125775125776_
                             _target124691124717_
                             _tl124693124719_)
                      (letrec ((_loop124694124722_
                                (lambda (_hd124692124725_ _expr124698124727_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124692124725_))
                                      (let ((_e124695124730_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124692124725_))))
                                        (let ((_lp-tl124697124735_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124695124730_)))
                                              (_lp-hd124696124733_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124695124730_))))
                                          (let ((__tmp127772
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd124696124733_
                                                         _expr124698124727_))))
                                            (declare (not safe))
                                            (_loop124694124722_
                                             _lp-tl124697124735_
                                             __tmp127772))))
                                      (let ((_expr124699124738_
                                             (reverse _expr124698124727_)))
                                        (___kont125773125774_
                                         _expr124699124738_))))))
                        (let ()
                          (declare (not safe))
                          (_loop124694124722_ _target124691124717_ '())))))
                   (___match125904125905_
                    (lambda (_e124598124915_
                             _hd124597124918_
                             _tl124596124920_
                             _e124601124923_
                             _hd124600124926_
                             _tl124599124928_
                             _e124604124931_
                             _hd124603124934_
                             _tl124602124936_
                             _e124607124939_
                             _hd124606124942_
                             _tl124605124944_
                             _e124610124947_
                             _hd124609124950_
                             _tl124608124952_
                             _e124613124955_
                             _hd124612124958_
                             _tl124611124960_
                             _e124616124963_
                             _hd124615124966_
                             _tl124614124968_
                             _e124619124971_
                             _hd124618124974_
                             _tl124617124976_
                             _e124622124979_
                             _hd124621124982_
                             _tl124620124984_
                             _e124625124987_
                             _hd124624124990_
                             _tl124623124992_
                             _e124628124995_
                             _hd124627124998_
                             _tl124626125000_
                             _e124631125003_
                             _hd124630125006_
                             _tl124629125008_
                             _e124634125011_
                             _hd124633125014_
                             _tl124632125016_
                             _e124637125019_
                             _hd124636125022_
                             _tl124635125024_
                             _e124640125027_
                             _hd124639125030_
                             _tl124638125032_
                             _e124643125035_
                             _hd124642125038_
                             _tl124641125040_)
                      (let ((_L125043_ _hd124642125038_)
                            (_L125044_ _hd124633125014_)
                            (_L125045_ _hd124624124990_)
                            (_L125046_ _hd124615124966_)
                            (_L125047_ _hd124606124942_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _L125047_
                               'bind-method!))
                            (___kont125769125770_
                             _L125043_
                             _L125044_
                             _L125045_
                             _L125046_
                             _L125047_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl124596124920_))
                                (let ((___splice125775125776_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl124596124920_
                                          '0))))
                                  (let ((_tl124693124719_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice125775125776_
                                            '1)))
                                        (_target124691124717_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice125775125776_
                                            '0))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl124693124719_))
                                        (___match126024126025_
                                         _e124598124915_
                                         _hd124597124918_
                                         _tl124596124920_
                                         ___splice125775125776_
                                         _target124691124717_
                                         _tl124693124719_)
                                        (let ()
                                          (declare (not safe))
                                          (_g124589124704_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g124589124704_))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx125767125768_))
                  (let ((_e124598124915_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx125767125768_))))
                    (let ((_tl124596124920_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124598124915_)))
                          (_hd124597124918_
                           (let ()
                             (declare (not safe))
                             (##car _e124598124915_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl124596124920_))
                          (let ((_e124601124923_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl124596124920_))))
                            (let ((_tl124599124928_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124601124923_)))
                                  (_hd124600124926_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124601124923_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd124600124926_))
                                  (let ((_e124604124931_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd124600124926_))))
                                    (let ((_tl124602124936_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124604124931_)))
                                          (_hd124603124934_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124604124931_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd124603124934_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd124603124934_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl124602124936_))
                                                  (let ((_e124607124939_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl124602124936_))))
                                                    (let ((_tl124605124944_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124607124939_)))
                                                          (_hd124606124942_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124607124939_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl124605124944_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl124599124928_))
                      (let ((_e124610124947_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl124599124928_))))
                        (let ((_tl124608124952_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124610124947_)))
                              (_hd124609124950_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124610124947_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd124609124950_))
                              (let ((_e124613124955_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd124609124950_))))
                                (let ((_tl124611124960_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124613124955_)))
                                      (_hd124612124958_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124613124955_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd124612124958_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd124612124958_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl124611124960_))
                                              (let ((_e124616124963_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl124611124960_))))
                                                (let ((_tl124614124968_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124616124963_)))
                                                      (_hd124615124966_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124616124963_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124614124968_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl124608124952_))
                                                          (let ((_e124619124971_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl124608124952_))))
                    (let ((_tl124617124976_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124619124971_)))
                          (_hd124618124974_
                           (let ()
                             (declare (not safe))
                             (##car _e124619124971_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd124618124974_))
                          (let ((_e124622124979_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd124618124974_))))
                            (let ((_tl124620124984_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124622124979_)))
                                  (_hd124621124982_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124622124979_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd124621124982_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd124621124982_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl124620124984_))
                                          (let ((_e124625124987_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl124620124984_))))
                                            (let ((_tl124623124992_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124625124987_)))
                                                  (_hd124624124990_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124625124987_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124623124992_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl124617124976_))
                                                      (let ((_e124628124995_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl124617124976_))))
                (let ((_tl124626125000_
                       (let () (declare (not safe)) (##cdr _e124628124995_)))
                      (_hd124627124998_
                       (let () (declare (not safe)) (##car _e124628124995_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd124627124998_))
                      (let ((_e124631125003_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd124627124998_))))
                        (let ((_tl124629125008_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124631125003_)))
                              (_hd124630125006_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124631125003_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd124630125006_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd124630125006_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124629125008_))
                                      (let ((_e124634125011_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124629125008_))))
                                        (let ((_tl124632125016_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124634125011_)))
                                              (_hd124633125014_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124634125011_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124632125016_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl124626125000_))
                                                  (let ((_e124637125019_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl124626125000_))))
                                                    (let ((_tl124635125024_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124637125019_)))
                                                          (_hd124636125022_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124637125019_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd124636125022_))
                                                          (let ((_e124640125027_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd124636125022_))))
                    (let ((_tl124638125032_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124640125027_)))
                          (_hd124639125030_
                           (let ()
                             (declare (not safe))
                             (##car _e124640125027_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd124639125030_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd124639125030_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124638125032_))
                                  (let ((_e124643125035_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124638125032_))))
                                    (let ((_tl124641125040_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124643125035_)))
                                          (_hd124642125038_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124643125035_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124641125040_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124635125024_))
                                              (___match125904125905_
                                               _e124598124915_
                                               _hd124597124918_
                                               _tl124596124920_
                                               _e124601124923_
                                               _hd124600124926_
                                               _tl124599124928_
                                               _e124604124931_
                                               _hd124603124934_
                                               _tl124602124936_
                                               _e124607124939_
                                               _hd124606124942_
                                               _tl124605124944_
                                               _e124610124947_
                                               _hd124609124950_
                                               _tl124608124952_
                                               _e124613124955_
                                               _hd124612124958_
                                               _tl124611124960_
                                               _e124616124963_
                                               _hd124615124966_
                                               _tl124614124968_
                                               _e124619124971_
                                               _hd124618124974_
                                               _tl124617124976_
                                               _e124622124979_
                                               _hd124621124982_
                                               _tl124620124984_
                                               _e124625124987_
                                               _hd124624124990_
                                               _tl124623124992_
                                               _e124628124995_
                                               _hd124627124998_
                                               _tl124626125000_
                                               _e124631125003_
                                               _hd124630125006_
                                               _tl124629125008_
                                               _e124634125011_
                                               _hd124633125014_
                                               _tl124632125016_
                                               _e124637125019_
                                               _hd124636125022_
                                               _tl124635125024_
                                               _e124640125027_
                                               _hd124639125030_
                                               _tl124638125032_
                                               _e124643125035_
                                               _hd124642125038_
                                               _tl124641125040_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl124596124920_))
                                                  (let ((___splice125775125776_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl124596124920_
                                                            '0))))
                                                    (let ((_tl124693124719_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice125775125776_
                                                              '1)))
                                                          (_target124691124717_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice125775125776_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl124693124719_))
                                                          (___match126024126025_
                                                           _e124598124915_
                                                           _hd124597124918_
                                                           _tl124596124920_
                                                           ___splice125775125776_
                                                           _target124691124717_
                                                           _tl124693124719_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g124589124704_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g124589124704_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl124596124920_))
                                              (let ((___splice125775125776_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl124596124920_
                                                        '0))))
                                                (let ((_tl124693124719_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice125775125776_
                                                          '1)))
                                                      (_target124691124717_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice125775125776_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124693124719_))
                                                      (___match126024126025_
                                                       _e124598124915_
                                                       _hd124597124918_
                                                       _tl124596124920_
                                                       ___splice125775125776_
                                                       _target124691124717_
                                                       _tl124693124719_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g124589124704_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g124589124704_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl124596124920_))
                                      (let ((___splice125775125776_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl124596124920_
                                                '0))))
                                        (let ((_tl124693124719_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice125775125776_
                                                  '1)))
                                              (_target124691124717_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice125775125776_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124693124719_))
                                              (___match126024126025_
                                               _e124598124915_
                                               _hd124597124918_
                                               _tl124596124920_
                                               ___splice125775125776_
                                               _target124691124717_
                                               _tl124693124719_)
                                              (let ()
                                                (declare (not safe))
                                                (_g124589124704_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124589124704_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl124596124920_))
                                  (let ((___splice125775125776_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl124596124920_
                                            '0))))
                                    (let ((_tl124693124719_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice125775125776_
                                              '1)))
                                          (_target124691124717_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice125775125776_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124693124719_))
                                          (___match126024126025_
                                           _e124598124915_
                                           _hd124597124918_
                                           _tl124596124920_
                                           ___splice125775125776_
                                           _target124691124717_
                                           _tl124693124719_)
                                          (let ()
                                            (declare (not safe))
                                            (_g124589124704_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g124589124704_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl124596124920_))
                              (let ((___splice125775125776_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl124596124920_
                                        '0))))
                                (let ((_tl124693124719_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice125775125776_
                                          '1)))
                                      (_target124691124717_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice125775125776_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124693124719_))
                                      (___match126024126025_
                                       _e124598124915_
                                       _hd124597124918_
                                       _tl124596124920_
                                       ___splice125775125776_
                                       _target124691124717_
                                       _tl124693124719_)
                                      (let ()
                                        (declare (not safe))
                                        (_g124589124704_)))))
                              (let ()
                                (declare (not safe))
                                (_g124589124704_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl124596124920_))
                      (let ((___splice125775125776_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl124596124920_ '0))))
                        (let ((_tl124693124719_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice125775125776_ '1)))
                              (_target124691124717_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice125775125776_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl124693124719_))
                              (___match126024126025_
                               _e124598124915_
                               _hd124597124918_
                               _tl124596124920_
                               ___splice125775125776_
                               _target124691124717_
                               _tl124693124719_)
                              (let ()
                                (declare (not safe))
                                (_g124589124704_)))))
                      (let () (declare (not safe)) (_g124589124704_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124626125000_))
                                                      (if (let ((__tmp127773
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp127773 'bind-method!))
                  (let ((_L124871_ _hd124633125014_)
                        (_L124872_ _hd124624124990_)
                        (_L124873_ _hd124615124966_)
                        (_L124874_ _hd124606124942_))
                    (___kont125771125772_
                     _L124871_
                     _L124872_
                     _L124873_
                     _L124874_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl124596124920_))
                      (let ((___splice125775125776_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl124596124920_ '0))))
                        (let ((_tl124693124719_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice125775125776_ '1)))
                              (_target124691124717_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice125775125776_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl124693124719_))
                              (___match126024126025_
                               _e124598124915_
                               _hd124597124918_
                               _tl124596124920_
                               ___splice125775125776_
                               _target124691124717_
                               _tl124693124719_)
                              (let ()
                                (declare (not safe))
                                (_g124589124704_)))))
                      (let () (declare (not safe)) (_g124589124704_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl124596124920_))
                  (let ((___splice125775125776_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl124596124920_ '0))))
                    (let ((_tl124693124719_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice125775125776_ '1)))
                          (_target124691124717_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice125775125776_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl124693124719_))
                          (___match126024126025_
                           _e124598124915_
                           _hd124597124918_
                           _tl124596124920_
                           ___splice125775125776_
                           _target124691124717_
                           _tl124693124719_)
                          (let () (declare (not safe)) (_g124589124704_)))))
                  (let () (declare (not safe)) (_g124589124704_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl124596124920_))
                                                  (let ((___splice125775125776_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl124596124920_
                                                            '0))))
                                                    (let ((_tl124693124719_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice125775125776_
                                                              '1)))
                                                          (_target124691124717_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice125775125776_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl124693124719_))
                                                          (___match126024126025_
                                                           _e124598124915_
                                                           _hd124597124918_
                                                           _tl124596124920_
                                                           ___splice125775125776_
                                                           _target124691124717_
                                                           _tl124693124719_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g124589124704_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g124589124704_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl124596124920_))
                                          (let ((___splice125775125776_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl124596124920_
                                                    '0))))
                                            (let ((_tl124693124719_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice125775125776_
                                                      '1)))
                                                  (_target124691124717_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice125775125776_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124693124719_))
                                                  (___match126024126025_
                                                   _e124598124915_
                                                   _hd124597124918_
                                                   _tl124596124920_
                                                   ___splice125775125776_
                                                   _target124691124717_
                                                   _tl124693124719_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g124589124704_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g124589124704_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl124596124920_))
                                      (let ((___splice125775125776_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl124596124920_
                                                '0))))
                                        (let ((_tl124693124719_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice125775125776_
                                                  '1)))
                                              (_target124691124717_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice125775125776_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124693124719_))
                                              (___match126024126025_
                                               _e124598124915_
                                               _hd124597124918_
                                               _tl124596124920_
                                               ___splice125775125776_
                                               _target124691124717_
                                               _tl124693124719_)
                                              (let ()
                                                (declare (not safe))
                                                (_g124589124704_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124589124704_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl124596124920_))
                                  (let ((___splice125775125776_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl124596124920_
                                            '0))))
                                    (let ((_tl124693124719_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice125775125776_
                                              '1)))
                                          (_target124691124717_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice125775125776_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124693124719_))
                                          (___match126024126025_
                                           _e124598124915_
                                           _hd124597124918_
                                           _tl124596124920_
                                           ___splice125775125776_
                                           _target124691124717_
                                           _tl124693124719_)
                                          (let ()
                                            (declare (not safe))
                                            (_g124589124704_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g124589124704_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl124596124920_))
                          (let ((___splice125775125776_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl124596124920_
                                    '0))))
                            (let ((_tl124693124719_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice125775125776_ '1)))
                                  (_target124691124717_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice125775125776_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl124693124719_))
                                  (___match126024126025_
                                   _e124598124915_
                                   _hd124597124918_
                                   _tl124596124920_
                                   ___splice125775125776_
                                   _target124691124717_
                                   _tl124693124719_)
                                  (let ()
                                    (declare (not safe))
                                    (_g124589124704_)))))
                          (let () (declare (not safe)) (_g124589124704_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl124596124920_))
                  (let ((___splice125775125776_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl124596124920_ '0))))
                    (let ((_tl124693124719_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice125775125776_ '1)))
                          (_target124691124717_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice125775125776_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl124693124719_))
                          (___match126024126025_
                           _e124598124915_
                           _hd124597124918_
                           _tl124596124920_
                           ___splice125775125776_
                           _target124691124717_
                           _tl124693124719_)
                          (let () (declare (not safe)) (_g124589124704_)))))
                  (let () (declare (not safe)) (_g124589124704_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl124596124920_))
                                                      (let ((___splice125775125776_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl124596124920_ '0))))
                (let ((_tl124693124719_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice125775125776_ '1)))
                      (_target124691124717_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice125775125776_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl124693124719_))
                      (___match126024126025_
                       _e124598124915_
                       _hd124597124918_
                       _tl124596124920_
                       ___splice125775125776_
                       _target124691124717_
                       _tl124693124719_)
                      (let () (declare (not safe)) (_g124589124704_)))))
              (let () (declare (not safe)) (_g124589124704_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl124596124920_))
                                              (let ((___splice125775125776_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl124596124920_
                                                        '0))))
                                                (let ((_tl124693124719_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice125775125776_
                                                          '1)))
                                                      (_target124691124717_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice125775125776_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124693124719_))
                                                      (___match126024126025_
                                                       _e124598124915_
                                                       _hd124597124918_
                                                       _tl124596124920_
                                                       ___splice125775125776_
                                                       _target124691124717_
                                                       _tl124693124719_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g124589124704_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g124589124704_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl124596124920_))
                                          (let ((___splice125775125776_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl124596124920_
                                                    '0))))
                                            (let ((_tl124693124719_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice125775125776_
                                                      '1)))
                                                  (_target124691124717_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice125775125776_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124693124719_))
                                                  (___match126024126025_
                                                   _e124598124915_
                                                   _hd124597124918_
                                                   _tl124596124920_
                                                   ___splice125775125776_
                                                   _target124691124717_
                                                   _tl124693124719_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g124589124704_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g124589124704_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl124596124920_))
                                      (let ((___splice125775125776_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl124596124920_
                                                '0))))
                                        (let ((_tl124693124719_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice125775125776_
                                                  '1)))
                                              (_target124691124717_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice125775125776_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124693124719_))
                                              (___match126024126025_
                                               _e124598124915_
                                               _hd124597124918_
                                               _tl124596124920_
                                               ___splice125775125776_
                                               _target124691124717_
                                               _tl124693124719_)
                                              (let ()
                                                (declare (not safe))
                                                (_g124589124704_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124589124704_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl124596124920_))
                              (let ((___splice125775125776_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl124596124920_
                                        '0))))
                                (let ((_tl124693124719_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice125775125776_
                                          '1)))
                                      (_target124691124717_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice125775125776_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124693124719_))
                                      (___match126024126025_
                                       _e124598124915_
                                       _hd124597124918_
                                       _tl124596124920_
                                       ___splice125775125776_
                                       _target124691124717_
                                       _tl124693124719_)
                                      (let ()
                                        (declare (not safe))
                                        (_g124589124704_)))))
                              (let ()
                                (declare (not safe))
                                (_g124589124704_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl124596124920_))
                      (let ((___splice125775125776_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl124596124920_ '0))))
                        (let ((_tl124693124719_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice125775125776_ '1)))
                              (_target124691124717_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice125775125776_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl124693124719_))
                              (___match126024126025_
                               _e124598124915_
                               _hd124597124918_
                               _tl124596124920_
                               ___splice125775125776_
                               _target124691124717_
                               _tl124693124719_)
                              (let ()
                                (declare (not safe))
                                (_g124589124704_)))))
                      (let () (declare (not safe)) (_g124589124704_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl124596124920_))
                  (let ((___splice125775125776_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl124596124920_ '0))))
                    (let ((_tl124693124719_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice125775125776_ '1)))
                          (_target124691124717_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice125775125776_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl124693124719_))
                          (___match126024126025_
                           _e124598124915_
                           _hd124597124918_
                           _tl124596124920_
                           ___splice125775125776_
                           _target124691124717_
                           _tl124693124719_)
                          (let () (declare (not safe)) (_g124589124704_)))))
                  (let () (declare (not safe)) (_g124589124704_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl124596124920_))
                                                  (let ((___splice125775125776_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl124596124920_
                                                            '0))))
                                                    (let ((_tl124693124719_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice125775125776_
                                                              '1)))
                                                          (_target124691124717_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice125775125776_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl124693124719_))
                                                          (___match126024126025_
                                                           _e124598124915_
                                                           _hd124597124918_
                                                           _tl124596124920_
                                                           ___splice125775125776_
                                                           _target124691124717_
                                                           _tl124693124719_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g124589124704_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g124589124704_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl124596124920_))
                                              (let ((___splice125775125776_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl124596124920_
                                                        '0))))
                                                (let ((_tl124693124719_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice125775125776_
                                                          '1)))
                                                      (_target124691124717_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice125775125776_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124693124719_))
                                                      (___match126024126025_
                                                       _e124598124915_
                                                       _hd124597124918_
                                                       _tl124596124920_
                                                       ___splice125775125776_
                                                       _target124691124717_
                                                       _tl124693124719_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g124589124704_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g124589124704_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl124596124920_))
                                          (let ((___splice125775125776_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl124596124920_
                                                    '0))))
                                            (let ((_tl124693124719_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice125775125776_
                                                      '1)))
                                                  (_target124691124717_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice125775125776_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124693124719_))
                                                  (___match126024126025_
                                                   _e124598124915_
                                                   _hd124597124918_
                                                   _tl124596124920_
                                                   ___splice125775125776_
                                                   _target124691124717_
                                                   _tl124693124719_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g124589124704_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g124589124704_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl124596124920_))
                                  (let ((___splice125775125776_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl124596124920_
                                            '0))))
                                    (let ((_tl124693124719_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice125775125776_
                                              '1)))
                                          (_target124691124717_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice125775125776_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124693124719_))
                                          (___match126024126025_
                                           _e124598124915_
                                           _hd124597124918_
                                           _tl124596124920_
                                           ___splice125775125776_
                                           _target124691124717_
                                           _tl124693124719_)
                                          (let ()
                                            (declare (not safe))
                                            (_g124589124704_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g124589124704_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl124596124920_))
                          (let ((___splice125775125776_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl124596124920_
                                    '0))))
                            (let ((_tl124693124719_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice125775125776_ '1)))
                                  (_target124691124717_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice125775125776_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl124693124719_))
                                  (___match126024126025_
                                   _e124598124915_
                                   _hd124597124918_
                                   _tl124596124920_
                                   ___splice125775125776_
                                   _target124691124717_
                                   _tl124693124719_)
                                  (let ()
                                    (declare (not safe))
                                    (_g124589124704_)))))
                          (let () (declare (not safe)) (_g124589124704_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl124596124920_))
                      (let ((___splice125775125776_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl124596124920_ '0))))
                        (let ((_tl124693124719_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice125775125776_ '1)))
                              (_target124691124717_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice125775125776_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl124693124719_))
                              (___match126024126025_
                               _e124598124915_
                               _hd124597124918_
                               _tl124596124920_
                               ___splice125775125776_
                               _target124691124717_
                               _tl124693124719_)
                              (let ()
                                (declare (not safe))
                                (_g124589124704_)))))
                      (let () (declare (not safe)) (_g124589124704_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl124596124920_))
                                                      (let ((___splice125775125776_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl124596124920_ '0))))
                (let ((_tl124693124719_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice125775125776_ '1)))
                      (_target124691124717_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice125775125776_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl124693124719_))
                      (___match126024126025_
                       _e124598124915_
                       _hd124597124918_
                       _tl124596124920_
                       ___splice125775125776_
                       _target124691124717_
                       _tl124693124719_)
                      (let () (declare (not safe)) (_g124589124704_)))))
              (let () (declare (not safe)) (_g124589124704_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl124596124920_))
                                                  (let ((___splice125775125776_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl124596124920_
                                                            '0))))
                                                    (let ((_tl124693124719_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice125775125776_
                                                              '1)))
                                                          (_target124691124717_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice125775125776_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl124693124719_))
                                                          (___match126024126025_
                                                           _e124598124915_
                                                           _hd124597124918_
                                                           _tl124596124920_
                                                           ___splice125775125776_
                                                           _target124691124717_
                                                           _tl124693124719_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g124589124704_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g124589124704_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl124596124920_))
                                              (let ((___splice125775125776_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl124596124920_
                                                        '0))))
                                                (let ((_tl124693124719_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice125775125776_
                                                          '1)))
                                                      (_target124691124717_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice125775125776_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124693124719_))
                                                      (___match126024126025_
                                                       _e124598124915_
                                                       _hd124597124918_
                                                       _tl124596124920_
                                                       ___splice125775125776_
                                                       _target124691124717_
                                                       _tl124693124719_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g124589124704_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g124589124704_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl124596124920_))
                                      (let ((___splice125775125776_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl124596124920_
                                                '0))))
                                        (let ((_tl124693124719_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice125775125776_
                                                  '1)))
                                              (_target124691124717_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice125775125776_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124693124719_))
                                              (___match126024126025_
                                               _e124598124915_
                                               _hd124597124918_
                                               _tl124596124920_
                                               ___splice125775125776_
                                               _target124691124717_
                                               _tl124693124719_)
                                              (let ()
                                                (declare (not safe))
                                                (_g124589124704_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124589124704_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl124596124920_))
                              (let ((___splice125775125776_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl124596124920_
                                        '0))))
                                (let ((_tl124693124719_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice125775125776_
                                          '1)))
                                      (_target124691124717_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice125775125776_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124693124719_))
                                      (___match126024126025_
                                       _e124598124915_
                                       _hd124597124918_
                                       _tl124596124920_
                                       ___splice125775125776_
                                       _target124691124717_
                                       _tl124693124719_)
                                      (let ()
                                        (declare (not safe))
                                        (_g124589124704_)))))
                              (let ()
                                (declare (not safe))
                                (_g124589124704_))))))
                  (let () (declare (not safe)) (_g124589124704_))))))))
    (define gxc#current-compile-type-closure (make-parameter '#f))
    (define gxc#basic-expression-type-begin%
      (lambda (_stx124525_)
        (let* ((___stx126027126028_ _stx124525_)
               (_g124528124541_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126027126028_)))))
          (let ((___kont126029126030_
                 (lambda (_L124569_)
                   (let () (declare (not safe)) (gxc#compile-e__0 _L124569_))))
                (___kont126031126032_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx126027126028_))
                (let ((_e124533124553_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx126027126028_))))
                  (let ((_tl124531124558_
                         (let () (declare (not safe)) (##cdr _e124533124553_)))
                        (_hd124532124556_
                         (let ()
                           (declare (not safe))
                           (##car _e124533124553_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl124531124558_))
                        (let ((_e124536124561_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl124531124558_))))
                          (let ((_tl124534124566_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e124536124561_)))
                                (_hd124535124564_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e124536124561_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl124534124566_))
                                (___kont126029126030_ _hd124535124564_)
                                (___kont126031126032_))))
                        (___kont126031126032_))))
                (___kont126031126032_))))))
    (define gxc#basic-expression-type-annotations
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_stx124405_)
        (let* ((_g124407124424_
                (lambda (_g124408124421_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124408124421_))))
               (_g124406124522_
                (lambda (_g124408124427_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124408124427_))
                      (let ((_e124413124429_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124408124427_))))
                        (let ((_hd124412124432_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124413124429_)))
                              (_tl124411124434_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124413124429_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124411124434_))
                              (let ((_e124416124437_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124411124434_))))
                                (let ((_hd124415124440_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124416124437_)))
                                      (_tl124414124442_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124416124437_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124414124442_))
                                      (let ((_e124419124445_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124414124442_))))
                                        (let ((_hd124418124448_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124419124445_)))
                                              (_tl124417124450_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124419124445_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124417124450_))
                                              ((lambda (_L124453_ _L124454_)
                                                 (let* ((___stx126049126050_
                                                         _L124454_)
                                                        (_g124470124481_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx126049126050_)))))
                                                   (let ((___kont126051126052_
                                                          (lambda (_L124501_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L124502_)
                    (let ((_$e124514_
                           (let ((__tmp127774
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _L124502_))))
                             (declare (not safe))
                             (hash-get
                              gxc#basic-expression-type-annotations
                              __tmp127774))))
                      (if _$e124514_
                          ((lambda (_type-e124517_)
                             (_type-e124517_ _stx124405_ _L124454_))
                           _$e124514_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _L124453_))))))
                 (___kont126053126054_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__0 _L124453_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((___match126060126061_
                                                            (lambda (_e124476124493_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd124475124496_
                             _tl124474124498_)
                      (let ((_L124501_ _tl124474124498_)
                            (_L124502_ _hd124475124496_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L124502_))
                            (___kont126051126052_ _L124501_ _L124502_)
                            (___kont126053126054_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? ___stx126049126050_))
                   (let ((_e124476124493_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e ___stx126049126050_))))
                     (let ((_tl124474124498_
                            (let ()
                              (declare (not safe))
                              (##cdr _e124476124493_)))
                           (_hd124475124496_
                            (let ()
                              (declare (not safe))
                              (##car _e124476124493_))))
                       (___match126060126061_
                        _e124476124493_
                        _hd124475124496_
                        _tl124474124498_)))
                   (___kont126053126054_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd124418124448_
                                               _hd124415124440_)
                                              (let ()
                                                (declare (not safe))
                                                (_g124407124424_
                                                 _g124408124427_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124407124424_ _g124408124427_)))))
                              (let ()
                                (declare (not safe))
                                (_g124407124424_ _g124408124427_)))))
                      (let ()
                        (declare (not safe))
                        (_g124407124424_ _g124408124427_))))))
          (declare (not safe))
          (_g124406124522_ _stx124405_))))
    (define gxc#basic-expression-type-annotation-mop.class
      (lambda (_stx124249_ _ann124250_)
        (let* ((_g124252124289_
                (lambda (_g124253124286_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124253124286_))))
               (_g124251124402_
                (lambda (_g124253124292_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124253124292_))
                      (let ((_e124263124294_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124253124292_))))
                        (let ((_hd124262124297_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124263124294_)))
                              (_tl124261124299_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124263124294_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124261124299_))
                              (let ((_e124266124302_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124261124299_))))
                                (let ((_hd124265124305_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124266124302_)))
                                      (_tl124264124307_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124266124302_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124264124307_))
                                      (let ((_e124269124310_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124264124307_))))
                                        (let ((_hd124268124313_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124269124310_)))
                                              (_tl124267124315_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124269124310_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl124267124315_))
                                              (let ((_e124272124318_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl124267124315_))))
                                                (let ((_hd124271124321_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124272124318_)))
                                                      (_tl124270124323_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124272124318_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl124270124323_))
                                                      (let ((_e124275124326_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl124270124323_))))
                (let ((_hd124274124329_
                       (let () (declare (not safe)) (##car _e124275124326_)))
                      (_tl124273124331_
                       (let () (declare (not safe)) (##cdr _e124275124326_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl124273124331_))
                      (let ((_e124278124334_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl124273124331_))))
                        (let ((_hd124277124337_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124278124334_)))
                              (_tl124276124339_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124278124334_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124276124339_))
                              (let ((_e124281124342_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124276124339_))))
                                (let ((_hd124280124345_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124281124342_)))
                                      (_tl124279124347_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124281124342_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124279124347_))
                                      (let ((_e124284124350_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124279124347_))))
                                        (let ((_hd124283124353_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124284124350_)))
                                              (_tl124282124355_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124284124350_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124282124355_))
                                              ((lambda (_L124358_
                                                        _L124359_
                                                        _L124360_
                                                        _L124361_
                                                        _L124362_
                                                        _L124363_
                                                        _L124364_)
                                                 (let ((_type-id124394_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L124364_)))
                                                       (_super124395_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gxc#identifier-symbol
                                                           _L124363_)))
                                                       (_slots124396_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gx#stx-e
                                                           _L124362_)))
                                                       (_ctor-method124397_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L124361_)))
                                                       (_struct?124398_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L124360_)))
                                                       (_final?124399_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L124359_)))
                                                       (_metaclass124400_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _L124358_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#identifier-symbol
                                                               _L124358_))
                                                            '#f)))
                                                   (let ((__obj127732
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
                                                      __obj127732
                                                      _type-id124394_
                                                      _super124395_
                                                      _slots124396_
                                                      _ctor-method124397_
                                                      _struct?124398_
                                                      _final?124399_
                                                      _metaclass124400_)
                                                     __obj127732)))
                                               _hd124283124353_
                                               _hd124280124345_
                                               _hd124277124337_
                                               _hd124274124329_
                                               _hd124271124321_
                                               _hd124268124313_
                                               _hd124265124305_)
                                              (let ()
                                                (declare (not safe))
                                                (_g124252124289_
                                                 _g124253124292_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124252124289_ _g124253124292_)))))
                              (let ()
                                (declare (not safe))
                                (_g124252124289_ _g124253124292_)))))
                      (let ()
                        (declare (not safe))
                        (_g124252124289_ _g124253124292_)))))
              (let ()
                (declare (not safe))
                (_g124252124289_ _g124253124292_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g124252124289_
                                                 _g124253124292_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124252124289_ _g124253124292_)))))
                              (let ()
                                (declare (not safe))
                                (_g124252124289_ _g124253124292_)))))
                      (let ()
                        (declare (not safe))
                        (_g124252124289_ _g124253124292_))))))
          (declare (not safe))
          (_g124251124402_ _ann124250_))))
    (define gxc#basic-expression-type-annotation-mop.constructor
      (lambda (_stx124197_ _ann124198_)
        (let* ((_g124200124213_
                (lambda (_g124201124210_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124201124210_))))
               (_g124199124246_
                (lambda (_g124201124216_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124201124216_))
                      (let ((_e124205124218_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124201124216_))))
                        (let ((_hd124204124221_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124205124218_)))
                              (_tl124203124223_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124205124218_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124203124223_))
                              (let ((_e124208124226_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124203124223_))))
                                (let ((_hd124207124229_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124208124226_)))
                                      (_tl124206124231_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124208124226_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124206124231_))
                                      ((lambda (_L124234_)
                                         (let ((__tmp127775
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L124234_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!constructor::t
                                            __tmp127775)))
                                       _hd124207124229_)
                                      (let ()
                                        (declare (not safe))
                                        (_g124200124213_ _g124201124216_)))))
                              (let ()
                                (declare (not safe))
                                (_g124200124213_ _g124201124216_)))))
                      (let ()
                        (declare (not safe))
                        (_g124200124213_ _g124201124216_))))))
          (declare (not safe))
          (_g124199124246_ _ann124198_))))
    (define gxc#basic-expression-type-annotation-mop.predicate
      (lambda (_stx124145_ _ann124146_)
        (let* ((_g124148124161_
                (lambda (_g124149124158_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124149124158_))))
               (_g124147124194_
                (lambda (_g124149124164_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124149124164_))
                      (let ((_e124153124166_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124149124164_))))
                        (let ((_hd124152124169_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124153124166_)))
                              (_tl124151124171_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124153124166_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124151124171_))
                              (let ((_e124156124174_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124151124171_))))
                                (let ((_hd124155124177_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124156124174_)))
                                      (_tl124154124179_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124156124174_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124154124179_))
                                      ((lambda (_L124182_)
                                         (let ((__tmp127776
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L124182_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!predicate::t
                                            __tmp127776)))
                                       _hd124155124177_)
                                      (let ()
                                        (declare (not safe))
                                        (_g124148124161_ _g124149124164_)))))
                              (let ()
                                (declare (not safe))
                                (_g124148124161_ _g124149124164_)))))
                      (let ()
                        (declare (not safe))
                        (_g124148124161_ _g124149124164_))))))
          (declare (not safe))
          (_g124147124194_ _ann124146_))))
    (define gxc#basic-expression-type-annotation-mop.accessor
      (lambda (_stx124061_ _ann124062_)
        (let* ((_g124064124085_
                (lambda (_g124065124082_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124065124082_))))
               (_g124063124142_
                (lambda (_g124065124088_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124065124088_))
                      (let ((_e124071124090_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124065124088_))))
                        (let ((_hd124070124093_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124071124090_)))
                              (_tl124069124095_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124071124090_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124069124095_))
                              (let ((_e124074124098_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124069124095_))))
                                (let ((_hd124073124101_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124074124098_)))
                                      (_tl124072124103_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124074124098_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124072124103_))
                                      (let ((_e124077124106_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124072124103_))))
                                        (let ((_hd124076124109_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124077124106_)))
                                              (_tl124075124111_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124077124106_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl124075124111_))
                                              (let ((_e124080124114_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl124075124111_))))
                                                (let ((_hd124079124117_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124080124114_)))
                                                      (_tl124078124119_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124080124114_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124078124119_))
                                                      ((lambda (_L124122_
                                                                _L124123_
                                                                _L124124_)
                                                         (let ((__tmp127779
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L124124_)))
                       (__tmp127778
                        (let () (declare (not safe)) (gx#stx-e _L124123_)))
                       (__tmp127777
                        (let () (declare (not safe)) (gx#stx-e _L124122_))))
                   (declare (not safe))
                   (##structure
                    gxc#!accessor::t
                    __tmp127779
                    __tmp127778
                    __tmp127777)))
               _hd124079124117_
               _hd124076124109_
               _hd124073124101_)
              (let ()
                (declare (not safe))
                (_g124064124085_ _g124065124088_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g124064124085_
                                                 _g124065124088_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124064124085_ _g124065124088_)))))
                              (let ()
                                (declare (not safe))
                                (_g124064124085_ _g124065124088_)))))
                      (let ()
                        (declare (not safe))
                        (_g124064124085_ _g124065124088_))))))
          (declare (not safe))
          (_g124063124142_ _ann124062_))))
    (define gxc#basic-expression-type-annotation-mop.mutator
      (lambda (_stx123977_ _ann123978_)
        (let* ((_g123980124001_
                (lambda (_g123981123998_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g123981123998_))))
               (_g123979124058_
                (lambda (_g123981124004_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g123981124004_))
                      (let ((_e123987124006_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g123981124004_))))
                        (let ((_hd123986124009_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123987124006_)))
                              (_tl123985124011_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123987124006_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl123985124011_))
                              (let ((_e123990124014_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl123985124011_))))
                                (let ((_hd123989124017_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123990124014_)))
                                      (_tl123988124019_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123990124014_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl123988124019_))
                                      (let ((_e123993124022_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl123988124019_))))
                                        (let ((_hd123992124025_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123993124022_)))
                                              (_tl123991124027_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123993124022_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl123991124027_))
                                              (let ((_e123996124030_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl123991124027_))))
                                                (let ((_hd123995124033_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e123996124030_)))
                                                      (_tl123994124035_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e123996124030_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl123994124035_))
                                                      ((lambda (_L124038_
                                                                _L124039_
                                                                _L124040_)
                                                         (let ((__tmp127782
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L124040_)))
                       (__tmp127781
                        (let () (declare (not safe)) (gx#stx-e _L124039_)))
                       (__tmp127780
                        (let () (declare (not safe)) (gx#stx-e _L124038_))))
                   (declare (not safe))
                   (##structure
                    gxc#!mutator::t
                    __tmp127782
                    __tmp127781
                    __tmp127780)))
               _hd123995124033_
               _hd123992124025_
               _hd123989124017_)
              (let ()
                (declare (not safe))
                (_g123980124001_ _g123981124004_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g123980124001_
                                                 _g123981124004_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g123980124001_ _g123981124004_)))))
                              (let ()
                                (declare (not safe))
                                (_g123980124001_ _g123981124004_)))))
                      (let ()
                        (declare (not safe))
                        (_g123980124001_ _g123981124004_))))))
          (declare (not safe))
          (_g123979124058_ _ann123978_))))
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
      (lambda (_stx123097_)
        (let* ((___stx126063126064_ _stx123097_)
               (_g123103123299_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126063126064_)))))
          (let ((___kont126065126066_
                 (lambda (_L123965_)
                   (let ((__obj127733
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj127733
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L123965_))
                      '#f)
                     __obj127733)))
                (___kont126067126068_
                 (lambda (_L123892_
                          _L123893_
                          _L123894_
                          _L123895_
                          _L123896_
                          _L123897_)
                   (let* ((_tab123947_
                           (let () (declare (not safe)) (gx#stx-e _L123894_)))
                          (_keys123949_
                           (if _tab123947_
                               (let ((__tmp127783 (vector->list _tab123947_)))
                                 (declare (not safe))
                                 (filter values __tmp127783))
                               '#f)))
                     (let ((__tmp127784
                            (let ()
                              (declare (not safe))
                              (gxc#identifier-symbol _L123893_))))
                       (declare (not safe))
                       (##structure
                        gxc#!kw-lambda::t
                        'kw-lambda
                        _keys123949_
                        __tmp127784)))))
                (___kont126069126070_
                 (lambda (_L123625_
                          _L123626_
                          _L123627_
                          _L123628_
                          _L123629_
                          _L123630_
                          _L123631_
                          _L123632_
                          _L123633_
                          _L123634_)
                   (let ((__tmp127786
                          (map gx#stx-e
                               (let ((__tmp127787
                                      (lambda (_g123727123730_ _g123728123732_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g123727123730_
                                                _g123728123732_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp127787 '() _L123627_))))
                         (__tmp127785
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L123631_))))
                     (declare (not safe))
                     (##structure
                      gxc#!kw-lambda-primary::t
                      'kw-lambda-dispatch
                      __tmp127786
                      __tmp127785))))
                (___kont126073126074_
                 (lambda (_L123335_)
                   (let ((__obj127734
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj127734
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L123335_))
                      (let ()
                        (declare (not safe))
                        (gxc#dispatch-lambda-form-delegate _L123335_)))
                     __obj127734)))
                (___kont126075126076_
                 (lambda (_L123312_)
                   (let ((__obj127735
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj127735
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L123312_))
                      '#f)
                     __obj127735))))
            (let* ((___match126382126383_
                    (lambda (_e123290123327_ _hd123289123330_ _tl123288123332_)
                      (let ((_L123335_ _tl123288123332_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#dispatch-lambda-form? _L123335_))
                            (___kont126073126074_ _L123335_)
                            (___kont126075126076_ _tl123288123332_)))))
                   (___match126376126377_
                    (lambda (_e123184123349_
                             _hd123183123352_
                             _tl123182123354_
                             _e123187123357_
                             _hd123186123360_
                             _tl123185123362_
                             _e123190123365_
                             _hd123189123368_
                             _tl123188123370_
                             _e123193123373_
                             _hd123192123376_
                             _tl123191123378_
                             _e123196123381_
                             _hd123195123384_
                             _tl123194123386_
                             _e123199123389_
                             _hd123198123392_
                             _tl123197123394_
                             _e123202123397_
                             _hd123201123400_
                             _tl123200123402_
                             _e123205123405_
                             _hd123204123408_
                             _tl123203123410_
                             _e123208123413_
                             _hd123207123416_
                             _tl123206123418_
                             _e123211123421_
                             _hd123210123424_
                             _tl123209123426_
                             _e123214123429_
                             _hd123213123432_
                             _tl123212123434_
                             _e123217123437_
                             _hd123216123440_
                             _tl123215123442_
                             _e123220123445_
                             _hd123219123448_
                             _tl123218123450_
                             _e123223123453_
                             _hd123222123456_
                             _tl123221123458_
                             ___splice126071126072_
                             _target123224123461_
                             _tl123226123463_
                             _e123241123466_
                             _hd123240123469_
                             _tl123239123471_
                             _e123244123474_
                             _hd123243123477_
                             _tl123242123479_
                             _e123247123482_
                             _hd123246123485_
                             _tl123245123487_)
                      (letrec ((_loop123227123490_
                                (lambda (_hd123225123493_
                                         _-absent-value123231123495_
                                         _key123232123497_
                                         _-xkwvar123233123499_
                                         _-hash-ref123234123501_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd123225123493_))
                                      (let ((_e123228123504_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd123225123493_))))
                                        (let ((_lp-tl123230123509_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123228123504_)))
                                              (_lp-hd123229123507_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123228123504_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _lp-hd123229123507_))
                                              (let ((_e123250123512_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _lp-hd123229123507_))))
                                                (let ((_tl123248123517_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e123250123512_)))
                                                      (_hd123249123515_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e123250123512_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd123249123515_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#call
                                                             _hd123249123515_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl123248123517_))
                      (let ((_e123253123520_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl123248123517_))))
                        (let ((_tl123251123525_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123253123520_)))
                              (_hd123252123523_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123253123520_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd123252123523_))
                              (let ((_e123256123528_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd123252123523_))))
                                (let ((_tl123254123533_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123256123528_)))
                                      (_hd123255123531_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123256123528_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd123255123531_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd123255123531_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl123254123533_))
                                              (let ((_e123259123536_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl123254123533_))))
                                                (let ((_tl123257123541_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e123259123536_)))
                                                      (_hd123258123539_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e123259123536_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl123257123541_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl123251123525_))
                                                          (let ((_e123262123544_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl123251123525_))))
                    (let ((_tl123260123549_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123262123544_)))
                          (_hd123261123547_
                           (let ()
                             (declare (not safe))
                             (##car _e123262123544_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd123261123547_))
                          (let ((_e123265123552_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd123261123547_))))
                            (let ((_tl123263123557_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123265123552_)))
                                  (_hd123264123555_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123265123552_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd123264123555_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd123264123555_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl123263123557_))
                                          (let ((_e123268123560_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl123263123557_))))
                                            (let ((_tl123266123565_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e123268123560_)))
                                                  (_hd123267123563_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e123268123560_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl123266123565_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl123260123549_))
                                                      (let ((_e123271123568_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl123260123549_))))
                (let ((_tl123269123573_
                       (let () (declare (not safe)) (##cdr _e123271123568_)))
                      (_hd123270123571_
                       (let () (declare (not safe)) (##car _e123271123568_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd123270123571_))
                      (let ((_e123274123576_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd123270123571_))))
                        (let ((_tl123272123581_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123274123576_)))
                              (_hd123273123579_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123274123576_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd123273123579_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#quote _hd123273123579_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl123272123581_))
                                      (let ((_e123277123584_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl123272123581_))))
                                        (let ((_tl123275123589_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123277123584_)))
                                              (_hd123276123587_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123277123584_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123275123589_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl123269123573_))
                                                  (let ((_e123280123592_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl123269123573_))))
                                                    (let ((_tl123278123597_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e123280123592_)))
                                                          (_hd123279123595_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e123280123592_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd123279123595_))
                                                          (let ((_e123283123600_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd123279123595_))))
                    (let ((_tl123281123605_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123283123600_)))
                          (_hd123282123603_
                           (let ()
                             (declare (not safe))
                             (##car _e123283123600_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd123282123603_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd123282123603_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl123281123605_))
                                  (let ((_e123286123608_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl123281123605_))))
                                    (let ((_tl123284123613_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123286123608_)))
                                          (_hd123285123611_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123286123608_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl123284123613_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123278123597_))
                                              (let ((__tmp127802
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd123285123611_
                                                             _-absent-value123231123495_)))
                                                    (__tmp127801
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd123276123587_
                                                             _key123232123497_)))
                                                    (__tmp127800
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd123267123563_
                                                             _-xkwvar123233123499_)))
                                                    (__tmp127799
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd123258123539_
                                                             _-hash-ref123234123501_))))
                                                (declare (not safe))
                                                (_loop123227123490_
                                                 _lp-tl123230123509_
                                                 __tmp127802
                                                 __tmp127801
                                                 __tmp127800
                                                 __tmp127799))
                                              (___match126382126383_
                                               _e123184123349_
                                               _hd123183123352_
                                               _tl123182123354_))
                                          (___match126382126383_
                                           _e123184123349_
                                           _hd123183123352_
                                           _tl123182123354_))))
                                  (___match126382126383_
                                   _e123184123349_
                                   _hd123183123352_
                                   _tl123182123354_))
                              (___match126382126383_
                               _e123184123349_
                               _hd123183123352_
                               _tl123182123354_))
                          (___match126382126383_
                           _e123184123349_
                           _hd123183123352_
                           _tl123182123354_))))
                  (___match126382126383_
                   _e123184123349_
                   _hd123183123352_
                   _tl123182123354_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126382126383_
                                                   _e123184123349_
                                                   _hd123183123352_
                                                   _tl123182123354_))
                                              (___match126382126383_
                                               _e123184123349_
                                               _hd123183123352_
                                               _tl123182123354_))))
                                      (___match126382126383_
                                       _e123184123349_
                                       _hd123183123352_
                                       _tl123182123354_))
                                  (___match126382126383_
                                   _e123184123349_
                                   _hd123183123352_
                                   _tl123182123354_))
                              (___match126382126383_
                               _e123184123349_
                               _hd123183123352_
                               _tl123182123354_))))
                      (___match126382126383_
                       _e123184123349_
                       _hd123183123352_
                       _tl123182123354_))))
              (___match126382126383_
               _e123184123349_
               _hd123183123352_
               _tl123182123354_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126382126383_
                                                   _e123184123349_
                                                   _hd123183123352_
                                                   _tl123182123354_))))
                                          (___match126382126383_
                                           _e123184123349_
                                           _hd123183123352_
                                           _tl123182123354_))
                                      (___match126382126383_
                                       _e123184123349_
                                       _hd123183123352_
                                       _tl123182123354_))
                                  (___match126382126383_
                                   _e123184123349_
                                   _hd123183123352_
                                   _tl123182123354_))))
                          (___match126382126383_
                           _e123184123349_
                           _hd123183123352_
                           _tl123182123354_))))
                  (___match126382126383_
                   _e123184123349_
                   _hd123183123352_
                   _tl123182123354_))
              (___match126382126383_
               _e123184123349_
               _hd123183123352_
               _tl123182123354_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match126382126383_
                                               _e123184123349_
                                               _hd123183123352_
                                               _tl123182123354_))
                                          (___match126382126383_
                                           _e123184123349_
                                           _hd123183123352_
                                           _tl123182123354_))
                                      (___match126382126383_
                                       _e123184123349_
                                       _hd123183123352_
                                       _tl123182123354_))))
                              (___match126382126383_
                               _e123184123349_
                               _hd123183123352_
                               _tl123182123354_))))
                      (___match126382126383_
                       _e123184123349_
                       _hd123183123352_
                       _tl123182123354_))
                  (___match126382126383_
                   _e123184123349_
                   _hd123183123352_
                   _tl123182123354_))
              (___match126382126383_
               _e123184123349_
               _hd123183123352_
               _tl123182123354_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match126382126383_
                                               _e123184123349_
                                               _hd123183123352_
                                               _tl123182123354_))))
                                      (let ((_-hash-ref123238123622_
                                             (reverse _-hash-ref123234123501_))
                                            (_-xkwvar123237123620_
                                             (reverse _-xkwvar123233123499_))
                                            (_key123236123618_
                                             (reverse _key123232123497_))
                                            (_-absent-value123235123616_
                                             (reverse _-absent-value123231123495_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl123191123378_))
                                            (let ((_L123625_ _hd123246123485_)
                                                  (_L123626_
                                                   _-absent-value123235123616_)
                                                  (_L123627_ _key123236123618_)
                                                  (_L123628_
                                                   _-xkwvar123237123620_)
                                                  (_L123629_
                                                   _-hash-ref123238123622_)
                                                  (_L123630_ _hd123222123456_)
                                                  (_L123631_ _hd123213123432_)
                                                  (_L123632_ _hd123204123408_)
                                                  (_L123633_ _tl123188123370_)
                                                  (_L123634_ _hd123189123368_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L123634_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L123633_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#runtime-identifier=?
                                                          _L123632_
                                                          'apply))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#free-identifier=?
                                                          _L123634_
                                                          _L123630_))
                                                       (let ((__tmp127797
                                                              (let ((__tmp127798
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g123687123690_ _g123688123692_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g123687123690_ _g123688123692_)))))
                        (declare (not safe))
                        (foldr1 __tmp127798 '() _L123627_))))
                 (declare (not safe))
                 (andmap1 gx#stx-keyword? __tmp127797))
               (let ((__tmp127796
                      (lambda (_g123694123696_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g123694123696_
                           'hash-ref))))
                     (__tmp127794
                      (let ((__tmp127795
                             (lambda (_g123698123701_ _g123699123703_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g123698123701_ _g123699123703_)))))
                        (declare (not safe))
                        (foldr1 __tmp127795 '() _L123629_))))
                 (declare (not safe))
                 (andmap1 __tmp127796 __tmp127794))
               (let ((__tmp127793
                      (lambda (_g123705123707_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g123705123707_
                           'absent-value))))
                     (__tmp127791
                      (let ((__tmp127792
                             (lambda (_g123709123712_ _g123710123714_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g123709123712_ _g123710123714_)))))
                        (declare (not safe))
                        (foldr1 __tmp127792 '() _L123626_))))
                 (declare (not safe))
                 (andmap1 __tmp127793 __tmp127791))
               (let ((__tmp127790
                      (lambda (_g123716123718_)
                        (let ()
                          (declare (not safe))
                          (gx#free-identifier=? _g123716123718_ _L123634_))))
                     (__tmp127788
                      (let ((__tmp127789
                             (lambda (_g123720123723_ _g123721123725_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g123720123723_ _g123721123725_)))))
                        (declare (not safe))
                        (foldr1 __tmp127789 '() _L123628_))))
                 (declare (not safe))
                 (andmap1 __tmp127790 __tmp127788)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont126069126070_
                                                   _L123625_
                                                   _L123626_
                                                   _L123627_
                                                   _L123628_
                                                   _L123629_
                                                   _L123630_
                                                   _L123631_
                                                   _L123632_
                                                   _L123633_
                                                   _L123634_)
                                                  (___match126382126383_
                                                   _e123184123349_
                                                   _hd123183123352_
                                                   _tl123182123354_)))
                                            (___match126382126383_
                                             _e123184123349_
                                             _hd123183123352_
                                             _tl123182123354_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop123227123490_
                           _target123224123461_
                           '()
                           '()
                           '()
                           '())))))
                   (___match126248126249_
                    (lambda (_e123184123349_
                             _hd123183123352_
                             _tl123182123354_
                             _e123187123357_
                             _hd123186123360_
                             _tl123185123362_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd123186123360_))
                          (let ((_e123190123365_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd123186123360_))))
                            (let ((_tl123188123370_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123190123365_)))
                                  (_hd123189123368_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123190123365_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl123185123362_))
                                  (let ((_e123193123373_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl123185123362_))))
                                    (let ((_tl123191123378_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123193123373_)))
                                          (_hd123192123376_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123193123373_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd123192123376_))
                                          (let ((_e123196123381_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd123192123376_))))
                                            (let ((_tl123194123386_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e123196123381_)))
                                                  (_hd123195123384_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e123196123381_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd123195123384_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd123195123384_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl123194123386_))
                                                          (let ((_e123199123389_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl123194123386_))))
                    (let ((_tl123197123394_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123199123389_)))
                          (_hd123198123392_
                           (let ()
                             (declare (not safe))
                             (##car _e123199123389_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd123198123392_))
                          (let ((_e123202123397_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd123198123392_))))
                            (let ((_tl123200123402_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123202123397_)))
                                  (_hd123201123400_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123202123397_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd123201123400_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd123201123400_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl123200123402_))
                                          (let ((_e123205123405_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl123200123402_))))
                                            (let ((_tl123203123410_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e123205123405_)))
                                                  (_hd123204123408_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e123205123405_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl123203123410_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl123197123394_))
                                                      (let ((_e123208123413_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl123197123394_))))
                (let ((_tl123206123418_
                       (let () (declare (not safe)) (##cdr _e123208123413_)))
                      (_hd123207123416_
                       (let () (declare (not safe)) (##car _e123208123413_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd123207123416_))
                      (let ((_e123211123421_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd123207123416_))))
                        (let ((_tl123209123426_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123211123421_)))
                              (_hd123210123424_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123211123421_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd123210123424_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd123210123424_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl123209123426_))
                                      (let ((_e123214123429_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl123209123426_))))
                                        (let ((_tl123212123434_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123214123429_)))
                                              (_hd123213123432_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123214123429_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123212123434_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl123206123418_))
                                                  (let ((_e123217123437_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl123206123418_))))
                                                    (let ((_tl123215123442_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e123217123437_)))
                                                          (_hd123216123440_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e123217123437_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd123216123440_))
                                                          (let ((_e123220123445_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd123216123440_))))
                    (let ((_tl123218123450_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123220123445_)))
                          (_hd123219123448_
                           (let ()
                             (declare (not safe))
                             (##car _e123220123445_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd123219123448_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd123219123448_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl123218123450_))
                                  (let ((_e123223123453_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl123218123450_))))
                                    (let ((_tl123221123458_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123223123453_)))
                                          (_hd123222123456_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123223123453_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl123221123458_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl123215123442_))
                                              (if (fx>= (let ()
                                                          (declare (not safe))
                                                          (gx#stx-length
                                                           _tl123215123442_))
                                                        '1)
                                                  (let ((___splice126071126072_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl123215123442_
                                                            '1))))
                                                    (let ((_tl123226123463_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126071126072_
                                                              '1)))
                                                          (_target123224123461_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126071126072_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl123226123463_))
                                                          (let ((_e123241123466_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl123226123463_))))
                    (let ((_tl123239123471_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123241123466_)))
                          (_hd123240123469_
                           (let ()
                             (declare (not safe))
                             (##car _e123241123466_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd123240123469_))
                          (let ((_e123244123474_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd123240123469_))))
                            (let ((_tl123242123479_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123244123474_)))
                                  (_hd123243123477_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123244123474_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd123243123477_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd123243123477_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl123242123479_))
                                          (let ((_e123247123482_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl123242123479_))))
                                            (let ((_tl123245123487_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e123247123482_)))
                                                  (_hd123246123485_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e123247123482_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl123245123487_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl123239123471_))
                                                      (___match126376126377_
                                                       _e123184123349_
                                                       _hd123183123352_
                                                       _tl123182123354_
                                                       _e123187123357_
                                                       _hd123186123360_
                                                       _tl123185123362_
                                                       _e123190123365_
                                                       _hd123189123368_
                                                       _tl123188123370_
                                                       _e123193123373_
                                                       _hd123192123376_
                                                       _tl123191123378_
                                                       _e123196123381_
                                                       _hd123195123384_
                                                       _tl123194123386_
                                                       _e123199123389_
                                                       _hd123198123392_
                                                       _tl123197123394_
                                                       _e123202123397_
                                                       _hd123201123400_
                                                       _tl123200123402_
                                                       _e123205123405_
                                                       _hd123204123408_
                                                       _tl123203123410_
                                                       _e123208123413_
                                                       _hd123207123416_
                                                       _tl123206123418_
                                                       _e123211123421_
                                                       _hd123210123424_
                                                       _tl123209123426_
                                                       _e123214123429_
                                                       _hd123213123432_
                                                       _tl123212123434_
                                                       _e123217123437_
                                                       _hd123216123440_
                                                       _tl123215123442_
                                                       _e123220123445_
                                                       _hd123219123448_
                                                       _tl123218123450_
                                                       _e123223123453_
                                                       _hd123222123456_
                                                       _tl123221123458_
                                                       ___splice126071126072_
                                                       _target123224123461_
                                                       _tl123226123463_
                                                       _e123241123466_
                                                       _hd123240123469_
                                                       _tl123239123471_
                                                       _e123244123474_
                                                       _hd123243123477_
                                                       _tl123242123479_
                                                       _e123247123482_
                                                       _hd123246123485_
                                                       _tl123245123487_)
                                                      (___match126382126383_
                                                       _e123184123349_
                                                       _hd123183123352_
                                                       _tl123182123354_))
                                                  (___match126382126383_
                                                   _e123184123349_
                                                   _hd123183123352_
                                                   _tl123182123354_))))
                                          (___match126382126383_
                                           _e123184123349_
                                           _hd123183123352_
                                           _tl123182123354_))
                                      (___match126382126383_
                                       _e123184123349_
                                       _hd123183123352_
                                       _tl123182123354_))
                                  (___match126382126383_
                                   _e123184123349_
                                   _hd123183123352_
                                   _tl123182123354_))))
                          (___match126382126383_
                           _e123184123349_
                           _hd123183123352_
                           _tl123182123354_))))
                  (___match126382126383_
                   _e123184123349_
                   _hd123183123352_
                   _tl123182123354_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126382126383_
                                                   _e123184123349_
                                                   _hd123183123352_
                                                   _tl123182123354_))
                                              (___match126382126383_
                                               _e123184123349_
                                               _hd123183123352_
                                               _tl123182123354_))
                                          (___match126382126383_
                                           _e123184123349_
                                           _hd123183123352_
                                           _tl123182123354_))))
                                  (___match126382126383_
                                   _e123184123349_
                                   _hd123183123352_
                                   _tl123182123354_))
                              (___match126382126383_
                               _e123184123349_
                               _hd123183123352_
                               _tl123182123354_))
                          (___match126382126383_
                           _e123184123349_
                           _hd123183123352_
                           _tl123182123354_))))
                  (___match126382126383_
                   _e123184123349_
                   _hd123183123352_
                   _tl123182123354_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126382126383_
                                                   _e123184123349_
                                                   _hd123183123352_
                                                   _tl123182123354_))
                                              (___match126382126383_
                                               _e123184123349_
                                               _hd123183123352_
                                               _tl123182123354_))))
                                      (___match126382126383_
                                       _e123184123349_
                                       _hd123183123352_
                                       _tl123182123354_))
                                  (___match126382126383_
                                   _e123184123349_
                                   _hd123183123352_
                                   _tl123182123354_))
                              (___match126382126383_
                               _e123184123349_
                               _hd123183123352_
                               _tl123182123354_))))
                      (___match126382126383_
                       _e123184123349_
                       _hd123183123352_
                       _tl123182123354_))))
              (___match126382126383_
               _e123184123349_
               _hd123183123352_
               _tl123182123354_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126382126383_
                                                   _e123184123349_
                                                   _hd123183123352_
                                                   _tl123182123354_))))
                                          (___match126382126383_
                                           _e123184123349_
                                           _hd123183123352_
                                           _tl123182123354_))
                                      (___match126382126383_
                                       _e123184123349_
                                       _hd123183123352_
                                       _tl123182123354_))
                                  (___match126382126383_
                                   _e123184123349_
                                   _hd123183123352_
                                   _tl123182123354_))))
                          (___match126382126383_
                           _e123184123349_
                           _hd123183123352_
                           _tl123182123354_))))
                  (___match126382126383_
                   _e123184123349_
                   _hd123183123352_
                   _tl123182123354_))
              (___match126382126383_
               _e123184123349_
               _hd123183123352_
               _tl123182123354_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126382126383_
                                                   _e123184123349_
                                                   _hd123183123352_
                                                   _tl123182123354_))))
                                          (___match126382126383_
                                           _e123184123349_
                                           _hd123183123352_
                                           _tl123182123354_))))
                                  (___match126382126383_
                                   _e123184123349_
                                   _hd123183123352_
                                   _tl123182123354_))))
                          (___match126382126383_
                           _e123184123349_
                           _hd123183123352_
                           _tl123182123354_))))
                   (___match126236126237_
                    (lambda (_e123117123740_
                             _hd123116123743_
                             _tl123115123745_
                             _e123120123748_
                             _hd123119123751_
                             _tl123118123753_
                             _e123123123756_
                             _hd123122123759_
                             _tl123121123761_
                             _e123126123764_
                             _hd123125123767_
                             _tl123124123769_
                             _e123129123772_
                             _hd123128123775_
                             _tl123127123777_
                             _e123132123780_
                             _hd123131123783_
                             _tl123130123785_
                             _e123135123788_
                             _hd123134123791_
                             _tl123133123793_
                             _e123138123796_
                             _hd123137123799_
                             _tl123136123801_
                             _e123141123804_
                             _hd123140123807_
                             _tl123139123809_
                             _e123144123812_
                             _hd123143123815_
                             _tl123142123817_
                             _e123147123820_
                             _hd123146123823_
                             _tl123145123825_
                             _e123150123828_
                             _hd123149123831_
                             _tl123148123833_
                             _e123153123836_
                             _hd123152123839_
                             _tl123151123841_
                             _e123156123844_
                             _hd123155123847_
                             _tl123154123849_
                             _e123159123852_
                             _hd123158123855_
                             _tl123157123857_
                             _e123162123860_
                             _hd123161123863_
                             _tl123160123865_
                             _e123165123868_
                             _hd123164123871_
                             _tl123163123873_
                             _e123168123876_
                             _hd123167123879_
                             _tl123166123881_
                             _e123171123884_
                             _hd123170123887_
                             _tl123169123889_)
                      (let ((_L123892_ _hd123170123887_)
                            (_L123893_ _hd123161123863_)
                            (_L123894_ _hd123152123839_)
                            (_L123895_ _hd123143123815_)
                            (_L123896_ _hd123134123791_)
                            (_L123897_ _hd123119123751_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L123897_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L123896_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _L123895_
                                    'keyword-dispatch))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L123897_ _L123892_)))
                            (___kont126067126068_
                             _L123892_
                             _L123893_
                             _L123894_
                             _L123895_
                             _L123896_
                             _L123897_)
                            (___match126248126249_
                             _e123117123740_
                             _hd123116123743_
                             _tl123115123745_
                             _e123120123748_
                             _hd123119123751_
                             _tl123118123753_)))))
                   (___match126090126091_
                    (lambda (_e123117123740_ _hd123116123743_ _tl123115123745_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl123115123745_))
                          (let ((_e123120123748_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl123115123745_))))
                            (let ((_tl123118123753_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123120123748_)))
                                  (_hd123119123751_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123120123748_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl123118123753_))
                                  (let ((_e123123123756_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl123118123753_))))
                                    (let ((_tl123121123761_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123123123756_)))
                                          (_hd123122123759_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123123123756_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd123122123759_))
                                          (let ((_e123126123764_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd123122123759_))))
                                            (let ((_tl123124123769_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e123126123764_)))
                                                  (_hd123125123767_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e123126123764_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd123125123767_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd123125123767_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl123124123769_))
                                                          (let ((_e123129123772_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl123124123769_))))
                    (let ((_tl123127123777_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123129123772_)))
                          (_hd123128123775_
                           (let ()
                             (declare (not safe))
                             (##car _e123129123772_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd123128123775_))
                          (let ((_e123132123780_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd123128123775_))))
                            (let ((_tl123130123785_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123132123780_)))
                                  (_hd123131123783_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123132123780_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd123131123783_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd123131123783_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl123130123785_))
                                          (let ((_e123135123788_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl123130123785_))))
                                            (let ((_tl123133123793_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e123135123788_)))
                                                  (_hd123134123791_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e123135123788_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl123133123793_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl123127123777_))
                                                      (let ((_e123138123796_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl123127123777_))))
                (let ((_tl123136123801_
                       (let () (declare (not safe)) (##cdr _e123138123796_)))
                      (_hd123137123799_
                       (let () (declare (not safe)) (##car _e123138123796_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd123137123799_))
                      (let ((_e123141123804_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd123137123799_))))
                        (let ((_tl123139123809_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123141123804_)))
                              (_hd123140123807_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123141123804_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd123140123807_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd123140123807_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl123139123809_))
                                      (let ((_e123144123812_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl123139123809_))))
                                        (let ((_tl123142123817_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123144123812_)))
                                              (_hd123143123815_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123144123812_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123142123817_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl123136123801_))
                                                  (let ((_e123147123820_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl123136123801_))))
                                                    (let ((_tl123145123825_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e123147123820_)))
                                                          (_hd123146123823_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e123147123820_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd123146123823_))
                                                          (let ((_e123150123828_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd123146123823_))))
                    (let ((_tl123148123833_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123150123828_)))
                          (_hd123149123831_
                           (let ()
                             (declare (not safe))
                             (##car _e123150123828_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd123149123831_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd123149123831_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl123148123833_))
                                  (let ((_e123153123836_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl123148123833_))))
                                    (let ((_tl123151123841_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123153123836_)))
                                          (_hd123152123839_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123153123836_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl123151123841_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl123145123825_))
                                              (let ((_e123156123844_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl123145123825_))))
                                                (let ((_tl123154123849_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e123156123844_)))
                                                      (_hd123155123847_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e123156123844_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd123155123847_))
                                                      (let ((_e123159123852_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd123155123847_))))
                (let ((_tl123157123857_
                       (let () (declare (not safe)) (##cdr _e123159123852_)))
                      (_hd123158123855_
                       (let () (declare (not safe)) (##car _e123159123852_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd123158123855_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd123158123855_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl123157123857_))
                              (let ((_e123162123860_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl123157123857_))))
                                (let ((_tl123160123865_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123162123860_)))
                                      (_hd123161123863_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123162123860_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl123160123865_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl123154123849_))
                                          (let ((_e123165123868_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl123154123849_))))
                                            (let ((_tl123163123873_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e123165123868_)))
                                                  (_hd123164123871_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e123165123868_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd123164123871_))
                                                  (let ((_e123168123876_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd123164123871_))))
                                                    (let ((_tl123166123881_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e123168123876_)))
                                                          (_hd123167123879_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e123168123876_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd123167123879_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _hd123167123879_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl123166123881_))
                          (let ((_e123171123884_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl123166123881_))))
                            (let ((_tl123169123889_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123171123884_)))
                                  (_hd123170123887_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123171123884_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl123169123889_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl123163123873_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl123121123761_))
                                          (___match126236126237_
                                           _e123117123740_
                                           _hd123116123743_
                                           _tl123115123745_
                                           _e123120123748_
                                           _hd123119123751_
                                           _tl123118123753_
                                           _e123123123756_
                                           _hd123122123759_
                                           _tl123121123761_
                                           _e123126123764_
                                           _hd123125123767_
                                           _tl123124123769_
                                           _e123129123772_
                                           _hd123128123775_
                                           _tl123127123777_
                                           _e123132123780_
                                           _hd123131123783_
                                           _tl123130123785_
                                           _e123135123788_
                                           _hd123134123791_
                                           _tl123133123793_
                                           _e123138123796_
                                           _hd123137123799_
                                           _tl123136123801_
                                           _e123141123804_
                                           _hd123140123807_
                                           _tl123139123809_
                                           _e123144123812_
                                           _hd123143123815_
                                           _tl123142123817_
                                           _e123147123820_
                                           _hd123146123823_
                                           _tl123145123825_
                                           _e123150123828_
                                           _hd123149123831_
                                           _tl123148123833_
                                           _e123153123836_
                                           _hd123152123839_
                                           _tl123151123841_
                                           _e123156123844_
                                           _hd123155123847_
                                           _tl123154123849_
                                           _e123159123852_
                                           _hd123158123855_
                                           _tl123157123857_
                                           _e123162123860_
                                           _hd123161123863_
                                           _tl123160123865_
                                           _e123165123868_
                                           _hd123164123871_
                                           _tl123163123873_
                                           _e123168123876_
                                           _hd123167123879_
                                           _tl123166123881_
                                           _e123171123884_
                                           _hd123170123887_
                                           _tl123169123889_)
                                          (___match126248126249_
                                           _e123117123740_
                                           _hd123116123743_
                                           _tl123115123745_
                                           _e123120123748_
                                           _hd123119123751_
                                           _tl123118123753_))
                                      (___match126248126249_
                                       _e123117123740_
                                       _hd123116123743_
                                       _tl123115123745_
                                       _e123120123748_
                                       _hd123119123751_
                                       _tl123118123753_))
                                  (___match126248126249_
                                   _e123117123740_
                                   _hd123116123743_
                                   _tl123115123745_
                                   _e123120123748_
                                   _hd123119123751_
                                   _tl123118123753_))))
                          (___match126248126249_
                           _e123117123740_
                           _hd123116123743_
                           _tl123115123745_
                           _e123120123748_
                           _hd123119123751_
                           _tl123118123753_))
                      (___match126248126249_
                       _e123117123740_
                       _hd123116123743_
                       _tl123115123745_
                       _e123120123748_
                       _hd123119123751_
                       _tl123118123753_))
                  (___match126248126249_
                   _e123117123740_
                   _hd123116123743_
                   _tl123115123745_
                   _e123120123748_
                   _hd123119123751_
                   _tl123118123753_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126248126249_
                                                   _e123117123740_
                                                   _hd123116123743_
                                                   _tl123115123745_
                                                   _e123120123748_
                                                   _hd123119123751_
                                                   _tl123118123753_))))
                                          (___match126248126249_
                                           _e123117123740_
                                           _hd123116123743_
                                           _tl123115123745_
                                           _e123120123748_
                                           _hd123119123751_
                                           _tl123118123753_))
                                      (___match126248126249_
                                       _e123117123740_
                                       _hd123116123743_
                                       _tl123115123745_
                                       _e123120123748_
                                       _hd123119123751_
                                       _tl123118123753_))))
                              (___match126248126249_
                               _e123117123740_
                               _hd123116123743_
                               _tl123115123745_
                               _e123120123748_
                               _hd123119123751_
                               _tl123118123753_))
                          (___match126248126249_
                           _e123117123740_
                           _hd123116123743_
                           _tl123115123745_
                           _e123120123748_
                           _hd123119123751_
                           _tl123118123753_))
                      (___match126248126249_
                       _e123117123740_
                       _hd123116123743_
                       _tl123115123745_
                       _e123120123748_
                       _hd123119123751_
                       _tl123118123753_))))
              (___match126248126249_
               _e123117123740_
               _hd123116123743_
               _tl123115123745_
               _e123120123748_
               _hd123119123751_
               _tl123118123753_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match126248126249_
                                               _e123117123740_
                                               _hd123116123743_
                                               _tl123115123745_
                                               _e123120123748_
                                               _hd123119123751_
                                               _tl123118123753_))
                                          (___match126248126249_
                                           _e123117123740_
                                           _hd123116123743_
                                           _tl123115123745_
                                           _e123120123748_
                                           _hd123119123751_
                                           _tl123118123753_))))
                                  (___match126248126249_
                                   _e123117123740_
                                   _hd123116123743_
                                   _tl123115123745_
                                   _e123120123748_
                                   _hd123119123751_
                                   _tl123118123753_))
                              (___match126248126249_
                               _e123117123740_
                               _hd123116123743_
                               _tl123115123745_
                               _e123120123748_
                               _hd123119123751_
                               _tl123118123753_))
                          (___match126248126249_
                           _e123117123740_
                           _hd123116123743_
                           _tl123115123745_
                           _e123120123748_
                           _hd123119123751_
                           _tl123118123753_))))
                  (___match126248126249_
                   _e123117123740_
                   _hd123116123743_
                   _tl123115123745_
                   _e123120123748_
                   _hd123119123751_
                   _tl123118123753_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126248126249_
                                                   _e123117123740_
                                                   _hd123116123743_
                                                   _tl123115123745_
                                                   _e123120123748_
                                                   _hd123119123751_
                                                   _tl123118123753_))
                                              (___match126248126249_
                                               _e123117123740_
                                               _hd123116123743_
                                               _tl123115123745_
                                               _e123120123748_
                                               _hd123119123751_
                                               _tl123118123753_))))
                                      (___match126248126249_
                                       _e123117123740_
                                       _hd123116123743_
                                       _tl123115123745_
                                       _e123120123748_
                                       _hd123119123751_
                                       _tl123118123753_))
                                  (___match126248126249_
                                   _e123117123740_
                                   _hd123116123743_
                                   _tl123115123745_
                                   _e123120123748_
                                   _hd123119123751_
                                   _tl123118123753_))
                              (___match126248126249_
                               _e123117123740_
                               _hd123116123743_
                               _tl123115123745_
                               _e123120123748_
                               _hd123119123751_
                               _tl123118123753_))))
                      (___match126248126249_
                       _e123117123740_
                       _hd123116123743_
                       _tl123115123745_
                       _e123120123748_
                       _hd123119123751_
                       _tl123118123753_))))
              (___match126248126249_
               _e123117123740_
               _hd123116123743_
               _tl123115123745_
               _e123120123748_
               _hd123119123751_
               _tl123118123753_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126248126249_
                                                   _e123117123740_
                                                   _hd123116123743_
                                                   _tl123115123745_
                                                   _e123120123748_
                                                   _hd123119123751_
                                                   _tl123118123753_))))
                                          (___match126248126249_
                                           _e123117123740_
                                           _hd123116123743_
                                           _tl123115123745_
                                           _e123120123748_
                                           _hd123119123751_
                                           _tl123118123753_))
                                      (___match126248126249_
                                       _e123117123740_
                                       _hd123116123743_
                                       _tl123115123745_
                                       _e123120123748_
                                       _hd123119123751_
                                       _tl123118123753_))
                                  (___match126248126249_
                                   _e123117123740_
                                   _hd123116123743_
                                   _tl123115123745_
                                   _e123120123748_
                                   _hd123119123751_
                                   _tl123118123753_))))
                          (___match126248126249_
                           _e123117123740_
                           _hd123116123743_
                           _tl123115123745_
                           _e123120123748_
                           _hd123119123751_
                           _tl123118123753_))))
                  (___match126248126249_
                   _e123117123740_
                   _hd123116123743_
                   _tl123115123745_
                   _e123120123748_
                   _hd123119123751_
                   _tl123118123753_))
              (___match126248126249_
               _e123117123740_
               _hd123116123743_
               _tl123115123745_
               _e123120123748_
               _hd123119123751_
               _tl123118123753_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126248126249_
                                                   _e123117123740_
                                                   _hd123116123743_
                                                   _tl123115123745_
                                                   _e123120123748_
                                                   _hd123119123751_
                                                   _tl123118123753_))))
                                          (___match126248126249_
                                           _e123117123740_
                                           _hd123116123743_
                                           _tl123115123745_
                                           _e123120123748_
                                           _hd123119123751_
                                           _tl123118123753_))))
                                  (___match126248126249_
                                   _e123117123740_
                                   _hd123116123743_
                                   _tl123115123745_
                                   _e123120123748_
                                   _hd123119123751_
                                   _tl123118123753_))))
                          (___match126382126383_
                           _e123117123740_
                           _hd123116123743_
                           _tl123115123745_)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx126063126064_))
                  (let ((_e123108123957_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx126063126064_))))
                    (let ((_tl123106123962_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123108123957_)))
                          (_hd123107123960_
                           (let ()
                             (declare (not safe))
                             (##car _e123108123957_))))
                      (if (gxc#current-compile-type-closure)
                          (let ((_L123965_ _tl123106123962_))
                            (___kont126065126066_ _L123965_))
                          (___match126090126091_
                           _e123108123957_
                           _hd123107123960_
                           _tl123106123962_))))
                  (let () (declare (not safe)) (_g123103123299_))))))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_stx123052_)
        (letrec ((_clause-e123054_
                  (lambda (_form123095_)
                    (let ((__obj127736
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
                       __obj127736
                       'case-lambda-clause
                       (let ()
                         (declare (not safe))
                         (gxc#lambda-form-arity _form123095_))
                       (if (let ((__tmp127803
                                  (gxc#current-compile-type-closure)))
                             (declare (not safe))
                             (not __tmp127803))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form? _form123095_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form-delegate
                                  _form123095_))
                               '#f)
                           '#f))
                      __obj127736))))
          (let* ((_g123056123066_
                  (lambda (_g123057123063_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g123057123063_))))
                 (_g123055123092_
                  (lambda (_g123057123069_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g123057123069_))
                        (let ((_e123061123071_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g123057123069_))))
                          (let ((_hd123060123074_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123061123071_)))
                                (_tl123059123076_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123061123071_))))
                            ((lambda (_L123079_)
                               (let ((_clauses123090_
                                      (map _clause-e123054_ _L123079_)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#!case-lambda::t
                                  'case-lambda
                                  _clauses123090_)))
                             _tl123059123076_)))
                        (let ()
                          (declare (not safe))
                          (_g123056123066_ _g123057123069_))))))
            (declare (not safe))
            (_g123055123092_ _stx123052_)))))
    (define gxc#basic-expression-type-let-values%
      (lambda (_stx122984_)
        (let* ((_g122986123003_
                (lambda (_g122987123000_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g122987123000_))))
               (_g122985123049_
                (lambda (_g122987123006_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g122987123006_))
                      (let ((_e122992123008_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g122987123006_))))
                        (let ((_hd122991123011_
                               (let ()
                                 (declare (not safe))
                                 (##car _e122992123008_)))
                              (_tl122990123013_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e122992123008_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl122990123013_))
                              (let ((_e122995123016_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl122990123013_))))
                                (let ((_hd122994123019_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e122995123016_)))
                                      (_tl122993123021_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e122995123016_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl122993123021_))
                                      (let ((_e122998123024_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl122993123021_))))
                                        (let ((_hd122997123027_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122998123024_)))
                                              (_tl122996123029_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122998123024_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl122996123029_))
                                              ((lambda (_L123032_ _L123033_)
                                                 (let ((__tmp127804
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _L123032_)))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp127804
                                                    gxc#current-compile-type-closure
                                                    '#t)))
                                               _hd122997123027_
                                               _hd122994123019_)
                                              (let ()
                                                (declare (not safe))
                                                (_g122986123003_
                                                 _g122987123006_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g122986123003_ _g122987123006_)))))
                              (let ()
                                (declare (not safe))
                                (_g122986123003_ _g122987123006_)))))
                      (let ()
                        (declare (not safe))
                        (_g122986123003_ _g122987123006_))))))
          (declare (not safe))
          (_g122985123049_ _stx122984_))))
    (define gxc#basic-expression-type-builtin
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-call%
      (lambda (_stx122889_)
        (let* ((___stx126391126392_ _stx122889_)
               (_g122892122912_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126391126392_)))))
          (let ((___kont126393126394_
                 (lambda (_L122956_ _L122957_)
                   (let ((_type-e122974122976_
                          (let ((__tmp127805
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L122957_))))
                            (declare (not safe))
                            (hash-get
                             gxc#basic-expression-type-builtin
                             __tmp127805))))
                     (if _type-e122974122976_
                         (let ((_type-e122979_ _type-e122974122976_))
                           (_type-e122979_ _stx122889_ _L122956_))
                         '#f))))
                (___kont126395126396_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx126391126392_))
                (let ((_e122898122924_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx126391126392_))))
                  (let ((_tl122896122929_
                         (let () (declare (not safe)) (##cdr _e122898122924_)))
                        (_hd122897122927_
                         (let ()
                           (declare (not safe))
                           (##car _e122898122924_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl122896122929_))
                        (let ((_e122901122932_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl122896122929_))))
                          (let ((_tl122899122937_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e122901122932_)))
                                (_hd122900122935_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e122901122932_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd122900122935_))
                                (let ((_e122904122940_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd122900122935_))))
                                  (let ((_tl122902122945_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122904122940_)))
                                        (_hd122903122943_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122904122940_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd122903122943_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd122903122943_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl122902122945_))
                                                (let ((_e122907122948_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl122902122945_))))
                                                  (let ((_tl122905122953_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122907122948_)))
                                                        (_hd122906122951_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122907122948_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl122905122953_))
                                                        (___kont126393126394_
                                                         _tl122899122937_
                                                         _hd122906122951_)
                                                        (___kont126395126396_))))
                                                (___kont126395126396_))
                                            (___kont126395126396_))
                                        (___kont126395126396_))))
                                (___kont126395126396_))))
                        (___kont126395126396_))))
                (___kont126395126396_))))))
    (define gxc#basic-expression-type-ref%
      (lambda (_stx122838_)
        (let* ((_g122840122853_
                (lambda (_g122841122850_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g122841122850_))))
               (_g122839122886_
                (lambda (_g122841122856_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g122841122856_))
                      (let ((_e122845122858_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g122841122856_))))
                        (let ((_hd122844122861_
                               (let ()
                                 (declare (not safe))
                                 (##car _e122845122858_)))
                              (_tl122843122863_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e122845122858_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl122843122863_))
                              (let ((_e122848122866_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl122843122863_))))
                                (let ((_hd122847122869_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e122848122866_)))
                                      (_tl122846122871_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e122848122866_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl122846122871_))
                                      ((lambda (_L122874_)
                                         (let ((__tmp127806
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L122874_))))
                                           (declare (not safe))
                                           (gxc#optimizer-lookup-type
                                            __tmp127806)))
                                       _hd122847122869_)
                                      (let ()
                                        (declare (not safe))
                                        (_g122840122853_ _g122841122856_)))))
                              (let ()
                                (declare (not safe))
                                (_g122840122853_ _g122841122856_)))))
                      (let ()
                        (declare (not safe))
                        (_g122840122853_ _g122841122856_))))))
          (declare (not safe))
          (_g122839122886_ _stx122838_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_form122072_)
        (let* ((___stx126429126430_ _form122072_)
               (_g122077122234_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126429126430_)))))
          (let ((___kont126431126432_
                 (lambda (_L122758_ _L122759_ _L122760_) '#t))
                (___kont126437126438_
                 (lambda (_L122546_
                          _L122547_
                          _L122548_
                          _L122549_
                          _L122550_
                          _L122551_)
                   '#t))
                (___kont126443126444_
                 (lambda (_L122342_ _L122343_ _L122344_ _L122345_) '#t))
                (___kont126445126446_ (lambda () '#f)))
            (let* ((___match126570126571_
                    (lambda (_e122196122246_
                             _hd122195122249_
                             _tl122194122251_
                             _e122199122254_
                             _hd122198122257_
                             _tl122197122259_
                             _e122202122262_
                             _hd122201122265_
                             _tl122200122267_
                             _e122205122270_
                             _hd122204122273_
                             _tl122203122275_
                             _e122208122278_
                             _hd122207122281_
                             _tl122206122283_
                             _e122211122286_
                             _hd122210122289_
                             _tl122209122291_
                             _e122214122294_
                             _hd122213122297_
                             _tl122212122299_
                             _e122217122302_
                             _hd122216122305_
                             _tl122215122307_
                             _e122220122310_
                             _hd122219122313_
                             _tl122218122315_
                             _e122223122318_
                             _hd122222122321_
                             _tl122221122323_
                             _e122226122326_
                             _hd122225122329_
                             _tl122224122331_
                             _e122229122334_
                             _hd122228122337_
                             _tl122227122339_)
                      (let ((_L122342_ _hd122228122337_)
                            (_L122343_ _hd122219122313_)
                            (_L122344_ _hd122210122289_)
                            (_L122345_ _hd122195122249_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L122345_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L122344_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L122345_ _L122342_))
                                 (let ((__tmp127807
                                        (let ()
                                          (declare (not safe))
                                          (gx#free-identifier=?
                                           _L122343_
                                           _L122345_))))
                                   (declare (not safe))
                                   (not __tmp127807)))
                            (___kont126443126444_
                             _L122342_
                             _L122343_
                             _L122344_
                             _L122345_)
                            (___kont126445126446_)))))
                   (___match126542126543_
                    (lambda (_e122196122246_
                             _hd122195122249_
                             _tl122194122251_
                             _e122199122254_
                             _hd122198122257_
                             _tl122197122259_
                             _e122202122262_
                             _hd122201122265_
                             _tl122200122267_
                             _e122205122270_
                             _hd122204122273_
                             _tl122203122275_
                             _e122208122278_
                             _hd122207122281_
                             _tl122206122283_
                             _e122211122286_
                             _hd122210122289_
                             _tl122209122291_
                             _e122214122294_
                             _hd122213122297_
                             _tl122212122299_
                             _e122217122302_
                             _hd122216122305_
                             _tl122215122307_
                             _e122220122310_
                             _hd122219122313_
                             _tl122218122315_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl122212122299_))
                          (let ((_e122223122318_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl122212122299_))))
                            (let ((_tl122221122323_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e122223122318_)))
                                  (_hd122222122321_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e122223122318_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd122222122321_))
                                  (let ((_e122226122326_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd122222122321_))))
                                    (let ((_tl122224122331_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e122226122326_)))
                                          (_hd122225122329_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e122226122326_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd122225122329_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd122225122329_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl122224122331_))
                                                  (let ((_e122229122334_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl122224122331_))))
                                                    (let ((_tl122227122339_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e122229122334_)))
                                                          (_hd122228122337_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e122229122334_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl122227122339_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl122221122323_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl122197122259_))
                          (___match126570126571_
                           _e122196122246_
                           _hd122195122249_
                           _tl122194122251_
                           _e122199122254_
                           _hd122198122257_
                           _tl122197122259_
                           _e122202122262_
                           _hd122201122265_
                           _tl122200122267_
                           _e122205122270_
                           _hd122204122273_
                           _tl122203122275_
                           _e122208122278_
                           _hd122207122281_
                           _tl122206122283_
                           _e122211122286_
                           _hd122210122289_
                           _tl122209122291_
                           _e122214122294_
                           _hd122213122297_
                           _tl122212122299_
                           _e122217122302_
                           _hd122216122305_
                           _tl122215122307_
                           _e122220122310_
                           _hd122219122313_
                           _tl122218122315_
                           _e122223122318_
                           _hd122222122321_
                           _tl122221122323_
                           _e122226122326_
                           _hd122225122329_
                           _tl122224122331_
                           _e122229122334_
                           _hd122228122337_
                           _tl122227122339_)
                          (___kont126445126446_))
                      (___kont126445126446_))
                  (___kont126445126446_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont126445126446_))
                                              (___kont126445126446_))
                                          (___kont126445126446_))))
                                  (___kont126445126446_))))
                          (___kont126445126446_))))
                   (___match126472126473_
                    (lambda (_e122132122386_
                             _hd122131122389_
                             _tl122130122391_
                             ___splice126439126440_
                             _target122133122394_
                             _tl122135122396_)
                      (letrec ((_loop122136122399_
                                (lambda (_hd122134122402_ _arg122140122404_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd122134122402_))
                                      (let ((_e122137122407_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd122134122402_))))
                                        (let ((_lp-tl122139122412_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122137122407_)))
                                              (_lp-hd122138122410_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122137122407_))))
                                          (let ((__tmp127822
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd122138122410_
                                                         _arg122140122404_))))
                                            (declare (not safe))
                                            (_loop122136122399_
                                             _lp-tl122139122412_
                                             __tmp127822))))
                                      (let ((_arg122141122415_
                                             (reverse _arg122140122404_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl122130122391_))
                                            (let ((_e122144122418_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl122130122391_))))
                                              (let ((_tl122142122423_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122144122418_)))
                                                    (_hd122143122421_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122144122418_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd122143122421_))
                                                    (let ((_e122147122426_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd122143122421_))))
                                                      (let ((_tl122145122431_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122147122426_)))
                    (_hd122146122429_
                     (let () (declare (not safe)) (##car _e122147122426_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd122146122429_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd122146122429_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122145122431_))
                            (let ((_e122150122434_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122145122431_))))
                              (let ((_tl122148122439_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122150122434_)))
                                    (_hd122149122437_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122150122434_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd122149122437_))
                                    (let ((_e122153122442_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd122149122437_))))
                                      (let ((_tl122151122447_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e122153122442_)))
                                            (_hd122152122445_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e122153122442_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd122152122445_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd122152122445_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl122151122447_))
                                                    (let ((_e122156122450_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl122151122447_))))
                                                      (let ((_tl122154122455_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122156122450_)))
                    (_hd122155122453_
                     (let () (declare (not safe)) (##car _e122156122450_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl122154122455_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl122148122439_))
                        (let ((_e122159122458_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl122148122439_))))
                          (let ((_tl122157122463_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e122159122458_)))
                                (_hd122158122461_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e122159122458_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd122158122461_))
                                (let ((_e122162122466_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd122158122461_))))
                                  (let ((_tl122160122471_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122162122466_)))
                                        (_hd122161122469_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122162122466_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd122161122469_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd122161122469_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl122160122471_))
                                                (let ((_e122165122474_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl122160122471_))))
                                                  (let ((_tl122163122479_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122165122474_)))
                                                        (_hd122164122477_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122165122474_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl122163122479_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _tl122157122463_))
                                                            (if (fx>= (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#stx-length _tl122157122463_))
                              '1)
                        (let ((___splice126441126442_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl122157122463_
                                  '1))))
                          (let ((_tl122168122484_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice126441126442_ '1)))
                                (_target122166122482_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice126441126442_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl122168122484_))
                                (let ((_e122177122487_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl122168122484_))))
                                  (let ((_tl122175122492_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122177122487_)))
                                        (_hd122176122490_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122177122487_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd122176122490_))
                                        (let ((_e122180122495_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd122176122490_))))
                                          (let ((_tl122178122500_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e122180122495_)))
                                                (_hd122179122498_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e122180122495_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd122179122498_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd122179122498_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl122178122500_))
                                                        (let ((_e122183122503_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl122178122500_))))
                  (let ((_tl122181122508_
                         (let () (declare (not safe)) (##cdr _e122183122503_)))
                        (_hd122182122506_
                         (let ()
                           (declare (not safe))
                           (##car _e122183122503_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl122181122508_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl122175122492_))
                            (letrec ((_loop122169122511_
                                      (lambda (_hd122167122514_
                                               _xarg122173122516_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd122167122514_))
                                            (let ((_e122170122519_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd122167122514_))))
                                              (let ((_lp-tl122172122524_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122170122519_)))
                                                    (_lp-hd122171122522_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122170122519_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _lp-hd122171122522_))
                                                    (let ((_e122186122527_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _lp-hd122171122522_))))
                                                      (let ((_tl122184122532_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122186122527_)))
                    (_hd122185122530_
                     (let () (declare (not safe)) (##car _e122186122527_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd122185122530_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd122185122530_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122184122532_))
                            (let ((_e122189122535_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122184122532_))))
                              (let ((_tl122187122540_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122189122535_)))
                                    (_hd122188122538_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122189122535_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl122187122540_))
                                    (let ((__tmp127821
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd122188122538_
                                                   _xarg122173122516_))))
                                      (declare (not safe))
                                      (_loop122169122511_
                                       _lp-tl122172122524_
                                       __tmp127821))
                                    (___match126542126543_
                                     _e122132122386_
                                     _hd122131122389_
                                     _tl122130122391_
                                     _e122144122418_
                                     _hd122143122421_
                                     _tl122142122423_
                                     _e122147122426_
                                     _hd122146122429_
                                     _tl122145122431_
                                     _e122150122434_
                                     _hd122149122437_
                                     _tl122148122439_
                                     _e122153122442_
                                     _hd122152122445_
                                     _tl122151122447_
                                     _e122156122450_
                                     _hd122155122453_
                                     _tl122154122455_
                                     _e122159122458_
                                     _hd122158122461_
                                     _tl122157122463_
                                     _e122162122466_
                                     _hd122161122469_
                                     _tl122160122471_
                                     _e122165122474_
                                     _hd122164122477_
                                     _tl122163122479_))))
                            (___match126542126543_
                             _e122132122386_
                             _hd122131122389_
                             _tl122130122391_
                             _e122144122418_
                             _hd122143122421_
                             _tl122142122423_
                             _e122147122426_
                             _hd122146122429_
                             _tl122145122431_
                             _e122150122434_
                             _hd122149122437_
                             _tl122148122439_
                             _e122153122442_
                             _hd122152122445_
                             _tl122151122447_
                             _e122156122450_
                             _hd122155122453_
                             _tl122154122455_
                             _e122159122458_
                             _hd122158122461_
                             _tl122157122463_
                             _e122162122466_
                             _hd122161122469_
                             _tl122160122471_
                             _e122165122474_
                             _hd122164122477_
                             _tl122163122479_))
                        (___match126542126543_
                         _e122132122386_
                         _hd122131122389_
                         _tl122130122391_
                         _e122144122418_
                         _hd122143122421_
                         _tl122142122423_
                         _e122147122426_
                         _hd122146122429_
                         _tl122145122431_
                         _e122150122434_
                         _hd122149122437_
                         _tl122148122439_
                         _e122153122442_
                         _hd122152122445_
                         _tl122151122447_
                         _e122156122450_
                         _hd122155122453_
                         _tl122154122455_
                         _e122159122458_
                         _hd122158122461_
                         _tl122157122463_
                         _e122162122466_
                         _hd122161122469_
                         _tl122160122471_
                         _e122165122474_
                         _hd122164122477_
                         _tl122163122479_))
                    (___match126542126543_
                     _e122132122386_
                     _hd122131122389_
                     _tl122130122391_
                     _e122144122418_
                     _hd122143122421_
                     _tl122142122423_
                     _e122147122426_
                     _hd122146122429_
                     _tl122145122431_
                     _e122150122434_
                     _hd122149122437_
                     _tl122148122439_
                     _e122153122442_
                     _hd122152122445_
                     _tl122151122447_
                     _e122156122450_
                     _hd122155122453_
                     _tl122154122455_
                     _e122159122458_
                     _hd122158122461_
                     _tl122157122463_
                     _e122162122466_
                     _hd122161122469_
                     _tl122160122471_
                     _e122165122474_
                     _hd122164122477_
                     _tl122163122479_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match126542126543_
                                                     _e122132122386_
                                                     _hd122131122389_
                                                     _tl122130122391_
                                                     _e122144122418_
                                                     _hd122143122421_
                                                     _tl122142122423_
                                                     _e122147122426_
                                                     _hd122146122429_
                                                     _tl122145122431_
                                                     _e122150122434_
                                                     _hd122149122437_
                                                     _tl122148122439_
                                                     _e122153122442_
                                                     _hd122152122445_
                                                     _tl122151122447_
                                                     _e122156122450_
                                                     _hd122155122453_
                                                     _tl122154122455_
                                                     _e122159122458_
                                                     _hd122158122461_
                                                     _tl122157122463_
                                                     _e122162122466_
                                                     _hd122161122469_
                                                     _tl122160122471_
                                                     _e122165122474_
                                                     _hd122164122477_
                                                     _tl122163122479_))))
                                            (let ((_xarg122174122543_
                                                   (reverse _xarg122173122516_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl122142122423_))
                                                  (let ((_L122546_
                                                         _hd122182122506_)
                                                        (_L122547_
                                                         _xarg122174122543_)
                                                        (_L122548_
                                                         _hd122164122477_)
                                                        (_L122549_
                                                         _hd122155122453_)
                                                        (_L122550_
                                                         _tl122135122396_)
                                                        (_L122551_
                                                         _arg122141122415_))
                                                    (if (and (let ((__tmp127819
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp127820
                                   (lambda (_g122594122597_ _g122595122599_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g122594122597_
                                             _g122595122599_)))))
                              (declare (not safe))
                              (foldr1 __tmp127820 '() _L122551_))))
                       (declare (not safe))
                       (gx#identifier-list? __tmp127819))
                     (let () (declare (not safe)) (gx#identifier? _L122550_))
                     (let ()
                       (declare (not safe))
                       (gxc#runtime-identifier=? _L122549_ 'apply))
                     (fx= (length (let ((__tmp127817
                                         (lambda (_g122601122604_
                                                  _g122602122606_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g122601122604_
                                                   _g122602122606_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp127817 '() _L122551_)))
                          (length (let ((__tmp127818
                                         (lambda (_g122608122611_
                                                  _g122609122613_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g122608122611_
                                                   _g122609122613_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp127818 '() _L122547_))))
                     (let ((__tmp127815
                            (let ((__tmp127816
                                   (lambda (_g122615122618_ _g122616122620_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g122615122618_
                                             _g122616122620_)))))
                              (declare (not safe))
                              (foldr1 __tmp127816 '() _L122551_)))
                           (__tmp127813
                            (let ((__tmp127814
                                   (lambda (_g122622122625_ _g122623122627_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g122622122625_
                                             _g122623122627_)))))
                              (declare (not safe))
                              (foldr1 __tmp127814 '() _L122547_))))
                       (declare (not safe))
                       (andmap2 gx#free-identifier=? __tmp127815 __tmp127813))
                     (let ()
                       (declare (not safe))
                       (gx#free-identifier=? _L122550_ _L122546_))
                     (let ((__tmp127808
                            (let ((__tmp127812
                                   (lambda (_g122629122631_)
                                     (let ()
                                       (declare (not safe))
                                       (gx#free-identifier=?
                                        _g122629122631_
                                        _L122548_))))
                                  (__tmp127809
                                   (let ((__tmp127811
                                          (lambda (_g122633122636_
                                                   _g122634122638_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g122633122636_
                                                    _g122634122638_))))
                                         (__tmp127810
                                          (let ()
                                            (declare (not safe))
                                            (cons _L122550_ '()))))
                                     (declare (not safe))
                                     (foldr1 __tmp127811
                                             __tmp127810
                                             _L122551_))))
                              (declare (not safe))
                              (find __tmp127812 __tmp127809))))
                       (declare (not safe))
                       (not __tmp127808)))
                (___kont126437126438_
                 _L122546_
                 _L122547_
                 _L122548_
                 _L122549_
                 _L122550_
                 _L122551_)
                (___match126542126543_
                 _e122132122386_
                 _hd122131122389_
                 _tl122130122391_
                 _e122144122418_
                 _hd122143122421_
                 _tl122142122423_
                 _e122147122426_
                 _hd122146122429_
                 _tl122145122431_
                 _e122150122434_
                 _hd122149122437_
                 _tl122148122439_
                 _e122153122442_
                 _hd122152122445_
                 _tl122151122447_
                 _e122156122450_
                 _hd122155122453_
                 _tl122154122455_
                 _e122159122458_
                 _hd122158122461_
                 _tl122157122463_
                 _e122162122466_
                 _hd122161122469_
                 _tl122160122471_
                 _e122165122474_
                 _hd122164122477_
                 _tl122163122479_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126542126543_
                                                   _e122132122386_
                                                   _hd122131122389_
                                                   _tl122130122391_
                                                   _e122144122418_
                                                   _hd122143122421_
                                                   _tl122142122423_
                                                   _e122147122426_
                                                   _hd122146122429_
                                                   _tl122145122431_
                                                   _e122150122434_
                                                   _hd122149122437_
                                                   _tl122148122439_
                                                   _e122153122442_
                                                   _hd122152122445_
                                                   _tl122151122447_
                                                   _e122156122450_
                                                   _hd122155122453_
                                                   _tl122154122455_
                                                   _e122159122458_
                                                   _hd122158122461_
                                                   _tl122157122463_
                                                   _e122162122466_
                                                   _hd122161122469_
                                                   _tl122160122471_
                                                   _e122165122474_
                                                   _hd122164122477_
                                                   _tl122163122479_)))))))
                              (let ()
                                (declare (not safe))
                                (_loop122169122511_ _target122166122482_ '())))
                            (___match126542126543_
                             _e122132122386_
                             _hd122131122389_
                             _tl122130122391_
                             _e122144122418_
                             _hd122143122421_
                             _tl122142122423_
                             _e122147122426_
                             _hd122146122429_
                             _tl122145122431_
                             _e122150122434_
                             _hd122149122437_
                             _tl122148122439_
                             _e122153122442_
                             _hd122152122445_
                             _tl122151122447_
                             _e122156122450_
                             _hd122155122453_
                             _tl122154122455_
                             _e122159122458_
                             _hd122158122461_
                             _tl122157122463_
                             _e122162122466_
                             _hd122161122469_
                             _tl122160122471_
                             _e122165122474_
                             _hd122164122477_
                             _tl122163122479_))
                        (___match126542126543_
                         _e122132122386_
                         _hd122131122389_
                         _tl122130122391_
                         _e122144122418_
                         _hd122143122421_
                         _tl122142122423_
                         _e122147122426_
                         _hd122146122429_
                         _tl122145122431_
                         _e122150122434_
                         _hd122149122437_
                         _tl122148122439_
                         _e122153122442_
                         _hd122152122445_
                         _tl122151122447_
                         _e122156122450_
                         _hd122155122453_
                         _tl122154122455_
                         _e122159122458_
                         _hd122158122461_
                         _tl122157122463_
                         _e122162122466_
                         _hd122161122469_
                         _tl122160122471_
                         _e122165122474_
                         _hd122164122477_
                         _tl122163122479_))))
                (___match126542126543_
                 _e122132122386_
                 _hd122131122389_
                 _tl122130122391_
                 _e122144122418_
                 _hd122143122421_
                 _tl122142122423_
                 _e122147122426_
                 _hd122146122429_
                 _tl122145122431_
                 _e122150122434_
                 _hd122149122437_
                 _tl122148122439_
                 _e122153122442_
                 _hd122152122445_
                 _tl122151122447_
                 _e122156122450_
                 _hd122155122453_
                 _tl122154122455_
                 _e122159122458_
                 _hd122158122461_
                 _tl122157122463_
                 _e122162122466_
                 _hd122161122469_
                 _tl122160122471_
                 _e122165122474_
                 _hd122164122477_
                 _tl122163122479_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match126542126543_
                                                     _e122132122386_
                                                     _hd122131122389_
                                                     _tl122130122391_
                                                     _e122144122418_
                                                     _hd122143122421_
                                                     _tl122142122423_
                                                     _e122147122426_
                                                     _hd122146122429_
                                                     _tl122145122431_
                                                     _e122150122434_
                                                     _hd122149122437_
                                                     _tl122148122439_
                                                     _e122153122442_
                                                     _hd122152122445_
                                                     _tl122151122447_
                                                     _e122156122450_
                                                     _hd122155122453_
                                                     _tl122154122455_
                                                     _e122159122458_
                                                     _hd122158122461_
                                                     _tl122157122463_
                                                     _e122162122466_
                                                     _hd122161122469_
                                                     _tl122160122471_
                                                     _e122165122474_
                                                     _hd122164122477_
                                                     _tl122163122479_))
                                                (___match126542126543_
                                                 _e122132122386_
                                                 _hd122131122389_
                                                 _tl122130122391_
                                                 _e122144122418_
                                                 _hd122143122421_
                                                 _tl122142122423_
                                                 _e122147122426_
                                                 _hd122146122429_
                                                 _tl122145122431_
                                                 _e122150122434_
                                                 _hd122149122437_
                                                 _tl122148122439_
                                                 _e122153122442_
                                                 _hd122152122445_
                                                 _tl122151122447_
                                                 _e122156122450_
                                                 _hd122155122453_
                                                 _tl122154122455_
                                                 _e122159122458_
                                                 _hd122158122461_
                                                 _tl122157122463_
                                                 _e122162122466_
                                                 _hd122161122469_
                                                 _tl122160122471_
                                                 _e122165122474_
                                                 _hd122164122477_
                                                 _tl122163122479_))))
                                        (___match126542126543_
                                         _e122132122386_
                                         _hd122131122389_
                                         _tl122130122391_
                                         _e122144122418_
                                         _hd122143122421_
                                         _tl122142122423_
                                         _e122147122426_
                                         _hd122146122429_
                                         _tl122145122431_
                                         _e122150122434_
                                         _hd122149122437_
                                         _tl122148122439_
                                         _e122153122442_
                                         _hd122152122445_
                                         _tl122151122447_
                                         _e122156122450_
                                         _hd122155122453_
                                         _tl122154122455_
                                         _e122159122458_
                                         _hd122158122461_
                                         _tl122157122463_
                                         _e122162122466_
                                         _hd122161122469_
                                         _tl122160122471_
                                         _e122165122474_
                                         _hd122164122477_
                                         _tl122163122479_))))
                                (___match126542126543_
                                 _e122132122386_
                                 _hd122131122389_
                                 _tl122130122391_
                                 _e122144122418_
                                 _hd122143122421_
                                 _tl122142122423_
                                 _e122147122426_
                                 _hd122146122429_
                                 _tl122145122431_
                                 _e122150122434_
                                 _hd122149122437_
                                 _tl122148122439_
                                 _e122153122442_
                                 _hd122152122445_
                                 _tl122151122447_
                                 _e122156122450_
                                 _hd122155122453_
                                 _tl122154122455_
                                 _e122159122458_
                                 _hd122158122461_
                                 _tl122157122463_
                                 _e122162122466_
                                 _hd122161122469_
                                 _tl122160122471_
                                 _e122165122474_
                                 _hd122164122477_
                                 _tl122163122479_))))
                        (___match126542126543_
                         _e122132122386_
                         _hd122131122389_
                         _tl122130122391_
                         _e122144122418_
                         _hd122143122421_
                         _tl122142122423_
                         _e122147122426_
                         _hd122146122429_
                         _tl122145122431_
                         _e122150122434_
                         _hd122149122437_
                         _tl122148122439_
                         _e122153122442_
                         _hd122152122445_
                         _tl122151122447_
                         _e122156122450_
                         _hd122155122453_
                         _tl122154122455_
                         _e122159122458_
                         _hd122158122461_
                         _tl122157122463_
                         _e122162122466_
                         _hd122161122469_
                         _tl122160122471_
                         _e122165122474_
                         _hd122164122477_
                         _tl122163122479_))
                    (___match126542126543_
                     _e122132122386_
                     _hd122131122389_
                     _tl122130122391_
                     _e122144122418_
                     _hd122143122421_
                     _tl122142122423_
                     _e122147122426_
                     _hd122146122429_
                     _tl122145122431_
                     _e122150122434_
                     _hd122149122437_
                     _tl122148122439_
                     _e122153122442_
                     _hd122152122445_
                     _tl122151122447_
                     _e122156122450_
                     _hd122155122453_
                     _tl122154122455_
                     _e122159122458_
                     _hd122158122461_
                     _tl122157122463_
                     _e122162122466_
                     _hd122161122469_
                     _tl122160122471_
                     _e122165122474_
                     _hd122164122477_
                     _tl122163122479_))
                (___kont126445126446_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont126445126446_))
                                            (___kont126445126446_))
                                        (___kont126445126446_))))
                                (___kont126445126446_))))
                        (___kont126445126446_))
                    (___kont126445126446_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont126445126446_))
                                                (___kont126445126446_))
                                            (___kont126445126446_))))
                                    (___kont126445126446_))))
                            (___kont126445126446_))
                        (___kont126445126446_))
                    (___kont126445126446_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont126445126446_))))
                                            (___kont126445126446_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop122136122399_ _target122133122394_ '())))))
                   (___match126460126461_
                    (lambda (_e122084122646_
                             _hd122083122649_
                             _tl122082122651_
                             ___splice126433126434_
                             _target122085122654_
                             _tl122087122656_)
                      (letrec ((_loop122088122659_
                                (lambda (_hd122086122662_ _arg122092122664_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd122086122662_))
                                      (let ((_e122089122667_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd122086122662_))))
                                        (let ((_lp-tl122091122672_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122089122667_)))
                                              (_lp-hd122090122670_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122089122667_))))
                                          (let ((__tmp127836
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd122090122670_
                                                         _arg122092122664_))))
                                            (declare (not safe))
                                            (_loop122088122659_
                                             _lp-tl122091122672_
                                             __tmp127836))))
                                      (let ((_arg122093122675_
                                             (reverse _arg122092122664_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl122082122651_))
                                            (let ((_e122096122678_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl122082122651_))))
                                              (let ((_tl122094122683_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122096122678_)))
                                                    (_hd122095122681_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122096122678_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd122095122681_))
                                                    (let ((_e122099122686_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd122095122681_))))
                                                      (let ((_tl122097122691_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122099122686_)))
                    (_hd122098122689_
                     (let () (declare (not safe)) (##car _e122099122686_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd122098122689_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd122098122689_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122097122691_))
                            (let ((_e122102122694_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122097122691_))))
                              (let ((_tl122100122699_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122102122694_)))
                                    (_hd122101122697_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122102122694_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd122101122697_))
                                    (let ((_e122105122702_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd122101122697_))))
                                      (let ((_tl122103122707_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e122105122702_)))
                                            (_hd122104122705_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e122105122702_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd122104122705_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd122104122705_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl122103122707_))
                                                    (let ((_e122108122710_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl122103122707_))))
                                                      (let ((_tl122106122715_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122108122710_)))
                    (_hd122107122713_
                     (let () (declare (not safe)) (##car _e122108122710_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl122106122715_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl122100122699_))
                        (let ((___splice126435126436_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl122100122699_
                                  '0))))
                          (let ((_tl122111122720_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice126435126436_ '1)))
                                (_target122109122718_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice126435126436_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl122111122720_))
                                (letrec ((_loop122112122723_
                                          (lambda (_hd122110122726_
                                                   _xarg122116122728_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd122110122726_))
                                                (let ((_e122113122731_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd122110122726_))))
                                                  (let ((_lp-tl122115122736_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122113122731_)))
                                                        (_lp-hd122114122734_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122113122731_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd122114122734_))
                                                        (let ((_e122120122739_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd122114122734_))))
                  (let ((_tl122118122744_
                         (let () (declare (not safe)) (##cdr _e122120122739_)))
                        (_hd122119122742_
                         (let ()
                           (declare (not safe))
                           (##car _e122120122739_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd122119122742_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd122119122742_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl122118122744_))
                                (let ((_e122123122747_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl122118122744_))))
                                  (let ((_tl122121122752_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122123122747_)))
                                        (_hd122122122750_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122123122747_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl122121122752_))
                                        (let ((__tmp127835
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd122122122750_
                                                       _xarg122116122728_))))
                                          (declare (not safe))
                                          (_loop122112122723_
                                           _lp-tl122115122736_
                                           __tmp127835))
                                        (___match126472126473_
                                         _e122084122646_
                                         _hd122083122649_
                                         _tl122082122651_
                                         ___splice126433126434_
                                         _target122085122654_
                                         _tl122087122656_))))
                                (___match126472126473_
                                 _e122084122646_
                                 _hd122083122649_
                                 _tl122082122651_
                                 ___splice126433126434_
                                 _target122085122654_
                                 _tl122087122656_))
                            (___match126472126473_
                             _e122084122646_
                             _hd122083122649_
                             _tl122082122651_
                             ___splice126433126434_
                             _target122085122654_
                             _tl122087122656_))
                        (___match126472126473_
                         _e122084122646_
                         _hd122083122649_
                         _tl122082122651_
                         ___splice126433126434_
                         _target122085122654_
                         _tl122087122656_))))
                (___match126472126473_
                 _e122084122646_
                 _hd122083122649_
                 _tl122082122651_
                 ___splice126433126434_
                 _target122085122654_
                 _tl122087122656_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg122117122755_
                                                       (reverse _xarg122116122728_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl122094122683_))
                                                      (let ((_L122758_
                                                             _xarg122117122755_)
                                                            (_L122759_
                                                             _hd122107122713_)
                                                            (_L122760_
                                                             _arg122093122675_))
                                                        (if (and (let ((__tmp127833
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp127834
                                       (lambda (_g122788122791_
                                                _g122789122793_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g122788122791_
                                                 _g122789122793_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp127834 '() _L122760_))))
                           (declare (not safe))
                           (gx#identifier-list? __tmp127833))
                         (fx= (length (let ((__tmp127831
                                             (lambda (_g122795122798_
                                                      _g122796122800_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g122795122798_
                                                       _g122796122800_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp127831 '() _L122760_)))
                              (length (let ((__tmp127832
                                             (lambda (_g122802122805_
                                                      _g122803122807_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g122802122805_
                                                       _g122803122807_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp127832 '() _L122758_))))
                         (let ((__tmp127829
                                (let ((__tmp127830
                                       (lambda (_g122809122812_
                                                _g122810122814_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g122809122812_
                                                 _g122810122814_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp127830 '() _L122760_)))
                               (__tmp127827
                                (let ((__tmp127828
                                       (lambda (_g122816122819_
                                                _g122817122821_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g122816122819_
                                                 _g122817122821_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp127828 '() _L122758_))))
                           (declare (not safe))
                           (andmap2 gx#free-identifier=?
                                    __tmp127829
                                    __tmp127827))
                         (let ((__tmp127823
                                (let ((__tmp127826
                                       (lambda (_g122823122825_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _g122823122825_
                                            _L122759_))))
                                      (__tmp127824
                                       (let ((__tmp127825
                                              (lambda (_g122827122830_
                                                       _g122828122832_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g122827122830_
                                                        _g122828122832_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp127825 '() _L122760_))))
                                  (declare (not safe))
                                  (find __tmp127826 __tmp127824))))
                           (declare (not safe))
                           (not __tmp127823)))
                    (___kont126431126432_ _L122758_ _L122759_ _L122760_)
                    (___match126472126473_
                     _e122084122646_
                     _hd122083122649_
                     _tl122082122651_
                     ___splice126433126434_
                     _target122085122654_
                     _tl122087122656_)))
              (___match126472126473_
               _e122084122646_
               _hd122083122649_
               _tl122082122651_
               ___splice126433126434_
               _target122085122654_
               _tl122087122656_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (let ()
                                    (declare (not safe))
                                    (_loop122112122723_
                                     _target122109122718_
                                     '())))
                                (___match126472126473_
                                 _e122084122646_
                                 _hd122083122649_
                                 _tl122082122651_
                                 ___splice126433126434_
                                 _target122085122654_
                                 _tl122087122656_))))
                        (___match126472126473_
                         _e122084122646_
                         _hd122083122649_
                         _tl122082122651_
                         ___splice126433126434_
                         _target122085122654_
                         _tl122087122656_))
                    (___match126472126473_
                     _e122084122646_
                     _hd122083122649_
                     _tl122082122651_
                     ___splice126433126434_
                     _target122085122654_
                     _tl122087122656_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match126472126473_
                                                     _e122084122646_
                                                     _hd122083122649_
                                                     _tl122082122651_
                                                     ___splice126433126434_
                                                     _target122085122654_
                                                     _tl122087122656_))
                                                (___match126472126473_
                                                 _e122084122646_
                                                 _hd122083122649_
                                                 _tl122082122651_
                                                 ___splice126433126434_
                                                 _target122085122654_
                                                 _tl122087122656_))
                                            (___match126472126473_
                                             _e122084122646_
                                             _hd122083122649_
                                             _tl122082122651_
                                             ___splice126433126434_
                                             _target122085122654_
                                             _tl122087122656_))))
                                    (___match126472126473_
                                     _e122084122646_
                                     _hd122083122649_
                                     _tl122082122651_
                                     ___splice126433126434_
                                     _target122085122654_
                                     _tl122087122656_))))
                            (___match126472126473_
                             _e122084122646_
                             _hd122083122649_
                             _tl122082122651_
                             ___splice126433126434_
                             _target122085122654_
                             _tl122087122656_))
                        (___match126472126473_
                         _e122084122646_
                         _hd122083122649_
                         _tl122082122651_
                         ___splice126433126434_
                         _target122085122654_
                         _tl122087122656_))
                    (___match126472126473_
                     _e122084122646_
                     _hd122083122649_
                     _tl122082122651_
                     ___splice126433126434_
                     _target122085122654_
                     _tl122087122656_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match126472126473_
                                                     _e122084122646_
                                                     _hd122083122649_
                                                     _tl122082122651_
                                                     ___splice126433126434_
                                                     _target122085122654_
                                                     _tl122087122656_))))
                                            (___match126472126473_
                                             _e122084122646_
                                             _hd122083122649_
                                             _tl122082122651_
                                             ___splice126433126434_
                                             _target122085122654_
                                             _tl122087122656_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop122088122659_ _target122085122654_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx126429126430_))
                  (let ((_e122084122646_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx126429126430_))))
                    (let ((_tl122082122651_
                           (let ()
                             (declare (not safe))
                             (##cdr _e122084122646_)))
                          (_hd122083122649_
                           (let ()
                             (declare (not safe))
                             (##car _e122084122646_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd122083122649_))
                          (let ((___splice126433126434_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd122083122649_
                                    '0))))
                            (let ((_tl122087122656_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice126433126434_ '1)))
                                  (_target122085122654_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice126433126434_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl122087122656_))
                                  (___match126460126461_
                                   _e122084122646_
                                   _hd122083122649_
                                   _tl122082122651_
                                   ___splice126433126434_
                                   _target122085122654_
                                   _tl122087122656_)
                                  (___match126472126473_
                                   _e122084122646_
                                   _hd122083122649_
                                   _tl122082122651_
                                   ___splice126433126434_
                                   _target122085122654_
                                   _tl122087122656_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl122082122651_))
                              (let ((_e122199122254_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl122082122651_))))
                                (let ((_tl122197122259_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e122199122254_)))
                                      (_hd122198122257_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e122199122254_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd122198122257_))
                                      (let ((_e122202122262_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd122198122257_))))
                                        (let ((_tl122200122267_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122202122262_)))
                                              (_hd122201122265_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122202122262_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd122201122265_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd122201122265_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl122200122267_))
                                                      (let ((_e122205122270_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl122200122267_))))
                (let ((_tl122203122275_
                       (let () (declare (not safe)) (##cdr _e122205122270_)))
                      (_hd122204122273_
                       (let () (declare (not safe)) (##car _e122205122270_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd122204122273_))
                      (let ((_e122208122278_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd122204122273_))))
                        (let ((_tl122206122283_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e122208122278_)))
                              (_hd122207122281_
                               (let ()
                                 (declare (not safe))
                                 (##car _e122208122278_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd122207122281_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd122207122281_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl122206122283_))
                                      (let ((_e122211122286_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl122206122283_))))
                                        (let ((_tl122209122291_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122211122286_)))
                                              (_hd122210122289_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122211122286_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl122209122291_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl122203122275_))
                                                  (let ((_e122214122294_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl122203122275_))))
                                                    (let ((_tl122212122299_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e122214122294_)))
                                                          (_hd122213122297_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e122214122294_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd122213122297_))
                                                          (let ((_e122217122302_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd122213122297_))))
                    (let ((_tl122215122307_
                           (let ()
                             (declare (not safe))
                             (##cdr _e122217122302_)))
                          (_hd122216122305_
                           (let ()
                             (declare (not safe))
                             (##car _e122217122302_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd122216122305_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd122216122305_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl122215122307_))
                                  (let ((_e122220122310_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl122215122307_))))
                                    (let ((_tl122218122315_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e122220122310_)))
                                          (_hd122219122313_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e122220122310_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl122218122315_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl122212122299_))
                                              (let ((_e122223122318_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl122212122299_))))
                                                (let ((_tl122221122323_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e122223122318_)))
                                                      (_hd122222122321_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e122223122318_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd122222122321_))
                                                      (let ((_e122226122326_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd122222122321_))))
                (let ((_tl122224122331_
                       (let () (declare (not safe)) (##cdr _e122226122326_)))
                      (_hd122225122329_
                       (let () (declare (not safe)) (##car _e122226122326_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd122225122329_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd122225122329_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl122224122331_))
                              (let ((_e122229122334_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl122224122331_))))
                                (let ((_tl122227122339_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e122229122334_)))
                                      (_hd122228122337_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e122229122334_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl122227122339_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl122221122323_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl122197122259_))
                                              (___match126570126571_
                                               _e122084122646_
                                               _hd122083122649_
                                               _tl122082122651_
                                               _e122199122254_
                                               _hd122198122257_
                                               _tl122197122259_
                                               _e122202122262_
                                               _hd122201122265_
                                               _tl122200122267_
                                               _e122205122270_
                                               _hd122204122273_
                                               _tl122203122275_
                                               _e122208122278_
                                               _hd122207122281_
                                               _tl122206122283_
                                               _e122211122286_
                                               _hd122210122289_
                                               _tl122209122291_
                                               _e122214122294_
                                               _hd122213122297_
                                               _tl122212122299_
                                               _e122217122302_
                                               _hd122216122305_
                                               _tl122215122307_
                                               _e122220122310_
                                               _hd122219122313_
                                               _tl122218122315_
                                               _e122223122318_
                                               _hd122222122321_
                                               _tl122221122323_
                                               _e122226122326_
                                               _hd122225122329_
                                               _tl122224122331_
                                               _e122229122334_
                                               _hd122228122337_
                                               _tl122227122339_)
                                              (___kont126445126446_))
                                          (___kont126445126446_))
                                      (___kont126445126446_))))
                              (___kont126445126446_))
                          (___kont126445126446_))
                      (___kont126445126446_))))
              (___kont126445126446_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont126445126446_))
                                          (___kont126445126446_))))
                                  (___kont126445126446_))
                              (___kont126445126446_))
                          (___kont126445126446_))))
                  (___kont126445126446_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont126445126446_))
                                              (___kont126445126446_))))
                                      (___kont126445126446_))
                                  (___kont126445126446_))
                              (___kont126445126446_))))
                      (___kont126445126446_))))
              (___kont126445126446_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont126445126446_))
                                              (___kont126445126446_))))
                                      (___kont126445126446_))))
                              (___kont126445126446_)))))
                  (___kont126445126446_)))))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_form121540_)
        (let* ((___stx126573126574_ _form121540_)
               (_g121544121668_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126573126574_)))))
          (let ((___kont126575126576_
                 (lambda (_L122038_ _L122039_ _L122040_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L122039_))))
                (___kont126581126582_
                 (lambda (_L121886_ _L121887_ _L121888_ _L121889_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L121886_))))
                (___kont126585126586_
                 (lambda (_L121753_ _L121754_ _L121755_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L121753_)))))
            (let* ((___match126682126683_
                    (lambda (_e121636121673_
                             _hd121635121676_
                             _tl121634121678_
                             _e121639121681_
                             _hd121638121684_
                             _tl121637121686_
                             _e121642121689_
                             _hd121641121692_
                             _tl121640121694_
                             _e121645121697_
                             _hd121644121700_
                             _tl121643121702_
                             _e121648121705_
                             _hd121647121708_
                             _tl121646121710_
                             _e121651121713_
                             _hd121650121716_
                             _tl121649121718_
                             _e121654121721_
                             _hd121653121724_
                             _tl121652121726_
                             _e121657121729_
                             _hd121656121732_
                             _tl121655121734_
                             _e121660121737_
                             _hd121659121740_
                             _tl121658121742_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl121652121726_))
                          (let ((_e121663121745_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl121652121726_))))
                            (let ((_tl121661121750_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e121663121745_)))
                                  (_hd121662121748_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e121663121745_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl121661121750_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl121637121686_))
                                      (___kont126585126586_
                                       _hd121659121740_
                                       _hd121650121716_
                                       _hd121635121676_)
                                      (let ()
                                        (declare (not safe))
                                        (_g121544121668_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g121544121668_)))))
                          (let () (declare (not safe)) (_g121544121668_)))))
                   (___match126612126613_
                    (lambda (_e121597121790_
                             _hd121596121793_
                             _tl121595121795_
                             ___splice126583126584_
                             _target121598121798_
                             _tl121600121800_)
                      (letrec ((_loop121601121803_
                                (lambda (_hd121599121806_ _arg121605121808_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd121599121806_))
                                      (let ((_e121602121811_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd121599121806_))))
                                        (let ((_lp-tl121604121816_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e121602121811_)))
                                              (_lp-hd121603121814_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e121602121811_))))
                                          (let ((__tmp127837
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd121603121814_
                                                         _arg121605121808_))))
                                            (declare (not safe))
                                            (_loop121601121803_
                                             _lp-tl121604121816_
                                             __tmp127837))))
                                      (let ((_arg121606121819_
                                             (reverse _arg121605121808_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl121595121795_))
                                            (let ((_e121609121822_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl121595121795_))))
                                              (let ((_tl121607121827_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e121609121822_)))
                                                    (_hd121608121825_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e121609121822_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd121608121825_))
                                                    (let ((_e121612121830_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd121608121825_))))
                                                      (let ((_tl121610121835_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121612121830_)))
                    (_hd121611121833_
                     (let () (declare (not safe)) (##car _e121612121830_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd121611121833_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd121611121833_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121610121835_))
                            (let ((_e121615121838_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121610121835_))))
                              (let ((_tl121613121843_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121615121838_)))
                                    (_hd121614121841_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121615121838_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd121614121841_))
                                    (let ((_e121618121846_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd121614121841_))))
                                      (let ((_tl121616121851_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121618121846_)))
                                            (_hd121617121849_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121618121846_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd121617121849_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd121617121849_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl121616121851_))
                                                    (let ((_e121621121854_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl121616121851_))))
                                                      (let ((_tl121619121859_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121621121854_)))
                    (_hd121620121857_
                     (let () (declare (not safe)) (##car _e121621121854_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl121619121859_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl121613121843_))
                        (let ((_e121624121862_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl121613121843_))))
                          (let ((_tl121622121867_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e121624121862_)))
                                (_hd121623121865_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e121624121862_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd121623121865_))
                                (let ((_e121627121870_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd121623121865_))))
                                  (let ((_tl121625121875_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121627121870_)))
                                        (_hd121626121873_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121627121870_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd121626121873_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd121626121873_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl121625121875_))
                                                (let ((_e121630121878_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl121625121875_))))
                                                  (let ((_tl121628121883_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121630121878_)))
                                                        (_hd121629121881_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121630121878_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl121628121883_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl121607121827_))
                                                            (___kont126581126582_
                                                             _hd121629121881_
                                                             _hd121620121857_
                                                             _tl121600121800_
                                                             _arg121606121819_)
                                                            (___match126682126683_
                                                             _e121597121790_
                                                             _hd121596121793_
                                                             _tl121595121795_
                                                             _e121609121822_
                                                             _hd121608121825_
                                                             _tl121607121827_
                                                             _e121612121830_
                                                             _hd121611121833_
                                                             _tl121610121835_
                                                             _e121615121838_
                                                             _hd121614121841_
                                                             _tl121613121843_
                                                             _e121618121846_
                                                             _hd121617121849_
                                                             _tl121616121851_
                                                             _e121621121854_
                                                             _hd121620121857_
                                                             _tl121619121859_
                                                             _e121624121862_
                                                             _hd121623121865_
                                                             _tl121622121867_
                                                             _e121627121870_
                                                             _hd121626121873_
                                                             _tl121625121875_
                                                             _e121630121878_
                                                             _hd121629121881_
                                                             _tl121628121883_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g121544121668_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g121544121668_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g121544121668_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g121544121668_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g121544121668_)))))
                        (let () (declare (not safe)) (_g121544121668_)))
                    (let () (declare (not safe)) (_g121544121668_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g121544121668_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g121544121668_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g121544121668_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g121544121668_)))))
                            (let () (declare (not safe)) (_g121544121668_)))
                        (let () (declare (not safe)) (_g121544121668_)))
                    (let () (declare (not safe)) (_g121544121668_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g121544121668_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g121544121668_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop121601121803_ _target121598121798_ '())))))
                   (___match126600126601_
                    (lambda (_e121551121926_
                             _hd121550121929_
                             _tl121549121931_
                             ___splice126577126578_
                             _target121552121934_
                             _tl121554121936_)
                      (letrec ((_loop121555121939_
                                (lambda (_hd121553121942_ _arg121559121944_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd121553121942_))
                                      (let ((_e121556121947_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd121553121942_))))
                                        (let ((_lp-tl121558121952_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e121556121947_)))
                                              (_lp-hd121557121950_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e121556121947_))))
                                          (let ((__tmp127839
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd121557121950_
                                                         _arg121559121944_))))
                                            (declare (not safe))
                                            (_loop121555121939_
                                             _lp-tl121558121952_
                                             __tmp127839))))
                                      (let ((_arg121560121955_
                                             (reverse _arg121559121944_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl121549121931_))
                                            (let ((_e121563121958_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl121549121931_))))
                                              (let ((_tl121561121963_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e121563121958_)))
                                                    (_hd121562121961_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e121563121958_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd121562121961_))
                                                    (let ((_e121566121966_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd121562121961_))))
                                                      (let ((_tl121564121971_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121566121966_)))
                    (_hd121565121969_
                     (let () (declare (not safe)) (##car _e121566121966_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd121565121969_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd121565121969_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121564121971_))
                            (let ((_e121569121974_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121564121971_))))
                              (let ((_tl121567121979_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121569121974_)))
                                    (_hd121568121977_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121569121974_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd121568121977_))
                                    (let ((_e121572121982_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd121568121977_))))
                                      (let ((_tl121570121987_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121572121982_)))
                                            (_hd121571121985_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121572121982_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd121571121985_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd121571121985_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl121570121987_))
                                                    (let ((_e121575121990_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl121570121987_))))
                                                      (let ((_tl121573121995_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121575121990_)))
                    (_hd121574121993_
                     (let () (declare (not safe)) (##car _e121575121990_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl121573121995_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl121567121979_))
                        (let ((___splice126579126580_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl121567121979_
                                  '0))))
                          (let ((_tl121578122000_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice126579126580_ '1)))
                                (_target121576121998_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice126579126580_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl121578122000_))
                                (letrec ((_loop121579122003_
                                          (lambda (_hd121577122006_
                                                   _xarg121583122008_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd121577122006_))
                                                (let ((_e121580122011_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd121577122006_))))
                                                  (let ((_lp-tl121582122016_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121580122011_)))
                                                        (_lp-hd121581122014_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121580122011_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd121581122014_))
                                                        (let ((_e121587122019_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd121581122014_))))
                  (let ((_tl121585122024_
                         (let () (declare (not safe)) (##cdr _e121587122019_)))
                        (_hd121586122022_
                         (let ()
                           (declare (not safe))
                           (##car _e121587122019_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd121586122022_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd121586122022_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl121585122024_))
                                (let ((_e121590122027_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl121585122024_))))
                                  (let ((_tl121588122032_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121590122027_)))
                                        (_hd121589122030_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121590122027_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl121588122032_))
                                        (let ((__tmp127838
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd121589122030_
                                                       _xarg121583122008_))))
                                          (declare (not safe))
                                          (_loop121579122003_
                                           _lp-tl121582122016_
                                           __tmp127838))
                                        (___match126612126613_
                                         _e121551121926_
                                         _hd121550121929_
                                         _tl121549121931_
                                         ___splice126577126578_
                                         _target121552121934_
                                         _tl121554121936_))))
                                (___match126612126613_
                                 _e121551121926_
                                 _hd121550121929_
                                 _tl121549121931_
                                 ___splice126577126578_
                                 _target121552121934_
                                 _tl121554121936_))
                            (___match126612126613_
                             _e121551121926_
                             _hd121550121929_
                             _tl121549121931_
                             ___splice126577126578_
                             _target121552121934_
                             _tl121554121936_))
                        (___match126612126613_
                         _e121551121926_
                         _hd121550121929_
                         _tl121549121931_
                         ___splice126577126578_
                         _target121552121934_
                         _tl121554121936_))))
                (___match126612126613_
                 _e121551121926_
                 _hd121550121929_
                 _tl121549121931_
                 ___splice126577126578_
                 _target121552121934_
                 _tl121554121936_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg121584122035_
                                                       (reverse _xarg121583122008_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl121561121963_))
                                                      (___kont126575126576_
                                                       _xarg121584122035_
                                                       _hd121574121993_
                                                       _arg121560121955_)
                                                      (___match126612126613_
                                                       _e121551121926_
                                                       _hd121550121929_
                                                       _tl121549121931_
                                                       ___splice126577126578_
                                                       _target121552121934_
                                                       _tl121554121936_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_loop121579122003_
                                     _target121576121998_
                                     '())))
                                (___match126612126613_
                                 _e121551121926_
                                 _hd121550121929_
                                 _tl121549121931_
                                 ___splice126577126578_
                                 _target121552121934_
                                 _tl121554121936_))))
                        (___match126612126613_
                         _e121551121926_
                         _hd121550121929_
                         _tl121549121931_
                         ___splice126577126578_
                         _target121552121934_
                         _tl121554121936_))
                    (___match126612126613_
                     _e121551121926_
                     _hd121550121929_
                     _tl121549121931_
                     ___splice126577126578_
                     _target121552121934_
                     _tl121554121936_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match126612126613_
                                                     _e121551121926_
                                                     _hd121550121929_
                                                     _tl121549121931_
                                                     ___splice126577126578_
                                                     _target121552121934_
                                                     _tl121554121936_))
                                                (___match126612126613_
                                                 _e121551121926_
                                                 _hd121550121929_
                                                 _tl121549121931_
                                                 ___splice126577126578_
                                                 _target121552121934_
                                                 _tl121554121936_))
                                            (___match126612126613_
                                             _e121551121926_
                                             _hd121550121929_
                                             _tl121549121931_
                                             ___splice126577126578_
                                             _target121552121934_
                                             _tl121554121936_))))
                                    (___match126612126613_
                                     _e121551121926_
                                     _hd121550121929_
                                     _tl121549121931_
                                     ___splice126577126578_
                                     _target121552121934_
                                     _tl121554121936_))))
                            (___match126612126613_
                             _e121551121926_
                             _hd121550121929_
                             _tl121549121931_
                             ___splice126577126578_
                             _target121552121934_
                             _tl121554121936_))
                        (___match126612126613_
                         _e121551121926_
                         _hd121550121929_
                         _tl121549121931_
                         ___splice126577126578_
                         _target121552121934_
                         _tl121554121936_))
                    (___match126612126613_
                     _e121551121926_
                     _hd121550121929_
                     _tl121549121931_
                     ___splice126577126578_
                     _target121552121934_
                     _tl121554121936_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match126612126613_
                                                     _e121551121926_
                                                     _hd121550121929_
                                                     _tl121549121931_
                                                     ___splice126577126578_
                                                     _target121552121934_
                                                     _tl121554121936_))))
                                            (___match126612126613_
                                             _e121551121926_
                                             _hd121550121929_
                                             _tl121549121931_
                                             ___splice126577126578_
                                             _target121552121934_
                                             _tl121554121936_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop121555121939_ _target121552121934_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx126573126574_))
                  (let ((_e121551121926_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx126573126574_))))
                    (let ((_tl121549121931_
                           (let ()
                             (declare (not safe))
                             (##cdr _e121551121926_)))
                          (_hd121550121929_
                           (let ()
                             (declare (not safe))
                             (##car _e121551121926_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd121550121929_))
                          (let ((___splice126577126578_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd121550121929_
                                    '0))))
                            (let ((_tl121554121936_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice126577126578_ '1)))
                                  (_target121552121934_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice126577126578_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl121554121936_))
                                  (___match126600126601_
                                   _e121551121926_
                                   _hd121550121929_
                                   _tl121549121931_
                                   ___splice126577126578_
                                   _target121552121934_
                                   _tl121554121936_)
                                  (___match126612126613_
                                   _e121551121926_
                                   _hd121550121929_
                                   _tl121549121931_
                                   ___splice126577126578_
                                   _target121552121934_
                                   _tl121554121936_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl121549121931_))
                              (let ((_e121639121681_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl121549121931_))))
                                (let ((_tl121637121686_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e121639121681_)))
                                      (_hd121638121684_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e121639121681_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd121638121684_))
                                      (let ((_e121642121689_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd121638121684_))))
                                        (let ((_tl121640121694_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e121642121689_)))
                                              (_hd121641121692_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e121642121689_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd121641121692_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd121641121692_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl121640121694_))
                                                      (let ((_e121645121697_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl121640121694_))))
                (let ((_tl121643121702_
                       (let () (declare (not safe)) (##cdr _e121645121697_)))
                      (_hd121644121700_
                       (let () (declare (not safe)) (##car _e121645121697_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd121644121700_))
                      (let ((_e121648121705_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd121644121700_))))
                        (let ((_tl121646121710_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e121648121705_)))
                              (_hd121647121708_
                               (let ()
                                 (declare (not safe))
                                 (##car _e121648121705_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd121647121708_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd121647121708_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl121646121710_))
                                      (let ((_e121651121713_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl121646121710_))))
                                        (let ((_tl121649121718_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e121651121713_)))
                                              (_hd121650121716_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e121651121713_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl121649121718_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl121643121702_))
                                                  (let ((_e121654121721_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl121643121702_))))
                                                    (let ((_tl121652121726_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e121654121721_)))
                                                          (_hd121653121724_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e121654121721_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd121653121724_))
                                                          (let ((_e121657121729_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd121653121724_))))
                    (let ((_tl121655121734_
                           (let ()
                             (declare (not safe))
                             (##cdr _e121657121729_)))
                          (_hd121656121732_
                           (let ()
                             (declare (not safe))
                             (##car _e121657121729_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd121656121732_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd121656121732_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl121655121734_))
                                  (let ((_e121660121737_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl121655121734_))))
                                    (let ((_tl121658121742_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e121660121737_)))
                                          (_hd121659121740_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e121660121737_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl121658121742_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl121652121726_))
                                              (let ((_e121663121745_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl121652121726_))))
                                                (let ((_tl121661121750_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e121663121745_)))
                                                      (_hd121662121748_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e121663121745_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl121661121750_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl121637121686_))
                                                          (___kont126585126586_
                                                           _hd121659121740_
                                                           _hd121650121716_
                                                           _hd121550121929_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g121544121668_)))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g121544121668_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g121544121668_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g121544121668_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g121544121668_)))
                              (let () (declare (not safe)) (_g121544121668_)))
                          (let () (declare (not safe)) (_g121544121668_)))))
                  (let () (declare (not safe)) (_g121544121668_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g121544121668_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g121544121668_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g121544121668_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g121544121668_)))
                              (let ()
                                (declare (not safe))
                                (_g121544121668_)))))
                      (let () (declare (not safe)) (_g121544121668_)))))
              (let () (declare (not safe)) (_g121544121668_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g121544121668_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g121544121668_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g121544121668_)))))
                              (let ()
                                (declare (not safe))
                                (_g121544121668_))))))
                  (let () (declare (not safe)) (_g121544121668_))))))))
    (define gxc#lambda-form-arity
      (lambda (_form121344_)
        (let* ((_g121346121360_
                (lambda (_g121347121357_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g121347121357_))))
               (_g121345121537_
                (lambda (_g121347121363_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g121347121363_))
                      (let ((_e121352121365_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g121347121363_))))
                        (let ((_hd121351121368_
                               (let ()
                                 (declare (not safe))
                                 (##car _e121352121365_)))
                              (_tl121350121370_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e121352121365_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl121350121370_))
                              (let ((_e121355121373_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl121350121370_))))
                                (let ((_hd121354121376_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e121355121373_)))
                                      (_tl121353121378_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e121355121373_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl121353121378_))
                                      ((lambda (_L121381_ _L121382_)
                                         (let* ((___stx126695126696_ _L121382_)
                                                (_g121397121425_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx126695126696_)))))
                                           (let ((___kont126697126698_
                                                  (lambda (_L121516_)
                                                    (length (let ((__tmp127840
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g121526121529_ _g121527121531_)
                             (let ()
                               (declare (not safe))
                               (cons _g121526121529_ _g121527121531_)))))
                      (declare (not safe))
                      (foldr1 __tmp127840 '() _L121516_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont126701126702_
                                                  (lambda (_L121467_ _L121468_)
                                                    (let ((__tmp127841
                                                           (length (let ((__tmp127842
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g121479121482_ _g121480121484_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g121479121482_
                                            _g121480121484_)))))
                             (declare (not safe))
                             (foldr1 __tmp127842 '() _L121468_)))))
              (declare (not safe))
              (cons __tmp127841 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont126705126706_
                                                  (lambda (_L121430_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '())))))
                                             (let* ((___match126720126721_
                                                     (lambda (___splice126703126704_
                                                              _target121411121443_
                                                              _tl121413121445_)
                                                       (letrec ((_loop121414121448_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd121412121451_ _arg121418121453_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd121412121451_))
                               (let ((_e121415121456_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd121412121451_))))
                                 (let ((_lp-tl121417121461_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e121415121456_)))
                                       (_lp-hd121416121459_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e121415121456_))))
                                   (let ((__tmp127843
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd121416121459_
                                                  _arg121418121453_))))
                                     (declare (not safe))
                                     (_loop121414121448_
                                      _lp-tl121417121461_
                                      __tmp127843))))
                               (let ((_arg121419121464_
                                      (reverse _arg121418121453_)))
                                 (___kont126701126702_
                                  _tl121413121445_
                                  _arg121419121464_))))))
                 (let ()
                   (declare (not safe))
                   (_loop121414121448_ _target121411121443_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match126714126715_
                                                     (lambda (___splice126699126700_
                                                              _target121400121492_
                                                              _tl121402121494_)
                                                       (letrec ((_loop121403121497_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd121401121500_ _arg121407121502_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd121401121500_))
                               (let ((_e121404121505_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd121401121500_))))
                                 (let ((_lp-tl121406121510_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e121404121505_)))
                                       (_lp-hd121405121508_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e121404121505_))))
                                   (let ((__tmp127844
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd121405121508_
                                                  _arg121407121502_))))
                                     (declare (not safe))
                                     (_loop121403121497_
                                      _lp-tl121406121510_
                                      __tmp127844))))
                               (let ((_arg121408121513_
                                      (reverse _arg121407121502_)))
                                 (___kont126697126698_ _arg121408121513_))))))
                 (let ()
                   (declare (not safe))
                   (_loop121403121497_ _target121400121492_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair/null?
                                                      ___stx126695126696_))
                                                   (let ((___splice126699126700_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-split-splice
                                                             ___stx126695126696_
                                                             '0))))
                                                     (let ((_tl121402121494_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice126699126700_
                                                               '1)))
                                                           (_target121400121492_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice126699126700_
                                                               '0))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl121402121494_))
                                                           (___match126714126715_
                                                            ___splice126699126700_
                                                            _target121400121492_
                                                            _tl121402121494_)
                                                           (___match126720126721_
                                                            ___splice126699126700_
                                                            _target121400121492_
                                                            _tl121402121494_))))
                                                   (___kont126705126706_
                                                    ___stx126695126696_))))))
                                       _hd121354121376_
                                       _hd121351121368_)
                                      (let ()
                                        (declare (not safe))
                                        (_g121346121360_ _g121347121363_)))))
                              (let ()
                                (declare (not safe))
                                (_g121346121360_ _g121347121363_)))))
                      (let ()
                        (declare (not safe))
                        (_g121346121360_ _g121347121363_))))))
          (declare (not safe))
          (_g121345121537_ _form121344_))))
    (define gxc#lambda-expr?
      (lambda (_expr121297_)
        (let* ((___stx126723126724_ _expr121297_)
               (_g121300121310_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126723126724_)))))
          (let ((___kont126725126726_ (lambda (_L121330_) '#t))
                (___kont126727126728_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx126723126724_))
                (let ((_e121305121322_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx126723126724_))))
                  (let ((_tl121303121327_
                         (let () (declare (not safe)) (##cdr _e121305121322_)))
                        (_hd121304121325_
                         (let ()
                           (declare (not safe))
                           (##car _e121305121322_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd121304121325_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#lambda _hd121304121325_))
                            (___kont126725126726_ _tl121303121327_)
                            (___kont126727126728_))
                        (___kont126727126728_))))
                (___kont126727126728_))))))
    (define gxc#case-lambda-expr?
      (lambda (_expr121250_)
        (let* ((___stx126741126742_ _expr121250_)
               (_g121253121263_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126741126742_)))))
          (let ((___kont126743126744_ (lambda (_L121283_) '#t))
                (___kont126745126746_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx126741126742_))
                (let ((_e121258121275_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx126741126742_))))
                  (let ((_tl121256121280_
                         (let () (declare (not safe)) (##cdr _e121258121275_)))
                        (_hd121257121278_
                         (let ()
                           (declare (not safe))
                           (##car _e121258121275_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd121257121278_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#case-lambda _hd121257121278_))
                            (___kont126743126744_ _tl121256121280_)
                            (___kont126745126746_))
                        (___kont126745126746_))))
                (___kont126745126746_))))))
    (define gxc#opt-lambda-expr?
      (lambda (_expr121119_)
        (let* ((___stx126759126760_ _expr121119_)
               (_g121122121152_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126759126760_)))))
          (let ((___kont126761126762_
                 (lambda (_L121220_ _L121221_ _L121222_)
                   (if (let () (declare (not safe)) (gx#identifier? _L121222_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#lambda-expr? _L121221_))
                           (let ()
                             (declare (not safe))
                             (gxc#case-lambda-expr? _L121220_))
                           '#f)
                       '#f)))
                (___kont126763126764_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx126759126760_))
                (let ((_e121129121164_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx126759126760_))))
                  (let ((_tl121127121169_
                         (let () (declare (not safe)) (##cdr _e121129121164_)))
                        (_hd121128121167_
                         (let ()
                           (declare (not safe))
                           (##car _e121129121164_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd121128121167_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd121128121167_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl121127121169_))
                                (let ((_e121132121172_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl121127121169_))))
                                  (let ((_tl121130121177_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121132121172_)))
                                        (_hd121131121175_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121132121172_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd121131121175_))
                                        (let ((_e121135121180_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd121131121175_))))
                                          (let ((_tl121133121185_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e121135121180_)))
                                                (_hd121134121183_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e121135121180_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd121134121183_))
                                                (let ((_e121138121188_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd121134121183_))))
                                                  (let ((_tl121136121193_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121138121188_)))
                                                        (_hd121137121191_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121138121188_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd121137121191_))
                                                        (let ((_e121141121196_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd121137121191_))))
                  (let ((_tl121139121201_
                         (let () (declare (not safe)) (##cdr _e121141121196_)))
                        (_hd121140121199_
                         (let ()
                           (declare (not safe))
                           (##car _e121141121196_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl121139121201_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121136121193_))
                            (let ((_e121144121204_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121136121193_))))
                              (let ((_tl121142121209_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121144121204_)))
                                    (_hd121143121207_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121144121204_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl121142121209_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl121133121185_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl121130121177_))
                                            (let ((_e121147121212_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl121130121177_))))
                                              (let ((_tl121145121217_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e121147121212_)))
                                                    (_hd121146121215_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e121147121212_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl121145121217_))
                                                    (___kont126761126762_
                                                     _hd121146121215_
                                                     _hd121143121207_
                                                     _hd121140121199_)
                                                    (___kont126763126764_))))
                                            (___kont126763126764_))
                                        (___kont126763126764_))
                                    (___kont126763126764_))))
                            (___kont126763126764_))
                        (___kont126763126764_))))
                (___kont126763126764_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont126763126764_))))
                                        (___kont126763126764_))))
                                (___kont126763126764_))
                            (___kont126763126764_))
                        (___kont126763126764_))))
                (___kont126763126764_))))))
    (define gxc#kw-lambda-expr?
      (lambda (_expr120444_)
        (let* ((___stx126821126822_ _expr120444_)
               (_g120447120605_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126821126822_)))))
          (let ((___kont126823126824_
                 (lambda (_L120993_
                          _L120994_
                          _L120995_
                          _L120996_
                          _L120997_
                          _L120998_
                          _L120999_
                          _L121000_
                          _L121001_
                          _L121002_
                          _L121003_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#runtime-identifier=? _L121000_ 'apply))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L120996_ 'apply))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#runtime-identifier=?
                                  _L120995_
                                  'keyword-dispatch))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L121003_
                                      _L120994_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L121002_
                                          _L120999_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L120997_
                                              _L120993_))
                                           (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L121001_
                                              _L120998_))
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)))
                (___kont126825126826_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx126821126822_))
                (let ((_e120462120617_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx126821126822_))))
                  (let ((_tl120460120622_
                         (let () (declare (not safe)) (##cdr _e120462120617_)))
                        (_hd120461120620_
                         (let ()
                           (declare (not safe))
                           (##car _e120462120617_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd120461120620_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd120461120620_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl120460120622_))
                                (let ((_e120465120625_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl120460120622_))))
                                  (let ((_tl120463120630_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e120465120625_)))
                                        (_hd120464120628_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e120465120625_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd120464120628_))
                                        (let ((_e120468120633_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd120464120628_))))
                                          (let ((_tl120466120638_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e120468120633_)))
                                                (_hd120467120636_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e120468120633_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd120467120636_))
                                                (let ((_e120471120641_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd120467120636_))))
                                                  (let ((_tl120469120646_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120471120641_)))
                                                        (_hd120470120644_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120471120641_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd120470120644_))
                                                        (let ((_e120474120649_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd120470120644_))))
                  (let ((_tl120472120654_
                         (let () (declare (not safe)) (##cdr _e120474120649_)))
                        (_hd120473120652_
                         (let ()
                           (declare (not safe))
                           (##car _e120474120649_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl120472120654_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl120469120646_))
                            (let ((_e120477120657_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl120469120646_))))
                              (let ((_tl120475120662_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e120477120657_)))
                                    (_hd120476120660_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e120477120657_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd120476120660_))
                                    (let ((_e120480120665_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd120476120660_))))
                                      (let ((_tl120478120670_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e120480120665_)))
                                            (_hd120479120668_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e120480120665_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd120479120668_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#let-values
                                                   _hd120479120668_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl120478120670_))
                                                    (let ((_e120483120673_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl120478120670_))))
                                                      (let ((_tl120481120678_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e120483120673_)))
                    (_hd120482120676_
                     (let () (declare (not safe)) (##car _e120483120673_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd120482120676_))
                    (let ((_e120486120681_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd120482120676_))))
                      (let ((_tl120484120686_
                             (let ()
                               (declare (not safe))
                               (##cdr _e120486120681_)))
                            (_hd120485120684_
                             (let ()
                               (declare (not safe))
                               (##car _e120486120681_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd120485120684_))
                            (let ((_e120489120689_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd120485120684_))))
                              (let ((_tl120487120694_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e120489120689_)))
                                    (_hd120488120692_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e120489120689_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd120488120692_))
                                    (let ((_e120492120697_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd120488120692_))))
                                      (let ((_tl120490120702_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e120492120697_)))
                                            (_hd120491120700_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e120492120697_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl120490120702_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl120487120694_))
                                                (let ((_e120495120705_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl120487120694_))))
                                                  (let ((_tl120493120710_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120495120705_)))
                                                        (_hd120494120708_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120495120705_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl120493120710_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl120484120686_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl120481120678_))
                        (let ((_e120498120713_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl120481120678_))))
                          (let ((_tl120496120718_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e120498120713_)))
                                (_hd120497120716_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e120498120713_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd120497120716_))
                                (let ((_e120501120721_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd120497120716_))))
                                  (let ((_tl120499120726_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e120501120721_)))
                                        (_hd120500120724_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e120501120721_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd120500120724_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#lambda
                                               _hd120500120724_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl120499120726_))
                                                (let ((_e120504120729_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl120499120726_))))
                                                  (let ((_tl120502120734_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120504120729_)))
                                                        (_hd120503120732_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120504120729_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd120503120732_))
                                                        (let ((_e120507120737_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd120503120732_))))
                  (let ((_tl120505120742_
                         (let () (declare (not safe)) (##cdr _e120507120737_)))
                        (_hd120506120740_
                         (let ()
                           (declare (not safe))
                           (##car _e120507120737_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl120502120734_))
                        (let ((_e120510120745_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl120502120734_))))
                          (let ((_tl120508120750_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e120510120745_)))
                                (_hd120509120748_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e120510120745_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd120509120748_))
                                (let ((_e120513120753_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd120509120748_))))
                                  (let ((_tl120511120758_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e120513120753_)))
                                        (_hd120512120756_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e120513120753_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd120512120756_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#call
                                               _hd120512120756_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl120511120758_))
                                                (let ((_e120516120761_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl120511120758_))))
                                                  (let ((_tl120514120766_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120516120761_)))
                                                        (_hd120515120764_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120516120761_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd120515120764_))
                                                        (let ((_e120519120769_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd120515120764_))))
                  (let ((_tl120517120774_
                         (let () (declare (not safe)) (##cdr _e120519120769_)))
                        (_hd120518120772_
                         (let ()
                           (declare (not safe))
                           (##car _e120519120769_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd120518120772_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd120518120772_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl120517120774_))
                                (let ((_e120522120777_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl120517120774_))))
                                  (let ((_tl120520120782_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e120522120777_)))
                                        (_hd120521120780_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e120522120777_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl120520120782_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl120514120766_))
                                            (let ((_e120525120785_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl120514120766_))))
                                              (let ((_tl120523120790_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e120525120785_)))
                                                    (_hd120524120788_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e120525120785_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd120524120788_))
                                                    (let ((_e120528120793_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd120524120788_))))
                                                      (let ((_tl120526120798_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e120528120793_)))
                    (_hd120527120796_
                     (let () (declare (not safe)) (##car _e120528120793_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd120527120796_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd120527120796_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl120526120798_))
                            (let ((_e120531120801_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl120526120798_))))
                              (let ((_tl120529120806_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e120531120801_)))
                                    (_hd120530120804_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e120531120801_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl120529120806_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl120523120790_))
                                        (let ((_e120534120809_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl120523120790_))))
                                          (let ((_tl120532120814_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e120534120809_)))
                                                (_hd120533120812_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e120534120809_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd120533120812_))
                                                (let ((_e120537120817_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd120533120812_))))
                                                  (let ((_tl120535120822_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120537120817_)))
                                                        (_hd120536120820_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120537120817_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd120536120820_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd120536120820_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl120535120822_))
                        (let ((_e120540120825_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl120535120822_))))
                          (let ((_tl120538120830_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e120540120825_)))
                                (_hd120539120828_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e120540120825_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl120538120830_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl120508120750_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl120496120718_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl120475120662_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl120466120638_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl120463120630_))
                                                    (let ((_e120543120833_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl120463120630_))))
                                                      (let ((_tl120541120838_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e120543120833_)))
                    (_hd120542120836_
                     (let () (declare (not safe)) (##car _e120543120833_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd120542120836_))
                    (let ((_e120546120841_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd120542120836_))))
                      (let ((_tl120544120846_
                             (let ()
                               (declare (not safe))
                               (##cdr _e120546120841_)))
                            (_hd120545120844_
                             (let ()
                               (declare (not safe))
                               (##car _e120546120841_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd120545120844_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#lambda _hd120545120844_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl120544120846_))
                                    (let ((_e120549120849_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl120544120846_))))
                                      (let ((_tl120547120854_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e120549120849_)))
                                            (_hd120548120852_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e120549120849_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl120547120854_))
                                            (let ((_e120552120857_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl120547120854_))))
                                              (let ((_tl120550120862_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e120552120857_)))
                                                    (_hd120551120860_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e120552120857_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd120551120860_))
                                                    (let ((_e120555120865_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd120551120860_))))
                                                      (let ((_tl120553120870_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e120555120865_)))
                    (_hd120554120868_
                     (let () (declare (not safe)) (##car _e120555120865_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd120554120868_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd120554120868_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl120553120870_))
                            (let ((_e120558120873_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl120553120870_))))
                              (let ((_tl120556120878_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e120558120873_)))
                                    (_hd120557120876_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e120558120873_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd120557120876_))
                                    (let ((_e120561120881_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd120557120876_))))
                                      (let ((_tl120559120886_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e120561120881_)))
                                            (_hd120560120884_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e120561120881_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd120560120884_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd120560120884_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl120559120886_))
                                                    (let ((_e120564120889_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl120559120886_))))
                                                      (let ((_tl120562120894_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e120564120889_)))
                    (_hd120563120892_
                     (let () (declare (not safe)) (##car _e120564120889_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl120562120894_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl120556120878_))
                        (let ((_e120567120897_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl120556120878_))))
                          (let ((_tl120565120902_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e120567120897_)))
                                (_hd120566120900_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e120567120897_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd120566120900_))
                                (let ((_e120570120905_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd120566120900_))))
                                  (let ((_tl120568120910_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e120570120905_)))
                                        (_hd120569120908_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e120570120905_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd120569120908_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd120569120908_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl120568120910_))
                                                (let ((_e120573120913_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl120568120910_))))
                                                  (let ((_tl120571120918_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120573120913_)))
                                                        (_hd120572120916_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120573120913_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl120571120918_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl120565120902_))
                                                            (let ((_e120576120921_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl120565120902_))))
                      (let ((_tl120574120926_
                             (let ()
                               (declare (not safe))
                               (##cdr _e120576120921_)))
                            (_hd120575120924_
                             (let ()
                               (declare (not safe))
                               (##car _e120576120921_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd120575120924_))
                            (let ((_e120579120929_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd120575120924_))))
                              (let ((_tl120577120934_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e120579120929_)))
                                    (_hd120578120932_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e120579120929_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd120578120932_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd120578120932_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl120577120934_))
                                            (let ((_e120582120937_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl120577120934_))))
                                              (let ((_tl120580120942_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e120582120937_)))
                                                    (_hd120581120940_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e120582120937_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl120580120942_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl120574120926_))
                                                        (let ((_e120585120945_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl120574120926_))))
                  (let ((_tl120583120950_
                         (let () (declare (not safe)) (##cdr _e120585120945_)))
                        (_hd120584120948_
                         (let ()
                           (declare (not safe))
                           (##car _e120585120945_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd120584120948_))
                        (let ((_e120588120953_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd120584120948_))))
                          (let ((_tl120586120958_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e120588120953_)))
                                (_hd120587120956_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e120588120953_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd120587120956_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd120587120956_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl120586120958_))
                                        (let ((_e120591120961_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl120586120958_))))
                                          (let ((_tl120589120966_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e120591120961_)))
                                                (_hd120590120964_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e120591120961_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl120589120966_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl120583120950_))
                                                    (let ((_e120594120969_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl120583120950_))))
                                                      (let ((_tl120592120974_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e120594120969_)))
                    (_hd120593120972_
                     (let () (declare (not safe)) (##car _e120594120969_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd120593120972_))
                    (let ((_e120597120977_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd120593120972_))))
                      (let ((_tl120595120982_
                             (let ()
                               (declare (not safe))
                               (##cdr _e120597120977_)))
                            (_hd120596120980_
                             (let ()
                               (declare (not safe))
                               (##car _e120597120977_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd120596120980_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#ref _hd120596120980_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl120595120982_))
                                    (let ((_e120600120985_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl120595120982_))))
                                      (let ((_tl120598120990_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e120600120985_)))
                                            (_hd120599120988_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e120600120985_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl120598120990_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl120592120974_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl120550120862_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl120541120838_))
                                                        (___kont126823126824_
                                                         _hd120599120988_
                                                         _hd120590120964_
                                                         _hd120572120916_
                                                         _hd120563120892_
                                                         _hd120548120852_
                                                         _hd120539120828_
                                                         _hd120530120804_
                                                         _hd120521120780_
                                                         _hd120506120740_
                                                         _hd120491120700_
                                                         _hd120473120652_)
                                                        (___kont126825126826_))
                                                    (___kont126825126826_))
                                                (___kont126825126826_))
                                            (___kont126825126826_))))
                                    (___kont126825126826_))
                                (___kont126825126826_))
                            (___kont126825126826_))))
                    (___kont126825126826_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont126825126826_))
                                                (___kont126825126826_))))
                                        (___kont126825126826_))
                                    (___kont126825126826_))
                                (___kont126825126826_))))
                        (___kont126825126826_))))
                (___kont126825126826_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont126825126826_))))
                                            (___kont126825126826_))
                                        (___kont126825126826_))
                                    (___kont126825126826_))))
                            (___kont126825126826_))))
                    (___kont126825126826_))
                (___kont126825126826_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont126825126826_))
                                            (___kont126825126826_))
                                        (___kont126825126826_))))
                                (___kont126825126826_))))
                        (___kont126825126826_))
                    (___kont126825126826_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont126825126826_))
                                                (___kont126825126826_))
                                            (___kont126825126826_))))
                                    (___kont126825126826_))))
                            (___kont126825126826_))
                        (___kont126825126826_))
                    (___kont126825126826_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont126825126826_))))
                                            (___kont126825126826_))))
                                    (___kont126825126826_))
                                (___kont126825126826_))
                            (___kont126825126826_))))
                    (___kont126825126826_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont126825126826_))
                                                (___kont126825126826_))
                                            (___kont126825126826_))
                                        (___kont126825126826_))
                                    (___kont126825126826_))
                                (___kont126825126826_))))
                        (___kont126825126826_))
                    (___kont126825126826_))
                (___kont126825126826_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont126825126826_))))
                                        (___kont126825126826_))
                                    (___kont126825126826_))))
                            (___kont126825126826_))
                        (___kont126825126826_))
                    (___kont126825126826_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont126825126826_))))
                                            (___kont126825126826_))
                                        (___kont126825126826_))))
                                (___kont126825126826_))
                            (___kont126825126826_))
                        (___kont126825126826_))))
                (___kont126825126826_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont126825126826_))
                                            (___kont126825126826_))
                                        (___kont126825126826_))))
                                (___kont126825126826_))))
                        (___kont126825126826_))))
                (___kont126825126826_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont126825126826_))
                                            (___kont126825126826_))
                                        (___kont126825126826_))))
                                (___kont126825126826_))))
                        (___kont126825126826_))
                    (___kont126825126826_))
                (___kont126825126826_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont126825126826_))
                                            (___kont126825126826_))))
                                    (___kont126825126826_))))
                            (___kont126825126826_))))
                    (___kont126825126826_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont126825126826_))
                                                (___kont126825126826_))
                                            (___kont126825126826_))))
                                    (___kont126825126826_))))
                            (___kont126825126826_))
                        (___kont126825126826_))))
                (___kont126825126826_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont126825126826_))))
                                        (___kont126825126826_))))
                                (___kont126825126826_))
                            (___kont126825126826_))
                        (___kont126825126826_))))
                (___kont126825126826_))))))
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx120186_ _id120187_ _clauses120188_ _gensym?120189_)
        (let _lp120191_ ((_rest120193_ _clauses120188_)
                         (_ids120194_ '())
                         (_impls120195_ '())
                         (_clauses120196_ '()))
          (let* ((_rest120197120205_ _rest120193_)
                 (_else120199120213_
                  (lambda ()
                    (values (reverse _ids120194_)
                            (reverse _impls120195_)
                            (reverse _clauses120196_))))
                 (_K120201120418_
                  (lambda (_rest120216_ _clause120217_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#dispatch-lambda-form? _clause120217_))
                        (let ((__tmp127900
                               (let ()
                                 (declare (not safe))
                                 (cons _clause120217_ _clauses120196_))))
                          (declare (not safe))
                          (_lp120191_
                           _rest120216_
                           _ids120194_
                           _impls120195_
                           __tmp127900))
                        (let* ((_g120219120230_
                                (lambda (_g120220120227_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g120220120227_))))
                               (_g120218120415_
                                (lambda (_g120220120233_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _g120220120233_))
                                      (let ((_e120225120235_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _g120220120233_))))
                                        (let ((_hd120224120238_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e120225120235_)))
                                              (_tl120223120240_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e120225120235_))))
                                          ((lambda (_L120243_ _L120244_)
                                             (let* ((_id120261_
                                                     (let ((__tmp127847
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _id120187_)))
                                                           (__tmp127846
                                                            (length _clauses120196_))
                                                           (__tmp127845
                                                            (if _gensym?120189_
                                                                (gensym '__)
                                                                '"")))
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        __tmp127847
                                                        '"__"
                                                        __tmp127846
                                                        __tmp127845)))
                                                    (_id120263_
                                                     (let ((__tmp127848
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-source
                                                               _stx120186_))))
                                                       (declare (not safe))
                                                       (gx#core-quote-syntax__1
                                                        _id120261_
                                                        __tmp127848)))
                                                    (_impl120265_
                                                     (let ((__tmp127849
                                                            (let ((__tmp127851
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '%#lambda)))
                          (__tmp127850
                           (let ()
                             (declare (not safe))
                             (cons _L120244_ _L120243_))))
                      (declare (not safe))
                      (cons __tmp127851 __tmp127850))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp127849 _stx120186_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause120412_
                                                     (let* ((___stx127205127206_
                                                             _L120244_)
                                                            (_g120269120297_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx127205127206_)))))
               (let ((___kont127207127208_
                      (lambda (_L120391_)
                        (let ((__tmp127852
                               (let ((__tmp127853
                                      (let ((__tmp127854
                                             (let ((__tmp127855
                                                    (let ((__tmp127861
                                                           (let ((__tmp127862
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id120263_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp127862)))
                  (__tmp127856
                   (let ((__tmp127857
                          (lambda (_g120401120404_ _g120402120406_)
                            (let ((__tmp127858
                                   (let ((__tmp127860
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp127859
                                          (let ()
                                            (declare (not safe))
                                            (cons _g120401120404_ '()))))
                                     (declare (not safe))
                                     (cons __tmp127860 __tmp127859))))
                              (declare (not safe))
                              (cons __tmp127858 _g120402120406_)))))
                     (declare (not safe))
                     (foldr1 __tmp127857 '() _L120391_))))
              (declare (not safe))
              (cons __tmp127861 __tmp127856))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp127855))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp127854
                                         _stx120186_))))
                                 (declare (not safe))
                                 (cons __tmp127853 '()))))
                          (declare (not safe))
                          (cons _L120244_ __tmp127852))))
                     (___kont127211127212_
                      (lambda (_L120342_ _L120343_)
                        (let ((__tmp127863
                               (let ((__tmp127864
                                      (let ((__tmp127865
                                             (let ((__tmp127866
                                                    (let ((__tmp127880
                                                           (let ((__tmp127881
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp127881)))
                  (__tmp127867
                   (let ((__tmp127878
                          (let ((__tmp127879
                                 (let ()
                                   (declare (not safe))
                                   (cons _id120263_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp127879)))
                         (__tmp127868
                          (let ((__tmp127874
                                 (let ((__tmp127875
                                        (let ((__tmp127877
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)))
                                              (__tmp127876
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L120342_ '()))))
                                          (declare (not safe))
                                          (cons __tmp127877 __tmp127876))))
                                   (declare (not safe))
                                   (cons __tmp127875 '())))
                                (__tmp127869
                                 (let ((__tmp127870
                                        (lambda (_g120354120357_
                                                 _g120355120359_)
                                          (let ((__tmp127871
                                                 (let ((__tmp127873
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)))
                                                       (__tmp127872
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g120354120357_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp127873
                                                         __tmp127872))))
                                            (declare (not safe))
                                            (cons __tmp127871
                                                  _g120355120359_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp127870 '() _L120343_))))
                            (declare (not safe))
                            (foldr1 cons __tmp127874 __tmp127869))))
                     (declare (not safe))
                     (cons __tmp127878 __tmp127868))))
              (declare (not safe))
              (cons __tmp127880 __tmp127867))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp127866))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp127865
                                         _stx120186_))))
                                 (declare (not safe))
                                 (cons __tmp127864 '()))))
                          (declare (not safe))
                          (cons _L120244_ __tmp127863))))
                     (___kont127215127216_
                      (lambda (_L120302_)
                        (let ((__tmp127882
                               (let ((__tmp127883
                                      (let ((__tmp127884
                                             (let ((__tmp127885
                                                    (let ((__tmp127893
                                                           (let ((__tmp127894
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp127894)))
                  (__tmp127886
                   (let ((__tmp127891
                          (let ((__tmp127892
                                 (let ()
                                   (declare (not safe))
                                   (cons _id120263_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp127892)))
                         (__tmp127887
                          (let ((__tmp127888
                                 (let ((__tmp127890
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '%#ref)))
                                       (__tmp127889
                                        (let ()
                                          (declare (not safe))
                                          (cons _L120302_ '()))))
                                   (declare (not safe))
                                   (cons __tmp127890 __tmp127889))))
                            (declare (not safe))
                            (cons __tmp127888 '()))))
                     (declare (not safe))
                     (cons __tmp127891 __tmp127887))))
              (declare (not safe))
              (cons __tmp127893 __tmp127886))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp127885))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp127884
                                         _stx120186_))))
                                 (declare (not safe))
                                 (cons __tmp127883 '()))))
                          (declare (not safe))
                          (cons _L120244_ __tmp127882)))))
                 (let* ((___match127230127231_
                         (lambda (___splice127213127214_
                                  _target120283120318_
                                  _tl120285120320_)
                           (letrec ((_loop120286120323_
                                     (lambda (_hd120284120326_
                                              _arg120290120328_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd120284120326_))
                                           (let ((_e120287120331_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd120284120326_))))
                                             (let ((_lp-tl120289120336_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e120287120331_)))
                                                   (_lp-hd120288120334_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e120287120331_))))
                                               (let ((__tmp127895
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd120288120334_
                                                              _arg120290120328_))))
                                                 (declare (not safe))
                                                 (_loop120286120323_
                                                  _lp-tl120289120336_
                                                  __tmp127895))))
                                           (let ((_arg120291120339_
                                                  (reverse _arg120290120328_)))
                                             (___kont127211127212_
                                              _tl120285120320_
                                              _arg120291120339_))))))
                             (let ()
                               (declare (not safe))
                               (_loop120286120323_
                                _target120283120318_
                                '())))))
                        (___match127224127225_
                         (lambda (___splice127209127210_
                                  _target120272120367_
                                  _tl120274120369_)
                           (letrec ((_loop120275120372_
                                     (lambda (_hd120273120375_
                                              _arg120279120377_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd120273120375_))
                                           (let ((_e120276120380_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd120273120375_))))
                                             (let ((_lp-tl120278120385_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e120276120380_)))
                                                   (_lp-hd120277120383_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e120276120380_))))
                                               (let ((__tmp127896
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd120277120383_
                                                              _arg120279120377_))))
                                                 (declare (not safe))
                                                 (_loop120275120372_
                                                  _lp-tl120278120385_
                                                  __tmp127896))))
                                           (let ((_arg120280120388_
                                                  (reverse _arg120279120377_)))
                                             (___kont127207127208_
                                              _arg120280120388_))))))
                             (let ()
                               (declare (not safe))
                               (_loop120275120372_
                                _target120272120367_
                                '()))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? ___stx127205127206_))
                       (let ((___splice127209127210_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 ___stx127205127206_
                                 '0))))
                         (let ((_tl120274120369_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice127209127210_ '1)))
                               (_target120272120367_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice127209127210_ '0))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl120274120369_))
                               (___match127224127225_
                                ___splice127209127210_
                                _target120272120367_
                                _tl120274120369_)
                               (___match127230127231_
                                ___splice127209127210_
                                _target120272120367_
                                _tl120274120369_))))
                       (___kont127215127216_ ___stx127205127206_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp127899
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _id120263_
                                                              _ids120194_)))
                                                     (__tmp127898
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _impl120265_
                                                              _impls120195_)))
                                                     (__tmp127897
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _clause120412_
                                                              _clauses120196_))))
                                                 (declare (not safe))
                                                 (_lp120191_
                                                  _rest120216_
                                                  __tmp127899
                                                  __tmp127898
                                                  __tmp127897))))
                                           _tl120223120240_
                                           _hd120224120238_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g120219120230_ _g120220120233_))))))
                          (declare (not safe))
                          (_g120218120415_ _clause120217_))))))
            (if (let () (declare (not safe)) (##pair? _rest120197120205_))
                (let ((_hd120202120421_
                       (let ()
                         (declare (not safe))
                         (##car _rest120197120205_)))
                      (_tl120203120423_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest120197120205_))))
                  (let* ((_clause120426_ _hd120202120421_)
                         (_rest120428_ _tl120203120423_))
                    (declare (not safe))
                    (_K120201120418_ _rest120428_ _clause120426_)))
                (let () (declare (not safe)) (_else120199120213_)))))))
    (define gxc#lift-case-lambda-clauses__0
      (lambda (_stx120433_ _id120434_ _clauses120435_)
        (let ((_gensym?120437_ '#f))
          (declare (not safe))
          (gxc#lift-case-lambda-clauses__%
           _stx120433_
           _id120434_
           _clauses120435_
           _gensym?120437_))))
    (define gxc#lift-case-lambda-clauses
      (lambda _g127902_
        (let ((_g127901_ (let () (declare (not safe)) (##length _g127902_))))
          (cond ((let () (declare (not safe)) (##fx= _g127901_ 3))
                 (apply (lambda (_stx120433_ _id120434_ _clauses120435_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__0
                             _stx120433_
                             _id120434_
                             _clauses120435_)))
                        _g127902_))
                ((let () (declare (not safe)) (##fx= _g127901_ 4))
                 (apply (lambda (_stx120439_
                                 _id120440_
                                 _clauses120441_
                                 _gensym?120442_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__%
                             _stx120439_
                             _id120440_
                             _clauses120441_
                             _gensym?120442_)))
                        _g127902_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#lift-case-lambda-clauses
                  _g127902_))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_stx119463_)
        (letrec ((_case-lambda-clause-def119465_
                  (lambda (_id120182_ _impl120183_)
                    (let ((__tmp127903
                           (let ((__tmp127904
                                  (let ((__tmp127907
                                         (let ()
                                           (declare (not safe))
                                           (cons _id120182_ '())))
                                        (__tmp127905
                                         (let ((__tmp127906
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _impl120183_))))
                                           (declare (not safe))
                                           (cons __tmp127906 '()))))
                                    (declare (not safe))
                                    (cons __tmp127907 __tmp127905))))
                             (declare (not safe))
                             (cons '%#define-values __tmp127904))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp127903 _stx119463_))))
                 (_opt-lambda-dispatch-name119466_
                  (lambda (_id120178_)
                    (if (uninterned-symbol? _id120178_)
                        (let ((_str120180_ (symbol->string _id120178_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"opt-lambda" _str120180_))
                              '"%"
                              _id120178_))
                        _id120178_)))
                 (_kw-lambda-dispatch-name119467_
                  (lambda (_id120173_ _name120174_)
                    (if (uninterned-symbol? _id120173_)
                        (let ((_str120176_ (symbol->string _id120173_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"kw-lambda" _str120176_))
                              _name120174_
                              _id120173_))
                        _id120173_))))
          (let* ((___stx127253127254_ _stx119463_)
                 (_g119472119531_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx127253127254_)))))
            (let ((___kont127255127256_
                   (lambda (_L120082_ _L120083_)
                     (let* ((___stx127233127234_ _L120082_)
                            (_g120100120114_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx127233127234_)))))
                       (let ((___kont127235127236_
                              (lambda (_L120158_) _stx119463_))
                             (___kont127237127238_
                              (lambda (_L120127_)
                                (let ((_g127908_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#lift-case-lambda-clauses__0
                                          _stx119463_
                                          _L120083_
                                          _L120127_))))
                                  (begin
                                    (let ((_g127909_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g127908_)
                                                 (##vector-length _g127908_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g127909_ 3)))
                                          (error "Context expects 3 values"
                                                 _g127909_)))
                                    (let ((_ids120137_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g127908_ 0)))
                                          (_impls120138_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g127908_ 1)))
                                          (_clauses120139_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g127908_ 2))))
                                      (let* ((_g127910_
                                              (for-each
                                               gx#core-bind-runtime!
                                               _ids120137_))
                                             (_defs120142_
                                              (map _case-lambda-clause-def119465_
                                                   _ids120137_
                                                   _impls120138_)))
                                        (let ((__tmp127912
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L120083_)))
                                              (__tmp127911
                                               (map gxc#identifier-symbol
                                                    _ids120137_)))
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"lift case-lambda clauses "
                                           __tmp127912
                                           '" => "
                                           __tmp127911))
                                        (let ((__tmp127913
                                               (let ((__tmp127914
                                                      (let ((__tmp127915
                                                             (let ((__tmp127916
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp127917
                                   (let ((__tmp127918
                                          (let ((__tmp127923
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L120083_ '())))
                                                (__tmp127919
                                                 (let ((__tmp127920
                                                        (let ((__tmp127922
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '%#case-lambda _clauses120139_)))
                      (__tmp127921
                       (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp127922 __tmp127921))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp127920 '()))))
                                            (declare (not safe))
                                            (cons __tmp127923 __tmp127919))))
                                     (declare (not safe))
                                     (cons '%#define-values __tmp127918))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp127917
                               _stx119463_))))
                       (declare (not safe))
                       (cons __tmp127916 '()))))
                (declare (not safe))
                (foldr1 cons __tmp127915 _defs120142_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#begin __tmp127914))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp127913
                                           _stx119463_)))))))))
                         (let ((___match127244127245_
                                (lambda (_e120105120150_
                                         _hd120104120153_
                                         _tl120103120155_)
                                  (let ((_L120158_ _tl120103120155_))
                                    (if (let ()
                                          (declare (not safe))
                                          (andmap1 gxc#dispatch-lambda-form?
                                                   _L120158_))
                                        (___kont127235127236_ _L120158_)
                                        (___kont127237127238_
                                         _tl120103120155_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? ___stx127233127234_))
                               (let ((_e120105120150_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e ___stx127233127234_))))
                                 (let ((_tl120103120155_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e120105120150_)))
                                       (_hd120104120153_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e120105120150_))))
                                   (___match127244127245_
                                    _e120105120150_
                                    _hd120104120153_
                                    _tl120103120155_)))
                               (let ()
                                 (declare (not safe))
                                 (_g120100120114_))))))))
                  (___kont127257127258_
                   (lambda (_L119900_ _L119901_)
                     (let* ((_g119917119947_
                             (lambda (_g119918119944_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g119918119944_))))
                            (_g119916120042_
                             (lambda (_g119918119950_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g119918119950_))
                                   (let ((_e119924119952_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g119918119950_))))
                                     (let ((_hd119923119955_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e119924119952_)))
                                           (_tl119922119957_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e119924119952_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl119922119957_))
                                           (let ((_e119927119960_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl119922119957_))))
                                             (let ((_hd119926119963_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e119927119960_)))
                                                   (_tl119925119965_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e119927119960_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd119926119963_))
                                                   (let ((_e119930119968_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd119926119963_))))
                                                     (let ((_hd119929119971_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e119930119968_)))
                                                           (_tl119928119973_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e119930119968_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd119929119971_))
                                                           (let ((_e119933119976_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd119929119971_))))
                     (let ((_hd119932119979_
                            (let ()
                              (declare (not safe))
                              (##car _e119933119976_)))
                           (_tl119931119981_
                            (let ()
                              (declare (not safe))
                              (##cdr _e119933119976_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd119932119979_))
                           (let ((_e119936119984_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd119932119979_))))
                             (let ((_hd119935119987_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e119936119984_)))
                                   (_tl119934119989_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e119936119984_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl119934119989_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl119931119981_))
                                       (let ((_e119939119992_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl119931119981_))))
                                         (let ((_hd119938119995_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e119939119992_)))
                                               (_tl119937119997_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e119939119992_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl119937119997_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl119928119973_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl119925119965_))
                                                       (let ((_e119942120000_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl119925119965_))))
                 (let ((_hd119941120003_
                        (let () (declare (not safe)) (##car _e119942120000_)))
                       (_tl119940120005_
                        (let () (declare (not safe)) (##cdr _e119942120000_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl119940120005_))
                       ((lambda (_L120008_ _L120009_ _L120010_)
                          (let* ((_lambda-id120034_
                                  (let ((__tmp127926
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L119901_)))
                                        (__tmp127924
                                         (let ((__tmp127925
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L120010_))))
                                           (declare (not safe))
                                           (_opt-lambda-dispatch-name119466_
                                            __tmp127925))))
                                    (declare (not safe))
                                    (make-symbol__1
                                     __tmp127926
                                     '"__"
                                     __tmp127924)))
                                 (_lambda-id120036_
                                  (let ((__tmp127927
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-source _stx119463_))))
                                    (declare (not safe))
                                    (gx#core-quote-syntax__1
                                     _lambda-id120034_
                                     __tmp127927)))
                                 (_g127928_
                                  (let ()
                                    (declare (not safe))
                                    (gx#core-bind-runtime!__0
                                     _lambda-id120036_)))
                                 (_new-case-lambda-expr120039_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-expression-subst
                                     _L120008_
                                     _L120010_
                                     _lambda-id120036_))))
                            (let ((__tmp127930
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol _L119901_)))
                                  (__tmp127929
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol
                                      _lambda-id120036_))))
                              (declare (not safe))
                              (gxc#verbose
                               '"lift opt-lambda dispatch "
                               __tmp127930
                               '" => "
                               __tmp127929))
                            (let ((__tmp127931
                                   (let ((__tmp127932
                                          (let ((__tmp127940
                                                 (let ((__tmp127941
                                                        (let ((__tmp127942
                                                               (let ((__tmp127945
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _lambda-id120036_ '())))
                             (__tmp127943
                              (let ((__tmp127944
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L120009_))))
                                (declare (not safe))
                                (cons __tmp127944 '()))))
                         (declare (not safe))
                         (cons __tmp127945 __tmp127943))))
                  (declare (not safe))
                  (cons '%#define-values __tmp127942))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp127941
                                                    _stx119463_)))
                                                (__tmp127933
                                                 (let ((__tmp127934
                                                        (let ((__tmp127935
                                                               (let ((__tmp127936
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp127937
                                     (let ((__tmp127939
                                            (let ()
                                              (declare (not safe))
                                              (cons _L119901_ '())))
                                           (__tmp127938
                                            (let ()
                                              (declare (not safe))
                                              (cons _new-case-lambda-expr120039_
                                                    '()))))
                                       (declare (not safe))
                                       (cons __tmp127939 __tmp127938))))
                                (declare (not safe))
                                (cons '%#define-values __tmp127937))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp127936 _stx119463_))))
                  (declare (not safe))
                  (gxc#lift-top-lambda-define-values% __tmp127935))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp127934 '()))))
                                            (declare (not safe))
                                            (cons __tmp127940 __tmp127933))))
                                     (declare (not safe))
                                     (cons '%#begin __tmp127932))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp127931
                               _stx119463_))))
                        _hd119941120003_
                        _hd119938119995_
                        _hd119935119987_)
                       (let ()
                         (declare (not safe))
                         (_g119917119947_ _g119918119950_)))))
               (let () (declare (not safe)) (_g119917119947_ _g119918119950_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g119917119947_
                                                      _g119918119950_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g119917119947_
                                                  _g119918119950_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g119917119947_ _g119918119950_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g119917119947_ _g119918119950_)))))
                           (let ()
                             (declare (not safe))
                             (_g119917119947_ _g119918119950_)))))
                   (let ()
                     (declare (not safe))
                     (_g119917119947_ _g119918119950_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g119917119947_
                                                      _g119918119950_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g119917119947_
                                              _g119918119950_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g119917119947_ _g119918119950_))))))
                       (declare (not safe))
                       (_g119916120042_ _L119900_))))
                  (___kont127259127260_
                   (lambda (_L119614_ _L119615_)
                     (let* ((_g119631119684_
                             (lambda (_g119632119681_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g119632119681_))))
                            (_g119630119860_
                             (lambda (_g119632119687_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g119632119687_))
                                   (let ((_e119640119689_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g119632119687_))))
                                     (let ((_hd119639119692_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e119640119689_)))
                                           (_tl119638119694_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e119640119689_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl119638119694_))
                                           (let ((_e119643119697_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl119638119694_))))
                                             (let ((_hd119642119700_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e119643119697_)))
                                                   (_tl119641119702_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e119643119697_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd119642119700_))
                                                   (let ((_e119646119705_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd119642119700_))))
                                                     (let ((_hd119645119708_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e119646119705_)))
                                                           (_tl119644119710_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e119646119705_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd119645119708_))
                                                           (let ((_e119649119713_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd119645119708_))))
                     (let ((_hd119648119716_
                            (let ()
                              (declare (not safe))
                              (##car _e119649119713_)))
                           (_tl119647119718_
                            (let ()
                              (declare (not safe))
                              (##cdr _e119649119713_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd119648119716_))
                           (let ((_e119652119721_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd119648119716_))))
                             (let ((_hd119651119724_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e119652119721_)))
                                   (_tl119650119726_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e119652119721_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl119650119726_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl119647119718_))
                                       (let ((_e119655119729_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl119647119718_))))
                                         (let ((_hd119654119732_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e119655119729_)))
                                               (_tl119653119734_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e119655119729_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd119654119732_))
                                               (let ((_e119658119737_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd119654119732_))))
                                                 (let ((_hd119657119740_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e119658119737_)))
                                                       (_tl119656119742_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e119658119737_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl119656119742_))
                                                       (let ((_e119661119745_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl119656119742_))))
                 (let ((_hd119660119748_
                        (let () (declare (not safe)) (##car _e119661119745_)))
                       (_tl119659119750_
                        (let () (declare (not safe)) (##cdr _e119661119745_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _hd119660119748_))
                       (let ((_e119664119753_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _hd119660119748_))))
                         (let ((_hd119663119756_
                                (let ()
                                  (declare (not safe))
                                  (##car _e119664119753_)))
                               (_tl119662119758_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e119664119753_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd119663119756_))
                               (let ((_e119667119761_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd119663119756_))))
                                 (let ((_hd119666119764_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e119667119761_)))
                                       (_tl119665119766_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e119667119761_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd119666119764_))
                                       (let ((_e119670119769_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd119666119764_))))
                                         (let ((_hd119669119772_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e119670119769_)))
                                               (_tl119668119774_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e119670119769_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl119668119774_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl119665119766_))
                                                   (let ((_e119673119777_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl119665119766_))))
                                                     (let ((_hd119672119780_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e119673119777_)))
                                                           (_tl119671119782_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e119673119777_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl119671119782_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-null? _tl119662119758_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl119659119750_))
                           (let ((_e119676119785_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl119659119750_))))
                             (let ((_hd119675119788_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e119676119785_)))
                                   (_tl119674119790_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e119676119785_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl119674119790_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl119653119734_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl119644119710_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl119641119702_))
                                               (let ((_e119679119793_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl119641119702_))))
                                                 (let ((_hd119678119796_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e119679119793_)))
                                                       (_tl119677119798_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e119679119793_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl119677119798_))
                                                       ((lambda (_L119801_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L119802_
                         _L119803_
                         _L119804_
                         _L119805_)
                  (let* ((_get-kws-id119845_
                          (let ((__tmp127948
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L119615_)))
                                (__tmp127946
                                 (let ((__tmp127947
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L119805_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name119467_
                                    __tmp127947
                                    '"@"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp127948 '"__" __tmp127946)))
                         (_get-kws-id119847_
                          (let ((__tmp127949
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx119463_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _get-kws-id119845_
                             __tmp127949)))
                         (_main-id119849_
                          (let ((__tmp127952
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L119615_)))
                                (__tmp127950
                                 (let ((__tmp127951
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L119804_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name119467_
                                    __tmp127951
                                    '"%"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp127952 '"__" __tmp127950)))
                         (_main-id119851_
                          (let ((__tmp127953
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx119463_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _main-id119849_
                             __tmp127953)))
                         (_g127954_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _get-kws-id119847_)))
                         (_g127955_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _main-id119851_)))
                         (_new-kw-dispatch119855_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L119801_
                             _L119805_
                             _get-kws-id119847_)))
                         (_new-get-kws119857_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L119802_
                             _L119804_
                             _main-id119851_))))
                    (let ((__tmp127958
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L119615_)))
                          (__tmp127957
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _get-kws-id119847_)))
                          (__tmp127956
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _main-id119851_))))
                      (declare (not safe))
                      (gxc#verbose
                       '"lift kw-lambda dispatch "
                       __tmp127958
                       '" => "
                       __tmp127957
                       '" => "
                       __tmp127956))
                    (let ((__tmp127959
                           (let ((__tmp127960
                                  (let ((__tmp127973
                                         (let ((__tmp127974
                                                (let ((__tmp127975
                                                       (let ((__tmp127976
                                                              (let ((__tmp127978
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _main-id119851_ '())))
                            (__tmp127977
                             (let ()
                               (declare (not safe))
                               (cons _L119803_ '()))))
                        (declare (not safe))
                        (cons __tmp127978 __tmp127977))))
                 (declare (not safe))
                 (cons '%#define-values __tmp127976))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp127975
                                                   _stx119463_))))
                                           (declare (not safe))
                                           (gxc#lift-top-lambda-define-values%
                                            __tmp127974)))
                                        (__tmp127961
                                         (let ((__tmp127968
                                                (let ((__tmp127969
                                                       (let ((__tmp127970
                                                              (let ((__tmp127972
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _get-kws-id119847_ '())))
                            (__tmp127971
                             (let ()
                               (declare (not safe))
                               (cons _new-get-kws119857_ '()))))
                        (declare (not safe))
                        (cons __tmp127972 __tmp127971))))
                 (declare (not safe))
                 (cons '%#define-values __tmp127970))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp127969
                                                   _stx119463_)))
                                               (__tmp127962
                                                (let ((__tmp127963
                                                       (let ((__tmp127964
                                                              (let ((__tmp127965
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp127967
                                    (let ()
                                      (declare (not safe))
                                      (cons _L119615_ '())))
                                   (__tmp127966
                                    (let ()
                                      (declare (not safe))
                                      (cons _new-kw-dispatch119855_ '()))))
                               (declare (not safe))
                               (cons __tmp127967 __tmp127966))))
                        (declare (not safe))
                        (cons '%#define-values __tmp127965))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp127964 _stx119463_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp127963 '()))))
                                           (declare (not safe))
                                           (cons __tmp127968 __tmp127962))))
                                    (declare (not safe))
                                    (cons __tmp127973 __tmp127961))))
                             (declare (not safe))
                             (cons '%#begin __tmp127960))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp127959 _stx119463_))))
                _hd119678119796_
                _hd119675119788_
                _hd119672119780_
                _hd119669119772_
                _hd119651119724_)
               (let ()
                 (declare (not safe))
                 (_g119631119684_ _g119632119687_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g119631119684_
                                                  _g119632119687_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g119631119684_
                                              _g119632119687_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g119631119684_ _g119632119687_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g119631119684_ _g119632119687_)))))
                           (let ()
                             (declare (not safe))
                             (_g119631119684_ _g119632119687_)))
                       (let ()
                         (declare (not safe))
                         (_g119631119684_ _g119632119687_)))
                   (let ()
                     (declare (not safe))
                     (_g119631119684_ _g119632119687_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g119631119684_
                                                      _g119632119687_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g119631119684_
                                                  _g119632119687_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g119631119684_ _g119632119687_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g119631119684_ _g119632119687_)))))
                       (let ()
                         (declare (not safe))
                         (_g119631119684_ _g119632119687_)))))
               (let ()
                 (declare (not safe))
                 (_g119631119684_ _g119632119687_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g119631119684_
                                                  _g119632119687_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g119631119684_ _g119632119687_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g119631119684_ _g119632119687_)))))
                           (let ()
                             (declare (not safe))
                             (_g119631119684_ _g119632119687_)))))
                   (let ()
                     (declare (not safe))
                     (_g119631119684_ _g119632119687_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g119631119684_
                                                      _g119632119687_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g119631119684_
                                              _g119632119687_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g119631119684_ _g119632119687_))))))
                       (declare (not safe))
                       (_g119630119860_ _L119614_))))
                  (___kont127261127262_
                   (lambda (_L119560_ _L119561_)
                     (let ((__tmp127979
                            (let ((__tmp127980
                                   (let ((__tmp127981
                                          (let ((__tmp127982
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L119560_))))
                                            (declare (not safe))
                                            (cons __tmp127982 '()))))
                                     (declare (not safe))
                                     (cons _L119561_ __tmp127981))))
                              (declare (not safe))
                              (cons '%#define-values __tmp127980))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp127979 _stx119463_)))))
              (let* ((___match127346127347_
                      (lambda (_e119506119582_
                               _hd119505119585_
                               _tl119504119587_
                               _e119509119590_
                               _hd119508119593_
                               _tl119507119595_
                               _e119512119598_
                               _hd119511119601_
                               _tl119510119603_
                               _e119515119606_
                               _hd119514119609_
                               _tl119513119611_)
                        (let ((_L119614_ _hd119514119609_)
                              (_L119615_ _hd119511119601_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L119615_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L119614_)))
                              (___kont127259127260_ _L119614_ _L119615_)
                              (___kont127261127262_
                               _hd119514119609_
                               _hd119508119593_)))))
                     (___match127318127319_
                      (lambda (_e119492119868_
                               _hd119491119871_
                               _tl119490119873_
                               _e119495119876_
                               _hd119494119879_
                               _tl119493119881_
                               _e119498119884_
                               _hd119497119887_
                               _tl119496119889_
                               _e119501119892_
                               _hd119500119895_
                               _tl119499119897_)
                        (let ((_L119900_ _hd119500119895_)
                              (_L119901_ _hd119497119887_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L119901_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr? _L119900_)))
                              (___kont127257127258_ _L119900_ _L119901_)
                              (___match127346127347_
                               _e119492119868_
                               _hd119491119871_
                               _tl119490119873_
                               _e119495119876_
                               _hd119494119879_
                               _tl119493119881_
                               _e119498119884_
                               _hd119497119887_
                               _tl119496119889_
                               _e119501119892_
                               _hd119500119895_
                               _tl119499119897_)))))
                     (___match127290127291_
                      (lambda (_e119478120050_
                               _hd119477120053_
                               _tl119476120055_
                               _e119481120058_
                               _hd119480120061_
                               _tl119479120063_
                               _e119484120066_
                               _hd119483120069_
                               _tl119482120071_
                               _e119487120074_
                               _hd119486120077_
                               _tl119485120079_)
                        (let ((_L120082_ _hd119486120077_)
                              (_L120083_ _hd119483120069_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L120083_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#case-lambda-expr? _L120082_)))
                              (___kont127255127256_ _L120082_ _L120083_)
                              (___match127318127319_
                               _e119478120050_
                               _hd119477120053_
                               _tl119476120055_
                               _e119481120058_
                               _hd119480120061_
                               _tl119479120063_
                               _e119484120066_
                               _hd119483120069_
                               _tl119482120071_
                               _e119487120074_
                               _hd119486120077_
                               _tl119485120079_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx127253127254_))
                    (let ((_e119478120050_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx127253127254_))))
                      (let ((_tl119476120055_
                             (let ()
                               (declare (not safe))
                               (##cdr _e119478120050_)))
                            (_hd119477120053_
                             (let ()
                               (declare (not safe))
                               (##car _e119478120050_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl119476120055_))
                            (let ((_e119481120058_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl119476120055_))))
                              (let ((_tl119479120063_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e119481120058_)))
                                    (_hd119480120061_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e119481120058_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd119480120061_))
                                    (let ((_e119484120066_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd119480120061_))))
                                      (let ((_tl119482120071_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e119484120066_)))
                                            (_hd119483120069_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e119484120066_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl119482120071_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl119479120063_))
                                                (let ((_e119487120074_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl119479120063_))))
                                                  (let ((_tl119485120079_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e119487120074_)))
                                                        (_hd119486120077_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e119487120074_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl119485120079_))
                                                        (___match127290127291_
                                                         _e119478120050_
                                                         _hd119477120053_
                                                         _tl119476120055_
                                                         _e119481120058_
                                                         _hd119480120061_
                                                         _tl119479120063_
                                                         _e119484120066_
                                                         _hd119483120069_
                                                         _tl119482120071_
                                                         _e119487120074_
                                                         _hd119486120077_
                                                         _tl119485120079_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g119472119531_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g119472119531_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl119479120063_))
                                                (let ((_e119526119552_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl119479120063_))))
                                                  (let ((_tl119524119557_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e119526119552_)))
                                                        (_hd119525119555_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e119526119552_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl119524119557_))
                                                        (___kont127261127262_
                                                         _hd119525119555_
                                                         _hd119480120061_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g119472119531_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g119472119531_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl119479120063_))
                                        (let ((_e119526119552_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl119479120063_))))
                                          (let ((_tl119524119557_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e119526119552_)))
                                                (_hd119525119555_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e119526119552_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl119524119557_))
                                                (___kont127261127262_
                                                 _hd119525119555_
                                                 _hd119480120061_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g119472119531_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g119472119531_))))))
                            (let () (declare (not safe)) (_g119472119531_)))))
                    (let () (declare (not safe)) (_g119472119531_)))))))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_stx118395_)
        (letrec* ((_bind-e__125649125650_
                   (lambda (_id119447_ _expr119448_ _compile?119449_)
                     (let ((__tmp127985
                            (let ()
                              (declare (not safe))
                              (cons _id119447_ '())))
                           (__tmp127983
                            (let ((__tmp127984
                                   (if _compile?119449_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr119448_))
                                       _expr119448_)))
                              (declare (not safe))
                              (cons __tmp127984 '()))))
                       (declare (not safe))
                       (cons __tmp127985 __tmp127983))))
                  (_bind-e__0__125651125652_
                   (lambda (_id119454_ _expr119455_)
                     (let ((_compile?119457_ '#t))
                       (declare (not safe))
                       (_bind-e__125649125650_
                        _id119454_
                        _expr119455_
                        _compile?119457_))))
                  (_bind-e118397_
                   (lambda _g127987_
                     (let ((_g127986_
                            (let ()
                              (declare (not safe))
                              (##length _g127987_))))
                       (cond ((let () (declare (not safe)) (##fx= _g127986_ 2))
                              (apply (lambda (_id119454_ _expr119455_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__125651125652_
                                          _id119454_
                                          _expr119455_)))
                                     _g127987_))
                             ((let () (declare (not safe)) (##fx= _g127986_ 3))
                              (apply (lambda (_id119459_
                                              _expr119460_
                                              _compile?119461_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__125649125650_
                                          _id119459_
                                          _expr119460_
                                          _compile?119461_)))
                                     _g127987_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g127987_))))))
                  (_compile-bindings118398_
                   (lambda (_bindings119031_)
                     (let _lp119033_ ((_rest119035_ _bindings119031_)
                                      (_lift1119036_ '())
                                      (_lift2119037_ '())
                                      (_bind119038_ '()))
                       (let* ((_rest119039119047_ _rest119035_)
                              (_else119041119055_
                               (lambda ()
                                 (values (reverse _lift1119036_)
                                         (reverse _lift2119037_)
                                         (reverse _bind119038_))))
                              (_K119043119434_
                               (lambda (_rest119058_ _hd119059_)
                                 (let* ((___stx127389127390_ _hd119059_)
                                        (_g119063119099_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx127389127390_)))))
                                   (let ((___kont127391127392_
                                          (lambda (_L119341_ _L119342_)
                                            (let* ((___stx127369127370_
                                                    _L119341_)
                                                   (_g119357119371_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx127369127370_)))))
                                              (let ((___kont127371127372_
                                                     (lambda (_L119419_)
                                                       (let ((__tmp127988
                                                              (let ((__tmp127989
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__125649125650_
                                _L119342_
                                _L119341_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp127989 _bind119038_))))
                 (declare (not safe))
                 (_lp119033_
                  _rest119058_
                  _lift1119036_
                  _lift2119037_
                  __tmp127988))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127373127374_
                                                     (lambda (_L119384_)
                                                       (let ((_g127990_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx118395_
                         _L119342_
                         _L119384_
                         '#t))))
                 (begin
                   (let ((_g127991_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g127990_)
                                (##vector-length _g127990_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g127991_ 3)))
                         (error "Context expects 3 values" _g127991_)))
                   (let ((_ids119394_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g127990_ 0)))
                         (_impls119395_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g127990_ 1)))
                         (_clauses119396_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g127990_ 2))))
                     (let* ((_g127992_
                             (for-each gx#core-bind-runtime! _ids119394_))
                            (_xbind119399_
                             (map _bind-e118397_ _ids119394_ _impls119395_))
                            (_expr*119401_
                             (let ((__tmp127994
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses119396_)))
                                   (__tmp127993
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp127994
                                __tmp127993)))
                            (_bind*119403_
                             (let ()
                               (declare (not safe))
                               (_bind-e__125649125650_
                                _L119342_
                                _expr*119401_
                                '#f))))
                       (let ((__tmp127996
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L119342_)))
                             (__tmp127995
                              (map gxc#identifier-symbol _ids119394_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp127996
                          '" => "
                          __tmp127995))
                       (let ((__tmp127998
                              (let ()
                                (declare (not safe))
                                (foldl1 cons _lift2119037_ _xbind119399_)))
                             (__tmp127997
                              (let ()
                                (declare (not safe))
                                (cons _bind*119403_ _bind119038_))))
                         (declare (not safe))
                         (_lp119033_
                          _rest119058_
                          _lift1119036_
                          __tmp127998
                          __tmp127997)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match127380127381_
                                                       (lambda (_e119362119411_
                                                                _hd119361119414_
                                                                _tl119360119416_)
                                                         (let ((_L119419_
                                                                _tl119360119416_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L119419_))
                       (___kont127371127372_ _L119419_)
                       (___kont127373127374_ _tl119360119416_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx127369127370_))
                                                      (let ((_e119362119411_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx127369127370_))))
                (let ((_tl119360119416_
                       (let () (declare (not safe)) (##cdr _e119362119411_)))
                      (_hd119361119414_
                       (let () (declare (not safe)) (##car _e119362119411_))))
                  (___match127380127381_
                   _e119362119411_
                   _hd119361119414_
                   _tl119360119416_)))
              (let () (declare (not safe)) (_g119357119371_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont127393127394_
                                          (lambda (_L119169_ _L119170_)
                                            (let* ((_g119184119214_
                                                    (lambda (_g119185119211_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g119185119211_))))
                                                   (_g119183119309_
                                                    (lambda (_g119185119217_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g119185119217_))
                                                          (let ((_e119191119219_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g119185119217_))))
                    (let ((_hd119190119222_
                           (let ()
                             (declare (not safe))
                             (##car _e119191119219_)))
                          (_tl119189119224_
                           (let ()
                             (declare (not safe))
                             (##cdr _e119191119219_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl119189119224_))
                          (let ((_e119194119227_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl119189119224_))))
                            (let ((_hd119193119230_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e119194119227_)))
                                  (_tl119192119232_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e119194119227_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd119193119230_))
                                  (let ((_e119197119235_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd119193119230_))))
                                    (let ((_hd119196119238_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e119197119235_)))
                                          (_tl119195119240_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e119197119235_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd119196119238_))
                                          (let ((_e119200119243_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd119196119238_))))
                                            (let ((_hd119199119246_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e119200119243_)))
                                                  (_tl119198119248_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e119200119243_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd119199119246_))
                                                  (let ((_e119203119251_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd119199119246_))))
                                                    (let ((_hd119202119254_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e119203119251_)))
                                                          (_tl119201119256_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e119203119251_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl119201119256_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl119198119248_))
                      (let ((_e119206119259_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl119198119248_))))
                        (let ((_hd119205119262_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119206119259_)))
                              (_tl119204119264_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119206119259_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl119204119264_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl119195119240_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl119192119232_))
                                      (let ((_e119209119267_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl119192119232_))))
                                        (let ((_hd119208119270_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e119209119267_)))
                                              (_tl119207119272_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e119209119267_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl119207119272_))
                                              ((lambda (_L119275_
                                                        _L119276_
                                                        _L119277_)
                                                 (let* ((_lambda-id119301_
                                                         (let ((__tmp128000
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L119170_)))
                       (__tmp127999 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp128000 __tmp127999)))
                (_lambda-id119303_
                 (let ((__tmp128001
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx118395_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id119301_ __tmp128001)))
                (_g128002_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id119303_)))
                (_new-case-lambda-expr119306_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L119275_
                    _L119277_
                    _lambda-id119303_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp128004
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L119170_)))
                                                         (__tmp128003
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id119303_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp128004
                                                      '" => "
                                                      __tmp128003))
                                                   (let ((__tmp128007
                                                          (let ((__tmp128008
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__125649125650_
                            _L119170_
                            _new-case-lambda-expr119306_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp128008 _rest119058_)))
                 (__tmp128005
                  (let ((__tmp128006
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__125651125652_
                            _lambda-id119303_
                            _L119276_))))
                    (declare (not safe))
                    (cons __tmp128006 _lift1119036_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp119033_
                                                      __tmp128007
                                                      __tmp128005
                                                      _lift2119037_
                                                      _bind119038_))))
                                               _hd119208119270_
                                               _hd119205119262_
                                               _hd119202119254_)
                                              (let ()
                                                (declare (not safe))
                                                (_g119184119214_
                                                 _g119185119217_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g119184119214_ _g119185119217_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g119184119214_ _g119185119217_)))
                              (let ()
                                (declare (not safe))
                                (_g119184119214_ _g119185119217_)))))
                      (let ()
                        (declare (not safe))
                        (_g119184119214_ _g119185119217_)))
                  (let ()
                    (declare (not safe))
                    (_g119184119214_ _g119185119217_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g119184119214_
                                                     _g119185119217_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g119184119214_
                                             _g119185119217_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g119184119214_ _g119185119217_)))))
                          (let ()
                            (declare (not safe))
                            (_g119184119214_ _g119185119217_)))))
                  (let ()
                    (declare (not safe))
                    (_g119184119214_ _g119185119217_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g119183119309_ _L119169_))))
                                         (___kont127395127396_
                                          (lambda (_L119120_ _L119121_)
                                            (let ((__tmp128009
                                                   (let ((__tmp128010
                                                          (let ((__tmp128011
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp128012
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L119120_))))
                           (declare (not safe))
                           (cons __tmp128012 '()))))
                    (declare (not safe))
                    (cons _L119121_ __tmp128011))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp128010
                                                           _bind119038_))))
                                              (declare (not safe))
                                              (_lp119033_
                                               _rest119058_
                                               _lift1119036_
                                               _lift2119037_
                                               __tmp128009)))))
                                     (let* ((___match127440127441_
                                             (lambda (_e119080119145_
                                                      _hd119079119148_
                                                      _tl119078119150_
                                                      _e119083119153_
                                                      _hd119082119156_
                                                      _tl119081119158_
                                                      _e119086119161_
                                                      _hd119085119164_
                                                      _tl119084119166_)
                                               (let ((_L119169_
                                                      _hd119085119164_)
                                                     (_L119170_
                                                      _hd119082119156_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L119170_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L119169_)))
                                                     (___kont127393127394_
                                                      _L119169_
                                                      _L119170_)
                                                     (___kont127395127396_
                                                      _hd119085119164_
                                                      _hd119079119148_)))))
                                            (___match127418127419_
                                             (lambda (_e119069119317_
                                                      _hd119068119320_
                                                      _tl119067119322_
                                                      _e119072119325_
                                                      _hd119071119328_
                                                      _tl119070119330_
                                                      _e119075119333_
                                                      _hd119074119336_
                                                      _tl119073119338_)
                                               (let ((_L119341_
                                                      _hd119074119336_)
                                                     (_L119342_
                                                      _hd119071119328_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L119342_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L119341_)))
                                                     (___kont127391127392_
                                                      _L119341_
                                                      _L119342_)
                                                     (___match127440127441_
                                                      _e119069119317_
                                                      _hd119068119320_
                                                      _tl119067119322_
                                                      _e119072119325_
                                                      _hd119071119328_
                                                      _tl119070119330_
                                                      _e119075119333_
                                                      _hd119074119336_
                                                      _tl119073119338_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx127389127390_))
                                           (let ((_e119069119317_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx127389127390_))))
                                             (let ((_tl119067119322_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e119069119317_)))
                                                   (_hd119068119320_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e119069119317_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd119068119320_))
                                                   (let ((_e119072119325_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd119068119320_))))
                                                     (let ((_tl119070119330_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e119072119325_)))
                                                           (_hd119071119328_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e119072119325_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl119070119330_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl119067119322_))
                       (let ((_e119075119333_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl119067119322_))))
                         (let ((_tl119073119338_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e119075119333_)))
                               (_hd119074119336_
                                (let ()
                                  (declare (not safe))
                                  (##car _e119075119333_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl119073119338_))
                               (___match127418127419_
                                _e119069119317_
                                _hd119068119320_
                                _tl119067119322_
                                _e119072119325_
                                _hd119071119328_
                                _tl119070119330_
                                _e119075119333_
                                _hd119074119336_
                                _tl119073119338_)
                               (let ()
                                 (declare (not safe))
                                 (_g119063119099_)))))
                       (let () (declare (not safe)) (_g119063119099_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl119067119322_))
                       (let ((_e119094119112_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl119067119322_))))
                         (let ((_tl119092119117_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e119094119112_)))
                               (_hd119093119115_
                                (let ()
                                  (declare (not safe))
                                  (##car _e119094119112_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl119092119117_))
                               (___kont127395127396_
                                _hd119093119115_
                                _hd119068119320_)
                               (let ()
                                 (declare (not safe))
                                 (_g119063119099_)))))
                       (let () (declare (not safe)) (_g119063119099_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl119067119322_))
                                                       (let ((_e119094119112_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl119067119322_))))
                 (let ((_tl119092119117_
                        (let () (declare (not safe)) (##cdr _e119094119112_)))
                       (_hd119093119115_
                        (let () (declare (not safe)) (##car _e119094119112_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl119092119117_))
                       (___kont127395127396_ _hd119093119115_ _hd119068119320_)
                       (let () (declare (not safe)) (_g119063119099_)))))
               (let () (declare (not safe)) (_g119063119099_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g119063119099_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest119039119047_))
                             (let ((_hd119044119437_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest119039119047_)))
                                   (_tl119045119439_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest119039119047_))))
                               (let* ((_hd119442_ _hd119044119437_)
                                      (_rest119444_ _tl119045119439_))
                                 (declare (not safe))
                                 (_K119043119434_ _rest119444_ _hd119442_)))
                             (let ()
                               (declare (not safe))
                               (_else119041119055_)))))))
                  (_lift-kw-lambda?118399_
                   (lambda (_bind118955_)
                     (let* ((___stx127457127458_ _bind118955_)
                            (_g118958118975_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx127457127458_)))))
                       (let ((___kont127459127460_
                              (lambda (_L119011_ _L119012_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _L119012_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#kw-lambda-expr? _L119011_))
                                    '#f)))
                             (___kont127461127462_ (lambda () '#f)))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? ___stx127457127458_))
                             (let ((_e118964118987_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e ___stx127457127458_))))
                               (let ((_tl118962118992_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e118964118987_)))
                                     (_hd118963118990_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e118964118987_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd118963118990_))
                                     (let ((_e118967118995_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd118963118990_))))
                                       (let ((_tl118965119000_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e118967118995_)))
                                             (_hd118966118998_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e118967118995_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl118965119000_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl118962118992_))
                                                 (let ((_e118970119003_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl118962118992_))))
                                                   (let ((_tl118968119008_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e118970119003_)))
                                                         (_hd118969119006_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e118970119003_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl118968119008_))
                                                         (___kont127459127460_
                                                          _hd118969119006_
                                                          _hd118966118998_)
                                                         (___kont127461127462_))))
                                                 (___kont127461127462_))
                                             (___kont127461127462_))))
                                     (___kont127461127462_))))
                             (___kont127461127462_))))))
                  (_lift-kw-lambda-bindings118400_
                   (lambda (_bindings118567_)
                     (let _lp118569_ ((_rest118571_ _bindings118567_)
                                      (_lift1118572_ '())
                                      (_lift2118573_ '())
                                      (_bind118574_ '()))
                       (let* ((_rest118575118583_ _rest118571_)
                              (_else118577118591_
                               (lambda ()
                                 (values (reverse _lift1118572_)
                                         (reverse _lift2118573_)
                                         (reverse _bind118574_))))
                              (_K118579118943_
                               (lambda (_rest118594_ _hd118595_)
                                 (let* ((___stx127487127488_ _hd118595_)
                                        (_g118598118623_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx127487127488_)))))
                                   (let ((___kont127489127490_
                                          (lambda (_L118693_ _L118694_)
                                            (let* ((_g118708118761_
                                                    (lambda (_g118709118758_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g118709118758_))))
                                                   (_g118707118937_
                                                    (lambda (_g118709118764_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g118709118764_))
                                                          (let ((_e118717118766_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g118709118764_))))
                    (let ((_hd118716118769_
                           (let ()
                             (declare (not safe))
                             (##car _e118717118766_)))
                          (_tl118715118771_
                           (let ()
                             (declare (not safe))
                             (##cdr _e118717118766_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl118715118771_))
                          (let ((_e118720118774_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl118715118771_))))
                            (let ((_hd118719118777_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e118720118774_)))
                                  (_tl118718118779_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e118720118774_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd118719118777_))
                                  (let ((_e118723118782_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd118719118777_))))
                                    (let ((_hd118722118785_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e118723118782_)))
                                          (_tl118721118787_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e118723118782_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd118722118785_))
                                          (let ((_e118726118790_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd118722118785_))))
                                            (let ((_hd118725118793_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e118726118790_)))
                                                  (_tl118724118795_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e118726118790_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd118725118793_))
                                                  (let ((_e118729118798_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd118725118793_))))
                                                    (let ((_hd118728118801_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e118729118798_)))
                                                          (_tl118727118803_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e118729118798_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl118727118803_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl118724118795_))
                      (let ((_e118732118806_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl118724118795_))))
                        (let ((_hd118731118809_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118732118806_)))
                              (_tl118730118811_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118732118806_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd118731118809_))
                              (let ((_e118735118814_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd118731118809_))))
                                (let ((_hd118734118817_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118735118814_)))
                                      (_tl118733118819_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118735118814_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118733118819_))
                                      (let ((_e118738118822_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118733118819_))))
                                        (let ((_hd118737118825_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118738118822_)))
                                              (_tl118736118827_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118738118822_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd118737118825_))
                                              (let ((_e118741118830_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd118737118825_))))
                                                (let ((_hd118740118833_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e118741118830_)))
                                                      (_tl118739118835_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e118741118830_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd118740118833_))
                                                      (let ((_e118744118838_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd118740118833_))))
                (let ((_hd118743118841_
                       (let () (declare (not safe)) (##car _e118744118838_)))
                      (_tl118742118843_
                       (let () (declare (not safe)) (##cdr _e118744118838_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd118743118841_))
                      (let ((_e118747118846_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd118743118841_))))
                        (let ((_hd118746118849_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118747118846_)))
                              (_tl118745118851_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118747118846_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl118745118851_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl118742118843_))
                                  (let ((_e118750118854_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl118742118843_))))
                                    (let ((_hd118749118857_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e118750118854_)))
                                          (_tl118748118859_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e118750118854_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl118748118859_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118739118835_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl118736118827_))
                                                  (let ((_e118753118862_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl118736118827_))))
                                                    (let ((_hd118752118865_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e118753118862_)))
                                                          (_tl118751118867_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e118753118862_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl118751118867_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl118730118811_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl118721118787_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118718118779_))
                              (let ((_e118756118870_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118718118779_))))
                                (let ((_hd118755118873_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118756118870_)))
                                      (_tl118754118875_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118756118870_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118754118875_))
                                      ((lambda (_L118878_
                                                _L118879_
                                                _L118880_
                                                _L118881_
                                                _L118882_)
                                         (let* ((_get-kws-id118922_
                                                 (let ((__tmp128014
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L118694_)))
                                                       (__tmp128013
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp128014
                                                    __tmp128013)))
                                                (_get-kws-id118924_
                                                 (let ((__tmp128015
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx118395_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id118922_
                                                    __tmp128015)))
                                                (_main-id118926_
                                                 (let ((__tmp128017
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L118694_)))
                                                       (__tmp128016
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp128017
                                                    __tmp128016)))
                                                (_main-id118928_
                                                 (let ((__tmp128018
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx118395_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id118926_
                                                    __tmp128018)))
                                                (_g128019_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id118924_)))
                                                (_g128020_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id118928_)))
                                                (_new-kw-dispatch118932_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L118878_
                                                    _L118882_
                                                    _get-kws-id118924_)))
                                                (_new-get-kws118934_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L118879_
                                                    _L118881_
                                                    _main-id118928_))))
                                           (let ((__tmp128023
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L118694_)))
                                                 (__tmp128022
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id118924_)))
                                                 (__tmp128021
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id118928_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp128023
                                              '" => "
                                              __tmp128022
                                              '" => "
                                              __tmp128021))
                                           (let ((__tmp128028
                                                  (let ((__tmp128029
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__125649125650_
                                                            _main-id118928_
                                                            _L118880_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp128029
                                                          _lift1118572_)))
                                                 (__tmp128026
                                                  (let ((__tmp128027
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__125649125650_
                                                            _get-kws-id118924_
                                                            _new-get-kws118934_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp128027
                                                          _lift2118573_)))
                                                 (__tmp128024
                                                  (let ((__tmp128025
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__125649125650_
                                                            _L118694_
                                                            _new-kw-dispatch118932_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp128025
                                                          _bind118574_))))
                                             (declare (not safe))
                                             (_lp118569_
                                              _rest118594_
                                              __tmp128028
                                              __tmp128026
                                              __tmp128024))))
                                       _hd118755118873_
                                       _hd118752118865_
                                       _hd118749118857_
                                       _hd118746118849_
                                       _hd118728118801_)
                                      (let ()
                                        (declare (not safe))
                                        (_g118708118761_ _g118709118764_)))))
                              (let ()
                                (declare (not safe))
                                (_g118708118761_ _g118709118764_)))
                          (let ()
                            (declare (not safe))
                            (_g118708118761_ _g118709118764_)))
                      (let ()
                        (declare (not safe))
                        (_g118708118761_ _g118709118764_)))
                  (let ()
                    (declare (not safe))
                    (_g118708118761_ _g118709118764_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g118708118761_
                                                     _g118709118764_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g118708118761_
                                                 _g118709118764_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g118708118761_
                                             _g118709118764_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g118708118761_ _g118709118764_)))
                              (let ()
                                (declare (not safe))
                                (_g118708118761_ _g118709118764_)))))
                      (let ()
                        (declare (not safe))
                        (_g118708118761_ _g118709118764_)))))
              (let ()
                (declare (not safe))
                (_g118708118761_ _g118709118764_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g118708118761_
                                                 _g118709118764_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g118708118761_ _g118709118764_)))))
                              (let ()
                                (declare (not safe))
                                (_g118708118761_ _g118709118764_)))))
                      (let ()
                        (declare (not safe))
                        (_g118708118761_ _g118709118764_)))
                  (let ()
                    (declare (not safe))
                    (_g118708118761_ _g118709118764_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g118708118761_
                                                     _g118709118764_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g118708118761_
                                             _g118709118764_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g118708118761_ _g118709118764_)))))
                          (let ()
                            (declare (not safe))
                            (_g118708118761_ _g118709118764_)))))
                  (let ()
                    (declare (not safe))
                    (_g118708118761_ _g118709118764_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g118707118937_ _L118693_))))
                                         (___kont127491127492_
                                          (lambda (_L118644_ _L118645_)
                                            (let ((__tmp128030
                                                   (let ((__tmp128031
                                                          (let ((__tmp128032
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L118644_ '()))))
                    (declare (not safe))
                    (cons _L118645_ __tmp128032))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp128031
                                                           _bind118574_))))
                                              (declare (not safe))
                                              (_lp118569_
                                               _rest118594_
                                               _lift1118572_
                                               _lift2118573_
                                               __tmp128030)))))
                                     (let ((___match127514127515_
                                            (lambda (_e118604118669_
                                                     _hd118603118672_
                                                     _tl118602118674_
                                                     _e118607118677_
                                                     _hd118606118680_
                                                     _tl118605118682_
                                                     _e118610118685_
                                                     _hd118609118688_
                                                     _tl118608118690_)
                                              (let ((_L118693_
                                                     _hd118609118688_)
                                                    (_L118694_
                                                     _hd118606118680_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _L118694_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#kw-lambda-expr?
                                                            _L118693_)))
                                                    (___kont127489127490_
                                                     _L118693_
                                                     _L118694_)
                                                    (___kont127491127492_
                                                     _hd118609118688_
                                                     _hd118603118672_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx127487127488_))
                                           (let ((_e118604118669_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx127487127488_))))
                                             (let ((_tl118602118674_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e118604118669_)))
                                                   (_hd118603118672_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e118604118669_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd118603118672_))
                                                   (let ((_e118607118677_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd118603118672_))))
                                                     (let ((_tl118605118682_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e118607118677_)))
                                                           (_hd118606118680_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e118607118677_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl118605118682_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl118602118674_))
                       (let ((_e118610118685_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl118602118674_))))
                         (let ((_tl118608118690_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e118610118685_)))
                               (_hd118609118688_
                                (let ()
                                  (declare (not safe))
                                  (##car _e118610118685_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl118608118690_))
                               (___match127514127515_
                                _e118604118669_
                                _hd118603118672_
                                _tl118602118674_
                                _e118607118677_
                                _hd118606118680_
                                _tl118605118682_
                                _e118610118685_
                                _hd118609118688_
                                _tl118608118690_)
                               (let ()
                                 (declare (not safe))
                                 (_g118598118623_)))))
                       (let () (declare (not safe)) (_g118598118623_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl118602118674_))
                       (let ((_e118618118636_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl118602118674_))))
                         (let ((_tl118616118641_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e118618118636_)))
                               (_hd118617118639_
                                (let ()
                                  (declare (not safe))
                                  (##car _e118618118636_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl118616118641_))
                               (___kont127491127492_
                                _hd118617118639_
                                _hd118603118672_)
                               (let ()
                                 (declare (not safe))
                                 (_g118598118623_)))))
                       (let () (declare (not safe)) (_g118598118623_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl118602118674_))
                                                       (let ((_e118618118636_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl118602118674_))))
                 (let ((_tl118616118641_
                        (let () (declare (not safe)) (##cdr _e118618118636_)))
                       (_hd118617118639_
                        (let () (declare (not safe)) (##car _e118618118636_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl118616118641_))
                       (___kont127491127492_ _hd118617118639_ _hd118603118672_)
                       (let () (declare (not safe)) (_g118598118623_)))))
               (let () (declare (not safe)) (_g118598118623_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g118598118623_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest118575118583_))
                             (let ((_hd118580118946_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest118575118583_)))
                                   (_tl118581118948_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest118575118583_))))
                               (let* ((_hd118951_ _hd118580118946_)
                                      (_rest118953_ _tl118581118948_))
                                 (declare (not safe))
                                 (_K118579118943_ _rest118953_ _hd118951_)))
                             (let ()
                               (declare (not safe))
                               (_else118577118591_))))))))
          (let* ((___stx127531127532_ _stx118395_)
                 (_g118403118429_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx127531127532_)))))
            (let ((___kont127533127534_
                   (lambda (_L118489_ _L118490_)
                     (let ((__tmp128034
                            (lambda ()
                              (if (let ((__tmp128061
                                         (let ((__tmp128062
                                                (lambda (_g118518118521_
                                                         _g118519118523_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g118518118521_
                                                          _g118519118523_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp128062
                                                   '()
                                                   _L118490_))))
                                    (declare (not safe))
                                    (ormap1 _lift-kw-lambda?118399_
                                            __tmp128061))
                                  (let ((_g128048_
                                         (let ((__tmp128050
                                                (let ((__tmp128051
                                                       (lambda (_g118525118528_
                                                                _g118526118530_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g118525118528_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g118526118530_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp128051
                                                          '()
                                                          _L118490_))))
                                           (declare (not safe))
                                           (_lift-kw-lambda-bindings118400_
                                            __tmp128050))))
                                    (begin
                                      (let ((_g128049_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g128048_)
                                                   (##vector-length _g128048_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g128049_ 3)))
                                            (error "Context expects 3 values"
                                                   _g128049_)))
                                      (let ((_lift1118533_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g128048_ 0)))
                                            (_lift2118534_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g128048_ 1)))
                                            (_hd118535_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g128048_ 2))))
                                        (let* ((_expr118537_
                                                (let ((__tmp128052
                                                       (let ((__tmp128053
                                                              (let ((__tmp128054
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L118489_ '()))))
                        (declare (not safe))
                        (cons _hd118535_ __tmp128054))))
                 (declare (not safe))
                 (cons '%#let-values __tmp128053))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp128052
                                                   _stx118395_)))
                                               (_expr118539_
                                                (let ((__tmp128055
                                                       (let ((__tmp128056
                                                              (let ((__tmp128057
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr118537_ '()))))
                        (declare (not safe))
                        (cons _lift2118534_ __tmp128057))))
                 (declare (not safe))
                 (cons '%#let-values __tmp128056))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp128055
                                                   _stx118395_)))
                                               (_expr118541_
                                                (let ((__tmp128058
                                                       (let ((__tmp128059
                                                              (let ((__tmp128060
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr118539_ '()))))
                        (declare (not safe))
                        (cons _lift1118533_ __tmp128060))))
                 (declare (not safe))
                 (cons '%#let-values __tmp128059))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp128058
                                                   _stx118395_))))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#lift-top-lambda-let-values%
                                             _expr118541_))))))
                                  (let ((_g128035_
                                         (let ((__tmp128037
                                                (let ((__tmp128038
                                                       (lambda (_g118543118546_
                                                                _g118544118548_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g118543118546_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g118544118548_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp128038
                                                          '()
                                                          _L118490_))))
                                           (declare (not safe))
                                           (_compile-bindings118398_
                                            __tmp128037))))
                                    (begin
                                      (let ((_g128036_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g128035_)
                                                   (##vector-length _g128035_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g128036_ 3)))
                                            (error "Context expects 3 values"
                                                   _g128036_)))
                                      (let ((_lift1118551_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g128035_ 0)))
                                            (_lift2118552_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g128035_ 1)))
                                            (_hd118553_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g128035_ 2))))
                                        (let* ((_body118555_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _L118489_)))
                                               (_expr118557_
                                                (let ((__tmp128039
                                                       (let ((__tmp128040
                                                              (let ((__tmp128041
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _body118555_ '()))))
                        (declare (not safe))
                        (cons _hd118553_ __tmp128041))))
                 (declare (not safe))
                 (cons '%#let-values __tmp128040))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp128039
                                                   _stx118395_)))
                                               (_expr118559_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift2118552_))
                                                    _expr118557_
                                                    (let ((__tmp128042
                                                           (let ((__tmp128043
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp128044
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr118557_ '()))))
                            (declare (not safe))
                            (cons _lift2118552_ __tmp128044))))
                     (declare (not safe))
                     (cons '%#let-values __tmp128043))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp128042 _stx118395_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_expr118561_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift1118551_))
                                                    _expr118559_
                                                    (let ((__tmp128045
                                                           (let ((__tmp128046
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp128047
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr118559_ '()))))
                            (declare (not safe))
                            (cons _lift1118551_ __tmp128047))))
                     (declare (not safe))
                     (cons '%#let-values __tmp128046))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp128045 _stx118395_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _expr118561_)))))))
                           (__tmp128033
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
                        __tmp128034
                        gx#current-expander-context
                        __tmp128033))))
                  (___kont127537127538_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx118395_)))))
              (let ((___match127558127559_
                     (lambda (_e118409118441_
                              _hd118408118444_
                              _tl118407118446_
                              _e118412118449_
                              _hd118411118452_
                              _tl118410118454_
                              ___splice127535127536_
                              _target118413118457_
                              _tl118415118459_)
                       (letrec ((_loop118416118462_
                                 (lambda (_hd118414118465_ _bind118420118467_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd118414118465_))
                                       (let ((_e118417118470_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd118414118465_))))
                                         (let ((_lp-tl118419118475_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e118417118470_)))
                                               (_lp-hd118418118473_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e118417118470_))))
                                           (let ((__tmp128065
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd118418118473_
                                                          _bind118420118467_))))
                                             (declare (not safe))
                                             (_loop118416118462_
                                              _lp-tl118419118475_
                                              __tmp128065))))
                                       (let ((_bind118421118478_
                                              (reverse _bind118420118467_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl118410118454_))
                                             (let ((_e118424118481_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl118410118454_))))
                                               (let ((_tl118422118486_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e118424118481_)))
                                                     (_hd118423118484_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e118424118481_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl118422118486_))
                                                     (let ((_L118489_
                                                            _hd118423118484_)
                                                           (_L118490_
                                                            _bind118421118478_))
                                                       (if (let ((__tmp128063
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp128064
                                 (lambda (_g118510118513_ _g118511118515_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g118510118513_ _g118511118515_)))))
                            (declare (not safe))
                            (foldr1 __tmp128064 '() _L118490_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp128063))
                   (___kont127533127534_ _L118489_ _L118490_)
                   (___kont127537127538_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont127537127538_))))
                                             (___kont127537127538_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop118416118462_ _target118413118457_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx127531127532_))
                    (let ((_e118409118441_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx127531127532_))))
                      (let ((_tl118407118446_
                             (let ()
                               (declare (not safe))
                               (##cdr _e118409118441_)))
                            (_hd118408118444_
                             (let ()
                               (declare (not safe))
                               (##car _e118409118441_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl118407118446_))
                            (let ((_e118412118449_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl118407118446_))))
                              (let ((_tl118410118454_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e118412118449_)))
                                    (_hd118411118452_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e118412118449_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd118411118452_))
                                    (let ((___splice127535127536_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd118411118452_
                                              '0))))
                                      (let ((_tl118415118459_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice127535127536_
                                                '1)))
                                            (_target118413118457_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice127535127536_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl118415118459_))
                                            (___match127558127559_
                                             _e118409118441_
                                             _hd118408118444_
                                             _tl118407118446_
                                             _e118412118449_
                                             _hd118411118452_
                                             _tl118410118454_
                                             ___splice127535127536_
                                             _target118413118457_
                                             _tl118415118459_)
                                            (___kont127537127538_))))
                                    (___kont127537127538_))))
                            (___kont127537127538_))))
                    (___kont127537127538_))))))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_stx117539_)
        (letrec* ((_bind-e__125654125655_
                   (lambda (_id118379_ _expr118380_ _compile?118381_)
                     (let ((__tmp128068
                            (let ()
                              (declare (not safe))
                              (cons _id118379_ '())))
                           (__tmp128066
                            (let ((__tmp128067
                                   (if _compile?118381_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr118380_))
                                       _expr118380_)))
                              (declare (not safe))
                              (cons __tmp128067 '()))))
                       (declare (not safe))
                       (cons __tmp128068 __tmp128066))))
                  (_bind-e__0__125656125657_
                   (lambda (_id118386_ _expr118387_)
                     (let ((_compile?118389_ '#t))
                       (declare (not safe))
                       (_bind-e__125654125655_
                        _id118386_
                        _expr118387_
                        _compile?118389_))))
                  (_bind-e117541_
                   (lambda _g128070_
                     (let ((_g128069_
                            (let ()
                              (declare (not safe))
                              (##length _g128070_))))
                       (cond ((let () (declare (not safe)) (##fx= _g128069_ 2))
                              (apply (lambda (_id118386_ _expr118387_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__125656125657_
                                          _id118386_
                                          _expr118387_)))
                                     _g128070_))
                             ((let () (declare (not safe)) (##fx= _g128069_ 3))
                              (apply (lambda (_id118391_
                                              _expr118392_
                                              _compile?118393_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__125654125655_
                                          _id118391_
                                          _expr118392_
                                          _compile?118393_)))
                                     _g128070_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g128070_))))))
                  (_compile-bindings117542_
                   (lambda (_rest117677_)
                     (let _lp117679_ ((_rest117681_ _rest117677_)
                                      (_bind117682_ '()))
                       (let* ((_rest117683117691_ _rest117681_)
                              (_else117685117699_
                               (lambda () (reverse _bind117682_)))
                              (_K117687118366_
                               (lambda (_rest117702_ _hd117703_)
                                 (let* ((___stx127581127582_ _hd117703_)
                                        (_g117708117755_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx127581127582_)))))
                                   (let ((___kont127583127584_
                                          (lambda (_L118273_ _L118274_)
                                            (let* ((___stx127561127562_
                                                    _L118273_)
                                                   (_g118289118303_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx127561127562_)))))
                                              (let ((___kont127563127564_
                                                     (lambda (_L118351_)
                                                       (let ((__tmp128071
                                                              (let ((__tmp128072
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__125654125655_
                                _L118274_
                                _L118273_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp128072 _bind117682_))))
                 (declare (not safe))
                 (_lp117679_ _rest117702_ __tmp128071))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127565127566_
                                                     (lambda (_L118316_)
                                                       (let ((_g128073_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx117539_
                         _L118274_
                         _L118316_
                         '#t))))
                 (begin
                   (let ((_g128074_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g128073_)
                                (##vector-length _g128073_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g128074_ 3)))
                         (error "Context expects 3 values" _g128074_)))
                   (let ((_ids118326_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g128073_ 0)))
                         (_impls118327_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g128073_ 1)))
                         (_clauses118328_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g128073_ 2))))
                     (let* ((_g128075_
                             (for-each gx#core-bind-runtime! _ids118326_))
                            (_xbind118331_
                             (map _bind-e117541_ _ids118326_ _impls118327_))
                            (_expr*118333_
                             (let ((__tmp128077
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses118328_)))
                                   (__tmp128076
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp128077
                                __tmp128076)))
                            (_bind*118335_
                             (let ()
                               (declare (not safe))
                               (_bind-e__125654125655_
                                _L118274_
                                _expr*118333_
                                '#f))))
                       (let ((__tmp128079
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L118274_)))
                             (__tmp128078
                              (map gxc#identifier-symbol _ids118326_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp128079
                          '" => "
                          __tmp128078))
                       (let ((__tmp128080
                              (let ((__tmp128081
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _bind117682_
                                               _xbind118331_))))
                                (declare (not safe))
                                (cons _bind*118335_ __tmp128081))))
                         (declare (not safe))
                         (_lp117679_ _rest117702_ __tmp128080)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match127572127573_
                                                       (lambda (_e118294118343_
                                                                _hd118293118346_
                                                                _tl118292118348_)
                                                         (let ((_L118351_
                                                                _tl118292118348_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L118351_))
                       (___kont127563127564_ _L118351_)
                       (___kont127565127566_ _tl118292118348_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx127561127562_))
                                                      (let ((_e118294118343_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx127561127562_))))
                (let ((_tl118292118348_
                       (let () (declare (not safe)) (##cdr _e118294118343_)))
                      (_hd118293118346_
                       (let () (declare (not safe)) (##car _e118294118343_))))
                  (___match127572127573_
                   _e118294118343_
                   _hd118293118346_
                   _tl118292118348_)))
              (let () (declare (not safe)) (_g118289118303_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont127585127586_
                                          (lambda (_L118101_ _L118102_)
                                            (let* ((_g118116118146_
                                                    (lambda (_g118117118143_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g118117118143_))))
                                                   (_g118115118241_
                                                    (lambda (_g118117118149_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g118117118149_))
                                                          (let ((_e118123118151_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g118117118149_))))
                    (let ((_hd118122118154_
                           (let ()
                             (declare (not safe))
                             (##car _e118123118151_)))
                          (_tl118121118156_
                           (let ()
                             (declare (not safe))
                             (##cdr _e118123118151_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl118121118156_))
                          (let ((_e118126118159_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl118121118156_))))
                            (let ((_hd118125118162_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e118126118159_)))
                                  (_tl118124118164_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e118126118159_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd118125118162_))
                                  (let ((_e118129118167_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd118125118162_))))
                                    (let ((_hd118128118170_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e118129118167_)))
                                          (_tl118127118172_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e118129118167_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd118128118170_))
                                          (let ((_e118132118175_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd118128118170_))))
                                            (let ((_hd118131118178_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e118132118175_)))
                                                  (_tl118130118180_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e118132118175_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd118131118178_))
                                                  (let ((_e118135118183_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd118131118178_))))
                                                    (let ((_hd118134118186_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e118135118183_)))
                                                          (_tl118133118188_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e118135118183_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl118133118188_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl118130118180_))
                      (let ((_e118138118191_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl118130118180_))))
                        (let ((_hd118137118194_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118138118191_)))
                              (_tl118136118196_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118138118191_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl118136118196_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl118127118172_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118124118164_))
                                      (let ((_e118141118199_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118124118164_))))
                                        (let ((_hd118140118202_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118141118199_)))
                                              (_tl118139118204_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118141118199_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118139118204_))
                                              ((lambda (_L118207_
                                                        _L118208_
                                                        _L118209_)
                                                 (let* ((_lambda-id118233_
                                                         (let ((__tmp128083
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L118102_)))
                       (__tmp128082 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp128083 __tmp128082)))
                (_lambda-id118235_
                 (let ((__tmp128084
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx117539_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id118233_ __tmp128084)))
                (_g128085_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id118235_)))
                (_new-case-lambda-expr118238_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L118207_
                    _L118209_
                    _lambda-id118235_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp128087
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L118102_)))
                                                         (__tmp128086
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id118235_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp128087
                                                      '" => "
                                                      __tmp128086))
                                                   (let ((__tmp128090
                                                          (let ((__tmp128091
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__125654125655_
                            _L118102_
                            _new-case-lambda-expr118238_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp128091 _rest117702_)))
                 (__tmp128088
                  (let ((__tmp128089
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__125656125657_
                            _lambda-id118235_
                            _L118208_))))
                    (declare (not safe))
                    (cons __tmp128089 _bind117682_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp117679_
                                                      __tmp128090
                                                      __tmp128088))))
                                               _hd118140118202_
                                               _hd118137118194_
                                               _hd118134118186_)
                                              (let ()
                                                (declare (not safe))
                                                (_g118116118146_
                                                 _g118117118149_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g118116118146_ _g118117118149_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g118116118146_ _g118117118149_)))
                              (let ()
                                (declare (not safe))
                                (_g118116118146_ _g118117118149_)))))
                      (let ()
                        (declare (not safe))
                        (_g118116118146_ _g118117118149_)))
                  (let ()
                    (declare (not safe))
                    (_g118116118146_ _g118117118149_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g118116118146_
                                                     _g118117118149_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g118116118146_
                                             _g118117118149_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g118116118146_ _g118117118149_)))))
                          (let ()
                            (declare (not safe))
                            (_g118116118146_ _g118117118149_)))))
                  (let ()
                    (declare (not safe))
                    (_g118116118146_ _g118117118149_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g118115118241_ _L118101_))))
                                         (___kont127587127588_
                                          (lambda (_L117825_ _L117826_)
                                            (let* ((_g117840117893_
                                                    (lambda (_g117841117890_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g117841117890_))))
                                                   (_g117839118069_
                                                    (lambda (_g117841117896_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g117841117896_))
                                                          (let ((_e117849117898_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g117841117896_))))
                    (let ((_hd117848117901_
                           (let ()
                             (declare (not safe))
                             (##car _e117849117898_)))
                          (_tl117847117903_
                           (let ()
                             (declare (not safe))
                             (##cdr _e117849117898_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl117847117903_))
                          (let ((_e117852117906_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl117847117903_))))
                            (let ((_hd117851117909_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e117852117906_)))
                                  (_tl117850117911_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e117852117906_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd117851117909_))
                                  (let ((_e117855117914_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd117851117909_))))
                                    (let ((_hd117854117917_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e117855117914_)))
                                          (_tl117853117919_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e117855117914_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd117854117917_))
                                          (let ((_e117858117922_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd117854117917_))))
                                            (let ((_hd117857117925_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e117858117922_)))
                                                  (_tl117856117927_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e117858117922_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd117857117925_))
                                                  (let ((_e117861117930_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd117857117925_))))
                                                    (let ((_hd117860117933_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e117861117930_)))
                                                          (_tl117859117935_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e117861117930_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl117859117935_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl117856117927_))
                      (let ((_e117864117938_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl117856117927_))))
                        (let ((_hd117863117941_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117864117938_)))
                              (_tl117862117943_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117864117938_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd117863117941_))
                              (let ((_e117867117946_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd117863117941_))))
                                (let ((_hd117866117949_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117867117946_)))
                                      (_tl117865117951_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117867117946_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl117865117951_))
                                      (let ((_e117870117954_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl117865117951_))))
                                        (let ((_hd117869117957_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e117870117954_)))
                                              (_tl117868117959_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e117870117954_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd117869117957_))
                                              (let ((_e117873117962_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd117869117957_))))
                                                (let ((_hd117872117965_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e117873117962_)))
                                                      (_tl117871117967_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e117873117962_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd117872117965_))
                                                      (let ((_e117876117970_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd117872117965_))))
                (let ((_hd117875117973_
                       (let () (declare (not safe)) (##car _e117876117970_)))
                      (_tl117874117975_
                       (let () (declare (not safe)) (##cdr _e117876117970_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd117875117973_))
                      (let ((_e117879117978_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd117875117973_))))
                        (let ((_hd117878117981_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117879117978_)))
                              (_tl117877117983_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117879117978_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl117877117983_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl117874117975_))
                                  (let ((_e117882117986_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl117874117975_))))
                                    (let ((_hd117881117989_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e117882117986_)))
                                          (_tl117880117991_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e117882117986_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl117880117991_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl117871117967_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl117868117959_))
                                                  (let ((_e117885117994_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl117868117959_))))
                                                    (let ((_hd117884117997_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e117885117994_)))
                                                          (_tl117883117999_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e117885117994_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl117883117999_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl117862117943_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl117853117919_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117850117911_))
                              (let ((_e117888118002_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117850117911_))))
                                (let ((_hd117887118005_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117888118002_)))
                                      (_tl117886118007_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117888118002_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl117886118007_))
                                      ((lambda (_L118010_
                                                _L118011_
                                                _L118012_
                                                _L118013_
                                                _L118014_)
                                         (let* ((_get-kws-id118054_
                                                 (let ((__tmp128093
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L117826_)))
                                                       (__tmp128092
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp128093
                                                    __tmp128092)))
                                                (_get-kws-id118056_
                                                 (let ((__tmp128094
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx117539_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id118054_
                                                    __tmp128094)))
                                                (_main-id118058_
                                                 (let ((__tmp128096
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L117826_)))
                                                       (__tmp128095
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp128096
                                                    __tmp128095)))
                                                (_main-id118060_
                                                 (let ((__tmp128097
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx117539_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id118058_
                                                    __tmp128097)))
                                                (_g128098_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id118056_)))
                                                (_g128099_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id118060_)))
                                                (_new-kw-dispatch118064_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L118010_
                                                    _L118014_
                                                    _get-kws-id118056_)))
                                                (_new-get-kws118066_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L118011_
                                                    _L118013_
                                                    _main-id118060_))))
                                           (let ((__tmp128102
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L117826_)))
                                                 (__tmp128101
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id118056_)))
                                                 (__tmp128100
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id118060_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp128102
                                              '" => "
                                              __tmp128101
                                              '" => "
                                              __tmp128100))
                                           (let ((__tmp128103
                                                  (let ((__tmp128108
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__125654125655_
                                                            _main-id118060_
                                                            _L118012_
                                                            '#f)))
                                                        (__tmp128104
                                                         (let ((__tmp128107
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_bind-e__125654125655_
                           _get-kws-id118056_
                           _new-get-kws118066_
                           '#f)))
                       (__tmp128105
                        (let ((__tmp128106
                               (let ()
                                 (declare (not safe))
                                 (_bind-e__125654125655_
                                  _L117826_
                                  _new-kw-dispatch118064_
                                  '#f))))
                          (declare (not safe))
                          (cons __tmp128106 _rest117702_))))
                   (declare (not safe))
                   (cons __tmp128107 __tmp128105))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp128108
                                                          __tmp128104))))
                                             (declare (not safe))
                                             (_lp117679_
                                              __tmp128103
                                              _bind117682_))))
                                       _hd117887118005_
                                       _hd117884117997_
                                       _hd117881117989_
                                       _hd117878117981_
                                       _hd117860117933_)
                                      (let ()
                                        (declare (not safe))
                                        (_g117840117893_ _g117841117896_)))))
                              (let ()
                                (declare (not safe))
                                (_g117840117893_ _g117841117896_)))
                          (let ()
                            (declare (not safe))
                            (_g117840117893_ _g117841117896_)))
                      (let ()
                        (declare (not safe))
                        (_g117840117893_ _g117841117896_)))
                  (let ()
                    (declare (not safe))
                    (_g117840117893_ _g117841117896_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g117840117893_
                                                     _g117841117896_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g117840117893_
                                                 _g117841117896_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g117840117893_
                                             _g117841117896_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g117840117893_ _g117841117896_)))
                              (let ()
                                (declare (not safe))
                                (_g117840117893_ _g117841117896_)))))
                      (let ()
                        (declare (not safe))
                        (_g117840117893_ _g117841117896_)))))
              (let ()
                (declare (not safe))
                (_g117840117893_ _g117841117896_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g117840117893_
                                                 _g117841117896_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g117840117893_ _g117841117896_)))))
                              (let ()
                                (declare (not safe))
                                (_g117840117893_ _g117841117896_)))))
                      (let ()
                        (declare (not safe))
                        (_g117840117893_ _g117841117896_)))
                  (let ()
                    (declare (not safe))
                    (_g117840117893_ _g117841117896_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g117840117893_
                                                     _g117841117896_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g117840117893_
                                             _g117841117896_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g117840117893_ _g117841117896_)))))
                          (let ()
                            (declare (not safe))
                            (_g117840117893_ _g117841117896_)))))
                  (let ()
                    (declare (not safe))
                    (_g117840117893_ _g117841117896_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g117839118069_ _L117825_))))
                                         (___kont127589127590_
                                          (lambda (_L117776_ _L117777_)
                                            (let ((__tmp128109
                                                   (let ((__tmp128110
                                                          (let ((__tmp128111
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp128112
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L117776_))))
                           (declare (not safe))
                           (cons __tmp128112 '()))))
                    (declare (not safe))
                    (cons _L117777_ __tmp128111))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp128110
                                                           _bind117682_))))
                                              (declare (not safe))
                                              (_lp117679_
                                               _rest117702_
                                               __tmp128109)))))
                                     (let* ((___match127656127657_
                                             (lambda (_e117736117801_
                                                      _hd117735117804_
                                                      _tl117734117806_
                                                      _e117739117809_
                                                      _hd117738117812_
                                                      _tl117737117814_
                                                      _e117742117817_
                                                      _hd117741117820_
                                                      _tl117740117822_)
                                               (let ((_L117825_
                                                      _hd117741117820_)
                                                     (_L117826_
                                                      _hd117738117812_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L117826_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#kw-lambda-expr?
                                                             _L117825_)))
                                                     (___kont127587127588_
                                                      _L117825_
                                                      _L117826_)
                                                     (___kont127589127590_
                                                      _hd117741117820_
                                                      _hd117735117804_)))))
                                            (___match127634127635_
                                             (lambda (_e117725118077_
                                                      _hd117724118080_
                                                      _tl117723118082_
                                                      _e117728118085_
                                                      _hd117727118088_
                                                      _tl117726118090_
                                                      _e117731118093_
                                                      _hd117730118096_
                                                      _tl117729118098_)
                                               (let ((_L118101_
                                                      _hd117730118096_)
                                                     (_L118102_
                                                      _hd117727118088_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L118102_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L118101_)))
                                                     (___kont127585127586_
                                                      _L118101_
                                                      _L118102_)
                                                     (___match127656127657_
                                                      _e117725118077_
                                                      _hd117724118080_
                                                      _tl117723118082_
                                                      _e117728118085_
                                                      _hd117727118088_
                                                      _tl117726118090_
                                                      _e117731118093_
                                                      _hd117730118096_
                                                      _tl117729118098_)))))
                                            (___match127612127613_
                                             (lambda (_e117714118249_
                                                      _hd117713118252_
                                                      _tl117712118254_
                                                      _e117717118257_
                                                      _hd117716118260_
                                                      _tl117715118262_
                                                      _e117720118265_
                                                      _hd117719118268_
                                                      _tl117718118270_)
                                               (let ((_L118273_
                                                      _hd117719118268_)
                                                     (_L118274_
                                                      _hd117716118260_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L118274_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L118273_)))
                                                     (___kont127583127584_
                                                      _L118273_
                                                      _L118274_)
                                                     (___match127634127635_
                                                      _e117714118249_
                                                      _hd117713118252_
                                                      _tl117712118254_
                                                      _e117717118257_
                                                      _hd117716118260_
                                                      _tl117715118262_
                                                      _e117720118265_
                                                      _hd117719118268_
                                                      _tl117718118270_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx127581127582_))
                                           (let ((_e117714118249_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx127581127582_))))
                                             (let ((_tl117712118254_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e117714118249_)))
                                                   (_hd117713118252_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e117714118249_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd117713118252_))
                                                   (let ((_e117717118257_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd117713118252_))))
                                                     (let ((_tl117715118262_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e117717118257_)))
                                                           (_hd117716118260_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e117717118257_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl117715118262_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl117712118254_))
                       (let ((_e117720118265_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl117712118254_))))
                         (let ((_tl117718118270_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e117720118265_)))
                               (_hd117719118268_
                                (let ()
                                  (declare (not safe))
                                  (##car _e117720118265_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl117718118270_))
                               (___match127612127613_
                                _e117714118249_
                                _hd117713118252_
                                _tl117712118254_
                                _e117717118257_
                                _hd117716118260_
                                _tl117715118262_
                                _e117720118265_
                                _hd117719118268_
                                _tl117718118270_)
                               (let ()
                                 (declare (not safe))
                                 (_g117708117755_)))))
                       (let () (declare (not safe)) (_g117708117755_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl117712118254_))
                       (let ((_e117750117768_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl117712118254_))))
                         (let ((_tl117748117773_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e117750117768_)))
                               (_hd117749117771_
                                (let ()
                                  (declare (not safe))
                                  (##car _e117750117768_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl117748117773_))
                               (___kont127589127590_
                                _hd117749117771_
                                _hd117713118252_)
                               (let ()
                                 (declare (not safe))
                                 (_g117708117755_)))))
                       (let () (declare (not safe)) (_g117708117755_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl117712118254_))
                                                       (let ((_e117750117768_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl117712118254_))))
                 (let ((_tl117748117773_
                        (let () (declare (not safe)) (##cdr _e117750117768_)))
                       (_hd117749117771_
                        (let () (declare (not safe)) (##car _e117750117768_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl117748117773_))
                       (___kont127589127590_ _hd117749117771_ _hd117713118252_)
                       (let () (declare (not safe)) (_g117708117755_)))))
               (let () (declare (not safe)) (_g117708117755_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g117708117755_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest117683117691_))
                             (let ((_hd117688118369_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest117683117691_)))
                                   (_tl117689118371_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest117683117691_))))
                               (let* ((_hd118374_ _hd117688118369_)
                                      (_rest118376_ _tl117689118371_))
                                 (declare (not safe))
                                 (_K117687118366_ _rest118376_ _hd118374_)))
                             (let ()
                               (declare (not safe))
                               (_else117685117699_))))))))
          (let* ((___stx127673127674_ _stx117539_)
                 (_g117545117572_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx127673127674_)))))
            (let ((___kont127675127676_
                   (lambda (_L117632_ _L117633_ _L117634_)
                     (let ((__tmp128114
                            (lambda ()
                              (let ((_hd117671_
                                     (let ((__tmp128115
                                            (let ((__tmp128116
                                                   (lambda (_g117663117666_
                                                            _g117664117668_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g117663117666_
                                                             _g117664117668_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp128116
                                                      '()
                                                      _L117633_))))
                                       (declare (not safe))
                                       (_compile-bindings117542_ __tmp128115)))
                                    (_body117672_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L117632_))))
                                (let ((__tmp128117
                                       (let ((__tmp128118
                                              (let ((__tmp128119
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body117672_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _hd117671_
                                                      __tmp128119))))
                                         (declare (not safe))
                                         (cons _L117634_ __tmp128118))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp128117
                                   _stx117539_)))))
                           (__tmp128113
                            (let ((__obj127738
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj127738)
                              __obj127738)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp128114
                        gx#current-expander-context
                        __tmp128113))))
                  (___kont127679127680_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx117539_)))))
              (let ((___match127700127701_
                     (lambda (_e117552117584_
                              _hd117551117587_
                              _tl117550117589_
                              _e117555117592_
                              _hd117554117595_
                              _tl117553117597_
                              ___splice127677127678_
                              _target117556117600_
                              _tl117558117602_)
                       (letrec ((_loop117559117605_
                                 (lambda (_hd117557117608_ _bind117563117610_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd117557117608_))
                                       (let ((_e117560117613_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd117557117608_))))
                                         (let ((_lp-tl117562117618_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e117560117613_)))
                                               (_lp-hd117561117616_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e117560117613_))))
                                           (let ((__tmp128122
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd117561117616_
                                                          _bind117563117610_))))
                                             (declare (not safe))
                                             (_loop117559117605_
                                              _lp-tl117562117618_
                                              __tmp128122))))
                                       (let ((_bind117564117621_
                                              (reverse _bind117563117610_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl117553117597_))
                                             (let ((_e117567117624_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl117553117597_))))
                                               (let ((_tl117565117629_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e117567117624_)))
                                                     (_hd117566117627_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e117567117624_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl117565117629_))
                                                     (let ((_L117632_
                                                            _hd117566117627_)
                                                           (_L117633_
                                                            _bind117564117621_)
                                                           (_L117634_
                                                            _hd117551117587_))
                                                       (if (let ((__tmp128120
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp128121
                                 (lambda (_g117655117658_ _g117656117660_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g117655117658_ _g117656117660_)))))
                            (declare (not safe))
                            (foldr1 __tmp128121 '() _L117633_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp128120))
                   (___kont127675127676_ _L117632_ _L117633_ _L117634_)
                   (___kont127679127680_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont127679127680_))))
                                             (___kont127679127680_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop117559117605_ _target117556117600_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx127673127674_))
                    (let ((_e117552117584_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx127673127674_))))
                      (let ((_tl117550117589_
                             (let ()
                               (declare (not safe))
                               (##cdr _e117552117584_)))
                            (_hd117551117587_
                             (let ()
                               (declare (not safe))
                               (##car _e117552117584_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl117550117589_))
                            (let ((_e117555117592_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl117550117589_))))
                              (let ((_tl117553117597_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e117555117592_)))
                                    (_hd117554117595_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e117555117592_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd117554117595_))
                                    (let ((___splice127677127678_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd117554117595_
                                              '0))))
                                      (let ((_tl117558117602_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice127677127678_
                                                '1)))
                                            (_target117556117600_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice127677127678_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl117558117602_))
                                            (___match127700127701_
                                             _e117552117584_
                                             _hd117551117587_
                                             _tl117550117589_
                                             _e117555117592_
                                             _hd117554117595_
                                             _tl117553117597_
                                             ___splice127677127678_
                                             _target117556117600_
                                             _tl117558117602_)
                                            (___kont127679127680_))))
                                    (___kont127679127680_))))
                            (___kont127679127680_))))
                    (___kont127679127680_))))))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_bind117457_)
        (let* ((___stx127703127704_ _bind117457_)
               (_g117460117477_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127703127704_)))))
          (let ((___kont127705127706_
                 (lambda (_L117513_ _L117514_)
                   (if (let () (declare (not safe)) (gx#identifier? _L117514_))
                       (let ((_$e117530_
                              (let ()
                                (declare (not safe))
                                (gxc#case-lambda-expr? _L117513_))))
                         (if _$e117530_
                             _$e117530_
                             (let ((_$e117533_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#opt-lambda-expr? _L117513_))))
                               (if _$e117533_
                                   _$e117533_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L117513_))))))
                       '#f)))
                (___kont127707127708_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127703127704_))
                (let ((_e117466117489_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127703127704_))))
                  (let ((_tl117464117494_
                         (let () (declare (not safe)) (##cdr _e117466117489_)))
                        (_hd117465117492_
                         (let ()
                           (declare (not safe))
                           (##car _e117466117489_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd117465117492_))
                        (let ((_e117469117497_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd117465117492_))))
                          (let ((_tl117467117502_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e117469117497_)))
                                (_hd117468117500_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e117469117497_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl117467117502_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl117464117494_))
                                    (let ((_e117472117505_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl117464117494_))))
                                      (let ((_tl117470117510_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e117472117505_)))
                                            (_hd117471117508_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e117472117505_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl117470117510_))
                                            (___kont127705127706_
                                             _hd117471117508_
                                             _hd117468117500_)
                                            (___kont127707127708_))))
                                    (___kont127707127708_))
                                (___kont127707127708_))))
                        (___kont127707127708_))))
                (___kont127707127708_))))))))
