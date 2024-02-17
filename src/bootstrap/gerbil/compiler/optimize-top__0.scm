(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1708210943)
  (begin
    (define gxc#&collect-top-level-type-info
      (make-promise
       (lambda ()
         (let ((_tbl230646_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp236806 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl230646_ __tmp236806))
           (let ()
             (declare (not safe))
             (table-set! _tbl230646_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl230646_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl230646_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl230646_
              '%#define-values
              gxc#collect-top-level-type-define-values%))
           _tbl230646_))))
    (define gxc#apply-collect-top-level-type-info
      (lambda (_stx230629_ . _args230631_)
        (let ((__tmp236808
               (lambda ()
                 (declare (not safe))
                 (if (null? _args230631_)
                     (gxc#compile-e__0 _stx230629_)
                     (let ((_arg1230636_ (car _args230631_))
                           (_rest230638_ (cdr _args230631_)))
                       (if (null? _rest230638_)
                           (gxc#compile-e__1 _stx230629_ _arg1230636_)
                           (let ((_arg2230641_ (car _rest230638_))
                                 (_rest230643_ (cdr _rest230638_)))
                             (if (null? _rest230643_)
                                 (gxc#compile-e__2
                                  _stx230629_
                                  _arg1230636_
                                  _arg2230641_)
                                 (apply gxc#compile-e
                                        _stx230629_
                                        _arg1230636_
                                        _arg2230641_
                                        _rest230643_))))))))
              (__tmp236807 (force gxc#&collect-top-level-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp236808
           gxc#current-compile-methods
           __tmp236807))))
    (define gxc#&basic-expression-top-level-type
      (make-promise
       (lambda ()
         (let ((_tbl230626_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp236809 (force gxc#&false)))
             (declare (not safe))
             (hash-copy! _tbl230626_ __tmp236809))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl230626_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl230626_ '%#call gxc#basic-expression-type-call%))
           _tbl230626_))))
    (define gxc#apply-basic-expression-top-level-type
      (lambda (_stx230609_ . _args230611_)
        (let ((__tmp236811
               (lambda ()
                 (declare (not safe))
                 (if (null? _args230611_)
                     (gxc#compile-e__0 _stx230609_)
                     (let ((_arg1230616_ (car _args230611_))
                           (_rest230618_ (cdr _args230611_)))
                       (if (null? _rest230618_)
                           (gxc#compile-e__1 _stx230609_ _arg1230616_)
                           (let ((_arg2230621_ (car _rest230618_))
                                 (_rest230623_ (cdr _rest230618_)))
                             (if (null? _rest230623_)
                                 (gxc#compile-e__2
                                  _stx230609_
                                  _arg1230616_
                                  _arg2230621_)
                                 (apply gxc#compile-e
                                        _stx230609_
                                        _arg1230616_
                                        _arg2230621_
                                        _rest230623_))))))))
              (__tmp236810 (force gxc#&basic-expression-top-level-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp236811
           gxc#current-compile-methods
           __tmp236810))))
    (define gxc#&collect-type-info
      (make-promise
       (lambda ()
         (let ((_tbl230606_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp236812 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl230606_ __tmp236812))
           (let ()
             (declare (not safe))
             (table-set! _tbl230606_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl230606_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl230606_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl230606_
              '%#define-values
              gxc#collect-type-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl230606_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl230606_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl230606_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl230606_
              '%#let-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl230606_
              '%#letrec-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl230606_
              '%#letrec*-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl230606_ '%#call gxc#collect-type-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl230606_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl230606_ '%#set! gxc#collect-body-setq%))
           _tbl230606_))))
    (define gxc#apply-collect-type-info
      (lambda (_stx230589_ . _args230591_)
        (let ((__tmp236814
               (lambda ()
                 (declare (not safe))
                 (if (null? _args230591_)
                     (gxc#compile-e__0 _stx230589_)
                     (let ((_arg1230596_ (car _args230591_))
                           (_rest230598_ (cdr _args230591_)))
                       (if (null? _rest230598_)
                           (gxc#compile-e__1 _stx230589_ _arg1230596_)
                           (let ((_arg2230601_ (car _rest230598_))
                                 (_rest230603_ (cdr _rest230598_)))
                             (if (null? _rest230603_)
                                 (gxc#compile-e__2
                                  _stx230589_
                                  _arg1230596_
                                  _arg2230601_)
                                 (apply gxc#compile-e
                                        _stx230589_
                                        _arg1230596_
                                        _arg2230601_
                                        _rest230603_))))))))
              (__tmp236813 (force gxc#&collect-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp236814
           gxc#current-compile-methods
           __tmp236813))))
    (define gxc#&basic-expression-type
      (make-promise
       (lambda ()
         (let ((_tbl230586_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp236815 (force gxc#&false)))
             (declare (not safe))
             (hash-copy! _tbl230586_ __tmp236815))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl230586_
              '%#begin
              gxc#basic-expression-type-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl230586_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl230586_
              '%#lambda
              gxc#basic-expression-type-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl230586_
              '%#case-lambda
              gxc#basic-expression-type-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl230586_
              '%#let-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl230586_
              '%#letrec-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl230586_
              '%#letrec*-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl230586_ '%#call gxc#basic-expression-type-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl230586_ '%#ref gxc#basic-expression-type-ref%))
           _tbl230586_))))
    (define gxc#apply-basic-expression-type
      (lambda (_stx230569_ . _args230571_)
        (let ((__tmp236817
               (lambda ()
                 (declare (not safe))
                 (if (null? _args230571_)
                     (gxc#compile-e__0 _stx230569_)
                     (let ((_arg1230576_ (car _args230571_))
                           (_rest230578_ (cdr _args230571_)))
                       (if (null? _rest230578_)
                           (gxc#compile-e__1 _stx230569_ _arg1230576_)
                           (let ((_arg2230581_ (car _rest230578_))
                                 (_rest230583_ (cdr _rest230578_)))
                             (if (null? _rest230583_)
                                 (gxc#compile-e__2
                                  _stx230569_
                                  _arg1230576_
                                  _arg2230581_)
                                 (apply gxc#compile-e
                                        _stx230569_
                                        _arg1230576_
                                        _arg2230581_
                                        _rest230583_))))))))
              (__tmp236816 (force gxc#&basic-expression-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp236817
           gxc#current-compile-methods
           __tmp236816))))
    (define gxc#&lift-top-lambdas
      (make-promise
       (lambda ()
         (let ((_tbl230566_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp236818 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-copy! _tbl230566_ __tmp236818))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl230566_
              '%#define-values
              gxc#lift-top-lambda-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl230566_
              '%#let-values
              gxc#lift-top-lambda-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl230566_
              '%#letrec-values
              gxc#lift-top-lambda-letrec-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl230566_
              '%#letrec*-values
              gxc#lift-top-lambda-letrec-values%))
           _tbl230566_))))
    (define gxc#apply-lift-top-lambdas
      (lambda (_stx230549_ . _args230551_)
        (let ((__tmp236820
               (lambda ()
                 (declare (not safe))
                 (if (null? _args230551_)
                     (gxc#compile-e__0 _stx230549_)
                     (let ((_arg1230556_ (car _args230551_))
                           (_rest230558_ (cdr _args230551_)))
                       (if (null? _rest230558_)
                           (gxc#compile-e__1 _stx230549_ _arg1230556_)
                           (let ((_arg2230561_ (car _rest230558_))
                                 (_rest230563_ (cdr _rest230558_)))
                             (if (null? _rest230563_)
                                 (gxc#compile-e__2
                                  _stx230549_
                                  _arg1230556_
                                  _arg2230561_)
                                 (apply gxc#compile-e
                                        _stx230549_
                                        _arg1230556_
                                        _arg2230561_
                                        _rest230563_))))))))
              (__tmp236819 (force gxc#&lift-top-lambdas)))
          (declare (not safe))
          (call-with-parameters
           __tmp236820
           gxc#current-compile-methods
           __tmp236819))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_stx230452_)
        (let* ((___stx234726234727_ _stx230452_)
               (_g230455230475_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx234726234727_)))))
          (let ((___kont234728234729_
                 (lambda (_L230519_ _L230520_)
                   (let ((_sym230538_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L230520_))))
                     (if (let ((__tmp236821 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp236821 _sym230538_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym230538_))
                         (let ((_type230539230541_
                                (let ()
                                  (declare (not safe))
                                  (gxc#apply-basic-expression-top-level-type
                                   _L230519_))))
                           (if _type230539230541_
                               (let ((_type230544_ _type230539230541_))
                                 (declare (not safe))
                                 (gxc#optimizer-declare-type!__0
                                  _sym230538_
                                  _type230544_))
                               '#f))))))
                (___kont234730234731_ (lambda () '#!void)))
            (let ((___match234759234760_
                   (lambda (_e230461230487_
                            _hd230460230490_
                            _tl230459230492_
                            _e230464230495_
                            _hd230463230498_
                            _tl230462230500_
                            _e230467230503_
                            _hd230466230506_
                            _tl230465230508_
                            _e230470230511_
                            _hd230469230514_
                            _tl230468230516_)
                     (let ((_L230519_ _hd230469230514_)
                           (_L230520_ _hd230466230506_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L230520_))
                           (___kont234728234729_ _L230519_ _L230520_)
                           (___kont234730234731_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx234726234727_))
                  (let ((_e230461230487_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx234726234727_))))
                    (let ((_tl230459230492_
                           (let ()
                             (declare (not safe))
                             (##cdr _e230461230487_)))
                          (_hd230460230490_
                           (let ()
                             (declare (not safe))
                             (##car _e230461230487_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl230459230492_))
                          (let ((_e230464230495_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl230459230492_))))
                            (let ((_tl230462230500_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e230464230495_)))
                                  (_hd230463230498_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e230464230495_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd230463230498_))
                                  (let ((_e230467230503_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd230463230498_))))
                                    (let ((_tl230465230508_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e230467230503_)))
                                          (_hd230466230506_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e230467230503_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl230465230508_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl230462230500_))
                                              (let ((_e230470230511_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl230462230500_))))
                                                (let ((_tl230468230516_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e230470230511_)))
                                                      (_hd230469230514_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e230470230511_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl230468230516_))
                                                      (___match234759234760_
                                                       _e230461230487_
                                                       _hd230460230490_
                                                       _tl230459230492_
                                                       _e230464230495_
                                                       _hd230463230498_
                                                       _tl230462230500_
                                                       _e230467230503_
                                                       _hd230466230506_
                                                       _tl230465230508_
                                                       _e230470230511_
                                                       _hd230469230514_
                                                       _tl230468230516_)
                                                      (___kont234730234731_))))
                                              (___kont234730234731_))
                                          (___kont234730234731_))))
                                  (___kont234730234731_))))
                          (___kont234730234731_))))
                  (___kont234730234731_)))))))
    (define gxc#collect-type-define-values%
      (lambda (_stx230308_)
        (let* ((___stx234762234763_ _stx230308_)
               (_g230311230342_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx234762234763_)))))
          (let ((___kont234764234765_
                 (lambda (_L230424_ _L230425_)
                   (let ((_sym230441_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L230425_))))
                     (if (let ((__tmp236822 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp236822 _sym230441_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym230441_))
                         (if (let ()
                               (declare (not safe))
                               (gxc#optimizer-lookup-type _sym230441_))
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"skipping type inference for already declared type "
                                _sym230441_))
                             (let ((_type230442230444_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#apply-basic-expression-type
                                       _L230424_))))
                               (if _type230442230444_
                                   (let ((_type230447_ _type230442230444_))
                                     (declare (not safe))
                                     (gxc#optimizer-declare-type!__0
                                      _sym230441_
                                      _type230447_))
                                   '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__0 _L230424_)))))
                (___kont234766234767_
                 (lambda (_L230371_ _L230372_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__0 _L230371_)))))
            (let ((___match234795234796_
                   (lambda (_e230317230392_
                            _hd230316230395_
                            _tl230315230397_
                            _e230320230400_
                            _hd230319230403_
                            _tl230318230405_
                            _e230323230408_
                            _hd230322230411_
                            _tl230321230413_
                            _e230326230416_
                            _hd230325230419_
                            _tl230324230421_)
                     (let ((_L230424_ _hd230325230419_)
                           (_L230425_ _hd230322230411_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L230425_))
                           (___kont234764234765_ _L230424_ _L230425_)
                           (___kont234766234767_
                            _hd230325230419_
                            _hd230319230403_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx234762234763_))
                  (let ((_e230317230392_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx234762234763_))))
                    (let ((_tl230315230397_
                           (let ()
                             (declare (not safe))
                             (##cdr _e230317230392_)))
                          (_hd230316230395_
                           (let ()
                             (declare (not safe))
                             (##car _e230317230392_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl230315230397_))
                          (let ((_e230320230400_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl230315230397_))))
                            (let ((_tl230318230405_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e230320230400_)))
                                  (_hd230319230403_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e230320230400_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd230319230403_))
                                  (let ((_e230323230408_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd230319230403_))))
                                    (let ((_tl230321230413_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e230323230408_)))
                                          (_hd230322230411_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e230323230408_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl230321230413_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl230318230405_))
                                              (let ((_e230326230416_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl230318230405_))))
                                                (let ((_tl230324230421_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e230326230416_)))
                                                      (_hd230325230419_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e230326230416_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl230324230421_))
                                                      (___match234795234796_
                                                       _e230317230392_
                                                       _hd230316230395_
                                                       _tl230315230397_
                                                       _e230320230400_
                                                       _hd230319230403_
                                                       _tl230318230405_
                                                       _e230323230408_
                                                       _hd230322230411_
                                                       _tl230321230413_
                                                       _e230326230416_
                                                       _hd230325230419_
                                                       _tl230324230421_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g230311230342_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g230311230342_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl230318230405_))
                                              (let ((_e230337230363_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl230318230405_))))
                                                (let ((_tl230335230368_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e230337230363_)))
                                                      (_hd230336230366_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e230337230363_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl230335230368_))
                                                      (___kont234766234767_
                                                       _hd230336230366_
                                                       _hd230319230403_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g230311230342_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g230311230342_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl230318230405_))
                                      (let ((_e230337230363_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl230318230405_))))
                                        (let ((_tl230335230368_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230337230363_)))
                                              (_hd230336230366_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230337230363_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl230335230368_))
                                              (___kont234766234767_
                                               _hd230336230366_
                                               _hd230319230403_)
                                              (let ()
                                                (declare (not safe))
                                                (_g230311230342_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g230311230342_))))))
                          (let () (declare (not safe)) (_g230311230342_)))))
                  (let () (declare (not safe)) (_g230311230342_))))))))
    (define gxc#collect-type-let-values%
      (lambda (_stx230093_)
        (letrec ((_collect-e230095_
                  (lambda (_hd230252_ _expr230253_)
                    (let* ((___stx234818234819_ _hd230252_)
                           (_g230256230266_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx234818234819_)))))
                      (let ((___kont234820234821_
                             (lambda (_L230286_)
                               (let ((_sym230297_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#identifier-symbol _L230286_))))
                                 (if (let ((__tmp236823
                                            (gxc#current-compile-mutators)))
                                       (declare (not safe))
                                       (hash-get __tmp236823 _sym230297_))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#verbose
                                        '"skipping type declaration for mutable binding "
                                        _sym230297_))
                                     (let ((_type230298230300_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-basic-expression-type
                                               _expr230253_))))
                                       (if _type230298230300_
                                           (let ((_type230303_
                                                  _type230298230300_))
                                             (declare (not safe))
                                             (gxc#optimizer-declare-type!__%
                                              _sym230297_
                                              _type230303_
                                              '#t))
                                           '#f))))))
                            (___kont234822234823_ (lambda () '#!void)))
                        (let ((___match234831234832_
                               (lambda (_e230261230278_
                                        _hd230260230281_
                                        _tl230259230283_)
                                 (let ((_L230286_ _hd230260230281_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _L230286_))
                                       (___kont234820234821_ _L230286_)
                                       (___kont234822234823_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx234818234819_))
                              (let ((_e230261230278_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx234818234819_))))
                                (let ((_tl230259230283_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230261230278_)))
                                      (_hd230260230281_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230261230278_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl230259230283_))
                                      (___match234831234832_
                                       _e230261230278_
                                       _hd230260230281_
                                       _tl230259230283_)
                                      (___kont234822234823_))))
                              (___kont234822234823_))))))))
          (let* ((_g230097230132_
                  (lambda (_g230098230129_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g230098230129_))))
                 (_g230096230249_
                  (lambda (_g230098230135_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g230098230135_))
                        (let ((_e230104230137_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g230098230135_))))
                          (let ((_hd230103230140_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e230104230137_)))
                                (_tl230102230142_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e230104230137_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl230102230142_))
                                (let ((_e230107230145_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl230102230142_))))
                                  (let ((_hd230106230148_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e230107230145_)))
                                        (_tl230105230150_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e230107230145_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd230106230148_))
                                        (let ((_g236824_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd230106230148_
                                                  '0))))
                                          (begin
                                            (let ((_g236825_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g236824_)
                                                         (##vector-length
                                                          _g236824_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g236825_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g236825_)))
                                            (let ((_target230108230153_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g236824_
                                                      0)))
                                                  (_tl230110230155_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g236824_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl230110230155_))
                                                  (letrec ((_loop230111230158_
                                                            (lambda (_hd230109230161_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr230115230163_
                             _hd230116230165_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd230109230161_))
                          (let ((_e230112230168_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd230109230161_))))
                            (let ((_lp-hd230113230171_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e230112230168_)))
                                  (_lp-tl230114230173_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e230112230168_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _lp-hd230113230171_))
                                  (let ((_e230121230176_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _lp-hd230113230171_))))
                                    (let ((_hd230120230179_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e230121230176_)))
                                          (_tl230119230181_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e230121230176_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl230119230181_))
                                          (let ((_e230124230184_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl230119230181_))))
                                            (let ((_hd230123230187_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e230124230184_)))
                                                  (_tl230122230189_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e230124230184_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl230122230189_))
                                                  (let ((__tmp236830
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _hd230123230187_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr230115230163_)))
                (__tmp236829
                 (let ()
                   (declare (not safe))
                   (cons _hd230120230179_ _hd230116230165_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_loop230111230158_
                                                     _lp-tl230114230173_
                                                     __tmp236830
                                                     __tmp236829))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g230097230132_
                                                     _g230098230135_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g230097230132_
                                             _g230098230135_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g230097230132_ _g230098230135_)))))
                          (let ((_expr230117230192_
                                 (reverse _expr230115230163_))
                                (_hd230118230194_ (reverse _hd230116230165_)))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl230105230150_))
                                (let ((_e230127230197_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl230105230150_))))
                                  (let ((_hd230126230200_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e230127230197_)))
                                        (_tl230125230202_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e230127230197_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl230125230202_))
                                        ((lambda (_L230205_
                                                  _L230206_
                                                  _L230207_)
                                           (for-each
                                            _collect-e230095_
                                            (let ((__tmp236826
                                                   (lambda (_g230227230230_
                                                            _g230228230232_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g230227230230_
                                                             _g230228230232_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp236826
                                                      '()
                                                      _L230207_))
                                            (let ((__tmp236827
                                                   (lambda (_g230234230237_
                                                            _g230235230239_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g230234230237_
                                                             _g230235230239_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp236827
                                                      '()
                                                      _L230206_)))
                                           (for-each
                                            gxc#compile-e
                                            (let ((__tmp236828
                                                   (lambda (_g230241230244_
                                                            _g230242230246_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g230241230244_
                                                             _g230242230246_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp236828
                                                      '()
                                                      _L230206_)))
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _L230205_)))
                                         _hd230126230200_
                                         _expr230117230192_
                                         _hd230118230194_)
                                        (let ()
                                          (declare (not safe))
                                          (_g230097230132_ _g230098230135_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g230097230132_ _g230098230135_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop230111230158_
                                                       _target230108230153_
                                                       '()
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g230097230132_
                                                     _g230098230135_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g230097230132_ _g230098230135_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g230097230132_ _g230098230135_)))))
                        (let ()
                          (declare (not safe))
                          (_g230097230132_ _g230098230135_))))))
            (declare (not safe))
            (_g230096230249_ _stx230093_)))))
    (define gxc#collect-type-call%
      (lambda (_stx229585_)
        (let* ((___stx234834234835_ _stx229585_)
               (_g229589229704_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx234834234835_)))))
          (let ((___kont234836234837_
                 (lambda (_L230043_ _L230044_ _L230045_ _L230046_ _L230047_)
                   (let ((__tmp236834
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L230046_)))
                         (__tmp236833
                          (let () (declare (not safe)) (gx#stx-e _L230045_)))
                         (__tmp236832
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L230044_)))
                         (__tmp236831
                          (let () (declare (not safe)) (gx#stx-e _L230043_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp236834
                      __tmp236833
                      __tmp236832
                      __tmp236831))))
                (___kont234838234839_
                 (lambda (_L229871_ _L229872_ _L229873_ _L229874_)
                   (let ((__tmp236837
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L229873_)))
                         (__tmp236836
                          (let () (declare (not safe)) (gx#stx-e _L229872_)))
                         (__tmp236835
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L229871_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp236837
                      __tmp236836
                      __tmp236835
                      '#f))))
                (___kont234840234841_
                 (lambda (_L229741_)
                   (for-each
                    gxc#compile-e
                    (let ((__tmp236838
                           (lambda (_g229754229757_ _g229755229759_)
                             (let ()
                               (declare (not safe))
                               (cons _g229754229757_ _g229755229759_)))))
                      (declare (not safe))
                      (foldr1 __tmp236838 '() _L229741_))))))
            (let* ((___match235091235092_
                    (lambda (_e229690229709_
                             _hd229689229712_
                             _tl229688229714_
                             ___splice234842234843_
                             _target229691229717_
                             _tl229693229719_)
                      (letrec ((_loop229694229722_
                                (lambda (_hd229692229725_ _expr229698229727_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd229692229725_))
                                      (let ((_e229695229730_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd229692229725_))))
                                        (let ((_lp-tl229697229735_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229695229730_)))
                                              (_lp-hd229696229733_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229695229730_))))
                                          (let ((__tmp236839
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd229696229733_
                                                         _expr229698229727_))))
                                            (declare (not safe))
                                            (_loop229694229722_
                                             _lp-tl229697229735_
                                             __tmp236839))))
                                      (let ((_expr229699229738_
                                             (reverse _expr229698229727_)))
                                        (___kont234840234841_
                                         _expr229699229738_))))))
                        (let ()
                          (declare (not safe))
                          (_loop229694229722_ _target229691229717_ '())))))
                   (___match234971234972_
                    (lambda (_e229598229915_
                             _hd229597229918_
                             _tl229596229920_
                             _e229601229923_
                             _hd229600229926_
                             _tl229599229928_
                             _e229604229931_
                             _hd229603229934_
                             _tl229602229936_
                             _e229607229939_
                             _hd229606229942_
                             _tl229605229944_
                             _e229610229947_
                             _hd229609229950_
                             _tl229608229952_
                             _e229613229955_
                             _hd229612229958_
                             _tl229611229960_
                             _e229616229963_
                             _hd229615229966_
                             _tl229614229968_
                             _e229619229971_
                             _hd229618229974_
                             _tl229617229976_
                             _e229622229979_
                             _hd229621229982_
                             _tl229620229984_
                             _e229625229987_
                             _hd229624229990_
                             _tl229623229992_
                             _e229628229995_
                             _hd229627229998_
                             _tl229626230000_
                             _e229631230003_
                             _hd229630230006_
                             _tl229629230008_
                             _e229634230011_
                             _hd229633230014_
                             _tl229632230016_
                             _e229637230019_
                             _hd229636230022_
                             _tl229635230024_
                             _e229640230027_
                             _hd229639230030_
                             _tl229638230032_
                             _e229643230035_
                             _hd229642230038_
                             _tl229641230040_)
                      (let ((_L230043_ _hd229642230038_)
                            (_L230044_ _hd229633230014_)
                            (_L230045_ _hd229624229990_)
                            (_L230046_ _hd229615229966_)
                            (_L230047_ _hd229606229942_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _L230047_
                               'bind-method!))
                            (___kont234836234837_
                             _L230043_
                             _L230044_
                             _L230045_
                             _L230046_
                             _L230047_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl229596229920_))
                                (let ((___splice234842234843_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl229596229920_
                                          '0))))
                                  (let ((_tl229693229719_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice234842234843_
                                            '1)))
                                        (_target229691229717_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice234842234843_
                                            '0))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl229693229719_))
                                        (___match235091235092_
                                         _e229598229915_
                                         _hd229597229918_
                                         _tl229596229920_
                                         ___splice234842234843_
                                         _target229691229717_
                                         _tl229693229719_)
                                        (let ()
                                          (declare (not safe))
                                          (_g229589229704_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g229589229704_))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx234834234835_))
                  (let ((_e229598229915_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx234834234835_))))
                    (let ((_tl229596229920_
                           (let ()
                             (declare (not safe))
                             (##cdr _e229598229915_)))
                          (_hd229597229918_
                           (let ()
                             (declare (not safe))
                             (##car _e229598229915_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl229596229920_))
                          (let ((_e229601229923_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl229596229920_))))
                            (let ((_tl229599229928_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e229601229923_)))
                                  (_hd229600229926_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e229601229923_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd229600229926_))
                                  (let ((_e229604229931_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd229600229926_))))
                                    (let ((_tl229602229936_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e229604229931_)))
                                          (_hd229603229934_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e229604229931_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd229603229934_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd229603229934_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl229602229936_))
                                                  (let ((_e229607229939_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl229602229936_))))
                                                    (let ((_tl229605229944_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e229607229939_)))
                                                          (_hd229606229942_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e229607229939_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl229605229944_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl229599229928_))
                      (let ((_e229610229947_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl229599229928_))))
                        (let ((_tl229608229952_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229610229947_)))
                              (_hd229609229950_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229610229947_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd229609229950_))
                              (let ((_e229613229955_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd229609229950_))))
                                (let ((_tl229611229960_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229613229955_)))
                                      (_hd229612229958_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229613229955_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd229612229958_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd229612229958_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl229611229960_))
                                              (let ((_e229616229963_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl229611229960_))))
                                                (let ((_tl229614229968_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e229616229963_)))
                                                      (_hd229615229966_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e229616229963_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl229614229968_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl229608229952_))
                                                          (let ((_e229619229971_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl229608229952_))))
                    (let ((_tl229617229976_
                           (let ()
                             (declare (not safe))
                             (##cdr _e229619229971_)))
                          (_hd229618229974_
                           (let ()
                             (declare (not safe))
                             (##car _e229619229971_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd229618229974_))
                          (let ((_e229622229979_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd229618229974_))))
                            (let ((_tl229620229984_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e229622229979_)))
                                  (_hd229621229982_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e229622229979_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd229621229982_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd229621229982_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl229620229984_))
                                          (let ((_e229625229987_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl229620229984_))))
                                            (let ((_tl229623229992_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e229625229987_)))
                                                  (_hd229624229990_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e229625229987_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl229623229992_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl229617229976_))
                                                      (let ((_e229628229995_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl229617229976_))))
                (let ((_tl229626230000_
                       (let () (declare (not safe)) (##cdr _e229628229995_)))
                      (_hd229627229998_
                       (let () (declare (not safe)) (##car _e229628229995_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd229627229998_))
                      (let ((_e229631230003_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd229627229998_))))
                        (let ((_tl229629230008_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229631230003_)))
                              (_hd229630230006_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229631230003_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd229630230006_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd229630230006_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl229629230008_))
                                      (let ((_e229634230011_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl229629230008_))))
                                        (let ((_tl229632230016_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229634230011_)))
                                              (_hd229633230014_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229634230011_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229632230016_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl229626230000_))
                                                  (let ((_e229637230019_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl229626230000_))))
                                                    (let ((_tl229635230024_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e229637230019_)))
                                                          (_hd229636230022_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e229637230019_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd229636230022_))
                                                          (let ((_e229640230027_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd229636230022_))))
                    (let ((_tl229638230032_
                           (let ()
                             (declare (not safe))
                             (##cdr _e229640230027_)))
                          (_hd229639230030_
                           (let ()
                             (declare (not safe))
                             (##car _e229640230027_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd229639230030_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd229639230030_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl229638230032_))
                                  (let ((_e229643230035_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl229638230032_))))
                                    (let ((_tl229641230040_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e229643230035_)))
                                          (_hd229642230038_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e229643230035_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl229641230040_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229635230024_))
                                              (___match234971234972_
                                               _e229598229915_
                                               _hd229597229918_
                                               _tl229596229920_
                                               _e229601229923_
                                               _hd229600229926_
                                               _tl229599229928_
                                               _e229604229931_
                                               _hd229603229934_
                                               _tl229602229936_
                                               _e229607229939_
                                               _hd229606229942_
                                               _tl229605229944_
                                               _e229610229947_
                                               _hd229609229950_
                                               _tl229608229952_
                                               _e229613229955_
                                               _hd229612229958_
                                               _tl229611229960_
                                               _e229616229963_
                                               _hd229615229966_
                                               _tl229614229968_
                                               _e229619229971_
                                               _hd229618229974_
                                               _tl229617229976_
                                               _e229622229979_
                                               _hd229621229982_
                                               _tl229620229984_
                                               _e229625229987_
                                               _hd229624229990_
                                               _tl229623229992_
                                               _e229628229995_
                                               _hd229627229998_
                                               _tl229626230000_
                                               _e229631230003_
                                               _hd229630230006_
                                               _tl229629230008_
                                               _e229634230011_
                                               _hd229633230014_
                                               _tl229632230016_
                                               _e229637230019_
                                               _hd229636230022_
                                               _tl229635230024_
                                               _e229640230027_
                                               _hd229639230030_
                                               _tl229638230032_
                                               _e229643230035_
                                               _hd229642230038_
                                               _tl229641230040_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl229596229920_))
                                                  (let ((___splice234842234843_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl229596229920_
                                                            '0))))
                                                    (let ((_tl229693229719_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice234842234843_
                                                              '1)))
                                                          (_target229691229717_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice234842234843_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl229693229719_))
                                                          (___match235091235092_
                                                           _e229598229915_
                                                           _hd229597229918_
                                                           _tl229596229920_
                                                           ___splice234842234843_
                                                           _target229691229717_
                                                           _tl229693229719_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g229589229704_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g229589229704_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl229596229920_))
                                              (let ((___splice234842234843_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl229596229920_
                                                        '0))))
                                                (let ((_tl229693229719_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice234842234843_
                                                          '1)))
                                                      (_target229691229717_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice234842234843_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl229693229719_))
                                                      (___match235091235092_
                                                       _e229598229915_
                                                       _hd229597229918_
                                                       _tl229596229920_
                                                       ___splice234842234843_
                                                       _target229691229717_
                                                       _tl229693229719_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g229589229704_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g229589229704_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl229596229920_))
                                      (let ((___splice234842234843_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl229596229920_
                                                '0))))
                                        (let ((_tl229693229719_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice234842234843_
                                                  '1)))
                                              (_target229691229717_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice234842234843_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229693229719_))
                                              (___match235091235092_
                                               _e229598229915_
                                               _hd229597229918_
                                               _tl229596229920_
                                               ___splice234842234843_
                                               _target229691229717_
                                               _tl229693229719_)
                                              (let ()
                                                (declare (not safe))
                                                (_g229589229704_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229589229704_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl229596229920_))
                                  (let ((___splice234842234843_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl229596229920_
                                            '0))))
                                    (let ((_tl229693229719_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice234842234843_
                                              '1)))
                                          (_target229691229717_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice234842234843_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl229693229719_))
                                          (___match235091235092_
                                           _e229598229915_
                                           _hd229597229918_
                                           _tl229596229920_
                                           ___splice234842234843_
                                           _target229691229717_
                                           _tl229693229719_)
                                          (let ()
                                            (declare (not safe))
                                            (_g229589229704_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g229589229704_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl229596229920_))
                              (let ((___splice234842234843_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl229596229920_
                                        '0))))
                                (let ((_tl229693229719_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice234842234843_
                                          '1)))
                                      (_target229691229717_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice234842234843_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl229693229719_))
                                      (___match235091235092_
                                       _e229598229915_
                                       _hd229597229918_
                                       _tl229596229920_
                                       ___splice234842234843_
                                       _target229691229717_
                                       _tl229693229719_)
                                      (let ()
                                        (declare (not safe))
                                        (_g229589229704_)))))
                              (let ()
                                (declare (not safe))
                                (_g229589229704_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl229596229920_))
                      (let ((___splice234842234843_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl229596229920_ '0))))
                        (let ((_tl229693229719_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice234842234843_ '1)))
                              (_target229691229717_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice234842234843_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl229693229719_))
                              (___match235091235092_
                               _e229598229915_
                               _hd229597229918_
                               _tl229596229920_
                               ___splice234842234843_
                               _target229691229717_
                               _tl229693229719_)
                              (let ()
                                (declare (not safe))
                                (_g229589229704_)))))
                      (let () (declare (not safe)) (_g229589229704_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl229626230000_))
                                                      (if (let ((__tmp236840
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp236840 'bind-method!))
                  (let ((_L229871_ _hd229633230014_)
                        (_L229872_ _hd229624229990_)
                        (_L229873_ _hd229615229966_)
                        (_L229874_ _hd229606229942_))
                    (___kont234838234839_
                     _L229871_
                     _L229872_
                     _L229873_
                     _L229874_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl229596229920_))
                      (let ((___splice234842234843_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl229596229920_ '0))))
                        (let ((_tl229693229719_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice234842234843_ '1)))
                              (_target229691229717_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice234842234843_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl229693229719_))
                              (___match235091235092_
                               _e229598229915_
                               _hd229597229918_
                               _tl229596229920_
                               ___splice234842234843_
                               _target229691229717_
                               _tl229693229719_)
                              (let ()
                                (declare (not safe))
                                (_g229589229704_)))))
                      (let () (declare (not safe)) (_g229589229704_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl229596229920_))
                  (let ((___splice234842234843_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl229596229920_ '0))))
                    (let ((_tl229693229719_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice234842234843_ '1)))
                          (_target229691229717_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice234842234843_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl229693229719_))
                          (___match235091235092_
                           _e229598229915_
                           _hd229597229918_
                           _tl229596229920_
                           ___splice234842234843_
                           _target229691229717_
                           _tl229693229719_)
                          (let () (declare (not safe)) (_g229589229704_)))))
                  (let () (declare (not safe)) (_g229589229704_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl229596229920_))
                                                  (let ((___splice234842234843_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl229596229920_
                                                            '0))))
                                                    (let ((_tl229693229719_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice234842234843_
                                                              '1)))
                                                          (_target229691229717_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice234842234843_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl229693229719_))
                                                          (___match235091235092_
                                                           _e229598229915_
                                                           _hd229597229918_
                                                           _tl229596229920_
                                                           ___splice234842234843_
                                                           _target229691229717_
                                                           _tl229693229719_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g229589229704_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g229589229704_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl229596229920_))
                                          (let ((___splice234842234843_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl229596229920_
                                                    '0))))
                                            (let ((_tl229693229719_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice234842234843_
                                                      '1)))
                                                  (_target229691229717_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice234842234843_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl229693229719_))
                                                  (___match235091235092_
                                                   _e229598229915_
                                                   _hd229597229918_
                                                   _tl229596229920_
                                                   ___splice234842234843_
                                                   _target229691229717_
                                                   _tl229693229719_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g229589229704_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g229589229704_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl229596229920_))
                                      (let ((___splice234842234843_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl229596229920_
                                                '0))))
                                        (let ((_tl229693229719_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice234842234843_
                                                  '1)))
                                              (_target229691229717_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice234842234843_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229693229719_))
                                              (___match235091235092_
                                               _e229598229915_
                                               _hd229597229918_
                                               _tl229596229920_
                                               ___splice234842234843_
                                               _target229691229717_
                                               _tl229693229719_)
                                              (let ()
                                                (declare (not safe))
                                                (_g229589229704_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229589229704_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl229596229920_))
                                  (let ((___splice234842234843_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl229596229920_
                                            '0))))
                                    (let ((_tl229693229719_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice234842234843_
                                              '1)))
                                          (_target229691229717_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice234842234843_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl229693229719_))
                                          (___match235091235092_
                                           _e229598229915_
                                           _hd229597229918_
                                           _tl229596229920_
                                           ___splice234842234843_
                                           _target229691229717_
                                           _tl229693229719_)
                                          (let ()
                                            (declare (not safe))
                                            (_g229589229704_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g229589229704_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl229596229920_))
                          (let ((___splice234842234843_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl229596229920_
                                    '0))))
                            (let ((_tl229693229719_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice234842234843_ '1)))
                                  (_target229691229717_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice234842234843_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl229693229719_))
                                  (___match235091235092_
                                   _e229598229915_
                                   _hd229597229918_
                                   _tl229596229920_
                                   ___splice234842234843_
                                   _target229691229717_
                                   _tl229693229719_)
                                  (let ()
                                    (declare (not safe))
                                    (_g229589229704_)))))
                          (let () (declare (not safe)) (_g229589229704_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl229596229920_))
                  (let ((___splice234842234843_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl229596229920_ '0))))
                    (let ((_tl229693229719_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice234842234843_ '1)))
                          (_target229691229717_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice234842234843_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl229693229719_))
                          (___match235091235092_
                           _e229598229915_
                           _hd229597229918_
                           _tl229596229920_
                           ___splice234842234843_
                           _target229691229717_
                           _tl229693229719_)
                          (let () (declare (not safe)) (_g229589229704_)))))
                  (let () (declare (not safe)) (_g229589229704_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl229596229920_))
                                                      (let ((___splice234842234843_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl229596229920_ '0))))
                (let ((_tl229693229719_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice234842234843_ '1)))
                      (_target229691229717_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice234842234843_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl229693229719_))
                      (___match235091235092_
                       _e229598229915_
                       _hd229597229918_
                       _tl229596229920_
                       ___splice234842234843_
                       _target229691229717_
                       _tl229693229719_)
                      (let () (declare (not safe)) (_g229589229704_)))))
              (let () (declare (not safe)) (_g229589229704_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl229596229920_))
                                              (let ((___splice234842234843_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl229596229920_
                                                        '0))))
                                                (let ((_tl229693229719_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice234842234843_
                                                          '1)))
                                                      (_target229691229717_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice234842234843_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl229693229719_))
                                                      (___match235091235092_
                                                       _e229598229915_
                                                       _hd229597229918_
                                                       _tl229596229920_
                                                       ___splice234842234843_
                                                       _target229691229717_
                                                       _tl229693229719_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g229589229704_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g229589229704_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl229596229920_))
                                          (let ((___splice234842234843_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl229596229920_
                                                    '0))))
                                            (let ((_tl229693229719_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice234842234843_
                                                      '1)))
                                                  (_target229691229717_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice234842234843_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl229693229719_))
                                                  (___match235091235092_
                                                   _e229598229915_
                                                   _hd229597229918_
                                                   _tl229596229920_
                                                   ___splice234842234843_
                                                   _target229691229717_
                                                   _tl229693229719_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g229589229704_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g229589229704_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl229596229920_))
                                      (let ((___splice234842234843_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl229596229920_
                                                '0))))
                                        (let ((_tl229693229719_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice234842234843_
                                                  '1)))
                                              (_target229691229717_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice234842234843_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229693229719_))
                                              (___match235091235092_
                                               _e229598229915_
                                               _hd229597229918_
                                               _tl229596229920_
                                               ___splice234842234843_
                                               _target229691229717_
                                               _tl229693229719_)
                                              (let ()
                                                (declare (not safe))
                                                (_g229589229704_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229589229704_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl229596229920_))
                              (let ((___splice234842234843_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl229596229920_
                                        '0))))
                                (let ((_tl229693229719_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice234842234843_
                                          '1)))
                                      (_target229691229717_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice234842234843_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl229693229719_))
                                      (___match235091235092_
                                       _e229598229915_
                                       _hd229597229918_
                                       _tl229596229920_
                                       ___splice234842234843_
                                       _target229691229717_
                                       _tl229693229719_)
                                      (let ()
                                        (declare (not safe))
                                        (_g229589229704_)))))
                              (let ()
                                (declare (not safe))
                                (_g229589229704_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl229596229920_))
                      (let ((___splice234842234843_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl229596229920_ '0))))
                        (let ((_tl229693229719_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice234842234843_ '1)))
                              (_target229691229717_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice234842234843_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl229693229719_))
                              (___match235091235092_
                               _e229598229915_
                               _hd229597229918_
                               _tl229596229920_
                               ___splice234842234843_
                               _target229691229717_
                               _tl229693229719_)
                              (let ()
                                (declare (not safe))
                                (_g229589229704_)))))
                      (let () (declare (not safe)) (_g229589229704_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl229596229920_))
                  (let ((___splice234842234843_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl229596229920_ '0))))
                    (let ((_tl229693229719_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice234842234843_ '1)))
                          (_target229691229717_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice234842234843_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl229693229719_))
                          (___match235091235092_
                           _e229598229915_
                           _hd229597229918_
                           _tl229596229920_
                           ___splice234842234843_
                           _target229691229717_
                           _tl229693229719_)
                          (let () (declare (not safe)) (_g229589229704_)))))
                  (let () (declare (not safe)) (_g229589229704_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl229596229920_))
                                                  (let ((___splice234842234843_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl229596229920_
                                                            '0))))
                                                    (let ((_tl229693229719_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice234842234843_
                                                              '1)))
                                                          (_target229691229717_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice234842234843_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl229693229719_))
                                                          (___match235091235092_
                                                           _e229598229915_
                                                           _hd229597229918_
                                                           _tl229596229920_
                                                           ___splice234842234843_
                                                           _target229691229717_
                                                           _tl229693229719_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g229589229704_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g229589229704_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl229596229920_))
                                              (let ((___splice234842234843_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl229596229920_
                                                        '0))))
                                                (let ((_tl229693229719_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice234842234843_
                                                          '1)))
                                                      (_target229691229717_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice234842234843_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl229693229719_))
                                                      (___match235091235092_
                                                       _e229598229915_
                                                       _hd229597229918_
                                                       _tl229596229920_
                                                       ___splice234842234843_
                                                       _target229691229717_
                                                       _tl229693229719_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g229589229704_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g229589229704_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl229596229920_))
                                          (let ((___splice234842234843_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl229596229920_
                                                    '0))))
                                            (let ((_tl229693229719_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice234842234843_
                                                      '1)))
                                                  (_target229691229717_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice234842234843_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl229693229719_))
                                                  (___match235091235092_
                                                   _e229598229915_
                                                   _hd229597229918_
                                                   _tl229596229920_
                                                   ___splice234842234843_
                                                   _target229691229717_
                                                   _tl229693229719_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g229589229704_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g229589229704_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl229596229920_))
                                  (let ((___splice234842234843_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl229596229920_
                                            '0))))
                                    (let ((_tl229693229719_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice234842234843_
                                              '1)))
                                          (_target229691229717_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice234842234843_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl229693229719_))
                                          (___match235091235092_
                                           _e229598229915_
                                           _hd229597229918_
                                           _tl229596229920_
                                           ___splice234842234843_
                                           _target229691229717_
                                           _tl229693229719_)
                                          (let ()
                                            (declare (not safe))
                                            (_g229589229704_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g229589229704_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl229596229920_))
                          (let ((___splice234842234843_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl229596229920_
                                    '0))))
                            (let ((_tl229693229719_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice234842234843_ '1)))
                                  (_target229691229717_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice234842234843_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl229693229719_))
                                  (___match235091235092_
                                   _e229598229915_
                                   _hd229597229918_
                                   _tl229596229920_
                                   ___splice234842234843_
                                   _target229691229717_
                                   _tl229693229719_)
                                  (let ()
                                    (declare (not safe))
                                    (_g229589229704_)))))
                          (let () (declare (not safe)) (_g229589229704_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl229596229920_))
                      (let ((___splice234842234843_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl229596229920_ '0))))
                        (let ((_tl229693229719_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice234842234843_ '1)))
                              (_target229691229717_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice234842234843_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl229693229719_))
                              (___match235091235092_
                               _e229598229915_
                               _hd229597229918_
                               _tl229596229920_
                               ___splice234842234843_
                               _target229691229717_
                               _tl229693229719_)
                              (let ()
                                (declare (not safe))
                                (_g229589229704_)))))
                      (let () (declare (not safe)) (_g229589229704_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl229596229920_))
                                                      (let ((___splice234842234843_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl229596229920_ '0))))
                (let ((_tl229693229719_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice234842234843_ '1)))
                      (_target229691229717_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice234842234843_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl229693229719_))
                      (___match235091235092_
                       _e229598229915_
                       _hd229597229918_
                       _tl229596229920_
                       ___splice234842234843_
                       _target229691229717_
                       _tl229693229719_)
                      (let () (declare (not safe)) (_g229589229704_)))))
              (let () (declare (not safe)) (_g229589229704_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl229596229920_))
                                                  (let ((___splice234842234843_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl229596229920_
                                                            '0))))
                                                    (let ((_tl229693229719_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice234842234843_
                                                              '1)))
                                                          (_target229691229717_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice234842234843_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl229693229719_))
                                                          (___match235091235092_
                                                           _e229598229915_
                                                           _hd229597229918_
                                                           _tl229596229920_
                                                           ___splice234842234843_
                                                           _target229691229717_
                                                           _tl229693229719_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g229589229704_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g229589229704_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl229596229920_))
                                              (let ((___splice234842234843_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl229596229920_
                                                        '0))))
                                                (let ((_tl229693229719_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice234842234843_
                                                          '1)))
                                                      (_target229691229717_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice234842234843_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl229693229719_))
                                                      (___match235091235092_
                                                       _e229598229915_
                                                       _hd229597229918_
                                                       _tl229596229920_
                                                       ___splice234842234843_
                                                       _target229691229717_
                                                       _tl229693229719_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g229589229704_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g229589229704_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl229596229920_))
                                      (let ((___splice234842234843_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl229596229920_
                                                '0))))
                                        (let ((_tl229693229719_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice234842234843_
                                                  '1)))
                                              (_target229691229717_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice234842234843_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229693229719_))
                                              (___match235091235092_
                                               _e229598229915_
                                               _hd229597229918_
                                               _tl229596229920_
                                               ___splice234842234843_
                                               _target229691229717_
                                               _tl229693229719_)
                                              (let ()
                                                (declare (not safe))
                                                (_g229589229704_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229589229704_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl229596229920_))
                              (let ((___splice234842234843_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl229596229920_
                                        '0))))
                                (let ((_tl229693229719_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice234842234843_
                                          '1)))
                                      (_target229691229717_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice234842234843_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl229693229719_))
                                      (___match235091235092_
                                       _e229598229915_
                                       _hd229597229918_
                                       _tl229596229920_
                                       ___splice234842234843_
                                       _target229691229717_
                                       _tl229693229719_)
                                      (let ()
                                        (declare (not safe))
                                        (_g229589229704_)))))
                              (let ()
                                (declare (not safe))
                                (_g229589229704_))))))
                  (let () (declare (not safe)) (_g229589229704_))))))))
    (define gxc#current-compile-type-closure (make-parameter '#f))
    (define gxc#basic-expression-type-begin%
      (lambda (_stx229525_)
        (let* ((___stx235094235095_ _stx229525_)
               (_g229528229541_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx235094235095_)))))
          (let ((___kont235096235097_
                 (lambda (_L229569_)
                   (let () (declare (not safe)) (gxc#compile-e__0 _L229569_))))
                (___kont235098235099_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx235094235095_))
                (let ((_e229533229553_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx235094235095_))))
                  (let ((_tl229531229558_
                         (let () (declare (not safe)) (##cdr _e229533229553_)))
                        (_hd229532229556_
                         (let ()
                           (declare (not safe))
                           (##car _e229533229553_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl229531229558_))
                        (let ((_e229536229561_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl229531229558_))))
                          (let ((_tl229534229566_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e229536229561_)))
                                (_hd229535229564_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e229536229561_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl229534229566_))
                                (___kont235096235097_ _hd229535229564_)
                                (___kont235098235099_))))
                        (___kont235098235099_))))
                (___kont235098235099_))))))
    (define gxc#basic-expression-type-annotations
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_stx229405_)
        (let* ((_g229407229424_
                (lambda (_g229408229421_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229408229421_))))
               (_g229406229522_
                (lambda (_g229408229427_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229408229427_))
                      (let ((_e229413229429_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229408229427_))))
                        (let ((_hd229412229432_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229413229429_)))
                              (_tl229411229434_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229413229429_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229411229434_))
                              (let ((_e229416229437_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229411229434_))))
                                (let ((_hd229415229440_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229416229437_)))
                                      (_tl229414229442_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229416229437_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl229414229442_))
                                      (let ((_e229419229445_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl229414229442_))))
                                        (let ((_hd229418229448_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229419229445_)))
                                              (_tl229417229450_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229419229445_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229417229450_))
                                              ((lambda (_L229453_ _L229454_)
                                                 (let* ((___stx235116235117_
                                                         _L229454_)
                                                        (_g229470229481_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx235116235117_)))))
                                                   (let ((___kont235118235119_
                                                          (lambda (_L229501_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L229502_)
                    (let ((_$e229514_
                           (let ((__tmp236841
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _L229502_))))
                             (declare (not safe))
                             (hash-get
                              gxc#basic-expression-type-annotations
                              __tmp236841))))
                      (if _$e229514_
                          ((lambda (_type-e229517_)
                             (_type-e229517_ _stx229405_ _L229454_))
                           _$e229514_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _L229453_))))))
                 (___kont235120235121_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__0 _L229453_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((___match235127235128_
                                                            (lambda (_e229476229493_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd229475229496_
                             _tl229474229498_)
                      (let ((_L229501_ _tl229474229498_)
                            (_L229502_ _hd229475229496_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L229502_))
                            (___kont235118235119_ _L229501_ _L229502_)
                            (___kont235120235121_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? ___stx235116235117_))
                   (let ((_e229476229493_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e ___stx235116235117_))))
                     (let ((_tl229474229498_
                            (let ()
                              (declare (not safe))
                              (##cdr _e229476229493_)))
                           (_hd229475229496_
                            (let ()
                              (declare (not safe))
                              (##car _e229476229493_))))
                       (___match235127235128_
                        _e229476229493_
                        _hd229475229496_
                        _tl229474229498_)))
                   (___kont235120235121_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd229418229448_
                                               _hd229415229440_)
                                              (let ()
                                                (declare (not safe))
                                                (_g229407229424_
                                                 _g229408229427_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229407229424_ _g229408229427_)))))
                              (let ()
                                (declare (not safe))
                                (_g229407229424_ _g229408229427_)))))
                      (let ()
                        (declare (not safe))
                        (_g229407229424_ _g229408229427_))))))
          (declare (not safe))
          (_g229406229522_ _stx229405_))))
    (define gxc#basic-expression-type-annotation-mop.class
      (lambda (_stx229249_ _ann229250_)
        (let* ((_g229252229289_
                (lambda (_g229253229286_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229253229286_))))
               (_g229251229402_
                (lambda (_g229253229292_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229253229292_))
                      (let ((_e229263229294_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229253229292_))))
                        (let ((_hd229262229297_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229263229294_)))
                              (_tl229261229299_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229263229294_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229261229299_))
                              (let ((_e229266229302_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229261229299_))))
                                (let ((_hd229265229305_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229266229302_)))
                                      (_tl229264229307_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229266229302_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl229264229307_))
                                      (let ((_e229269229310_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl229264229307_))))
                                        (let ((_hd229268229313_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229269229310_)))
                                              (_tl229267229315_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229269229310_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl229267229315_))
                                              (let ((_e229272229318_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl229267229315_))))
                                                (let ((_hd229271229321_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e229272229318_)))
                                                      (_tl229270229323_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e229272229318_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl229270229323_))
                                                      (let ((_e229275229326_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl229270229323_))))
                (let ((_hd229274229329_
                       (let () (declare (not safe)) (##car _e229275229326_)))
                      (_tl229273229331_
                       (let () (declare (not safe)) (##cdr _e229275229326_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl229273229331_))
                      (let ((_e229278229334_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl229273229331_))))
                        (let ((_hd229277229337_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229278229334_)))
                              (_tl229276229339_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229278229334_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229276229339_))
                              (let ((_e229281229342_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229276229339_))))
                                (let ((_hd229280229345_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229281229342_)))
                                      (_tl229279229347_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229281229342_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl229279229347_))
                                      (let ((_e229284229350_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl229279229347_))))
                                        (let ((_hd229283229353_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229284229350_)))
                                              (_tl229282229355_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229284229350_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229282229355_))
                                              ((lambda (_L229358_
                                                        _L229359_
                                                        _L229360_
                                                        _L229361_
                                                        _L229362_
                                                        _L229363_
                                                        _L229364_)
                                                 (let ((_type-id229394_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L229364_)))
                                                       (_super229395_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gxc#identifier-symbol
                                                           _L229363_)))
                                                       (_slots229396_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gx#stx-e
                                                           _L229362_)))
                                                       (_ctor-method229397_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L229361_)))
                                                       (_struct?229398_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L229360_)))
                                                       (_final?229399_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L229359_)))
                                                       (_metaclass229400_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _L229358_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#identifier-symbol
                                                               _L229358_))
                                                            '#f)))
                                                   (let ((__obj236799
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
                                                      __obj236799
                                                      _type-id229394_
                                                      _super229395_
                                                      _slots229396_
                                                      _ctor-method229397_
                                                      _struct?229398_
                                                      _final?229399_
                                                      _metaclass229400_)
                                                     __obj236799)))
                                               _hd229283229353_
                                               _hd229280229345_
                                               _hd229277229337_
                                               _hd229274229329_
                                               _hd229271229321_
                                               _hd229268229313_
                                               _hd229265229305_)
                                              (let ()
                                                (declare (not safe))
                                                (_g229252229289_
                                                 _g229253229292_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229252229289_ _g229253229292_)))))
                              (let ()
                                (declare (not safe))
                                (_g229252229289_ _g229253229292_)))))
                      (let ()
                        (declare (not safe))
                        (_g229252229289_ _g229253229292_)))))
              (let ()
                (declare (not safe))
                (_g229252229289_ _g229253229292_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g229252229289_
                                                 _g229253229292_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229252229289_ _g229253229292_)))))
                              (let ()
                                (declare (not safe))
                                (_g229252229289_ _g229253229292_)))))
                      (let ()
                        (declare (not safe))
                        (_g229252229289_ _g229253229292_))))))
          (declare (not safe))
          (_g229251229402_ _ann229250_))))
    (define gxc#basic-expression-type-annotation-mop.constructor
      (lambda (_stx229197_ _ann229198_)
        (let* ((_g229200229213_
                (lambda (_g229201229210_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229201229210_))))
               (_g229199229246_
                (lambda (_g229201229216_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229201229216_))
                      (let ((_e229205229218_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229201229216_))))
                        (let ((_hd229204229221_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229205229218_)))
                              (_tl229203229223_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229205229218_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229203229223_))
                              (let ((_e229208229226_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229203229223_))))
                                (let ((_hd229207229229_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229208229226_)))
                                      (_tl229206229231_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229208229226_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl229206229231_))
                                      ((lambda (_L229234_)
                                         (let ((__tmp236842
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L229234_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!constructor::t
                                            __tmp236842)))
                                       _hd229207229229_)
                                      (let ()
                                        (declare (not safe))
                                        (_g229200229213_ _g229201229216_)))))
                              (let ()
                                (declare (not safe))
                                (_g229200229213_ _g229201229216_)))))
                      (let ()
                        (declare (not safe))
                        (_g229200229213_ _g229201229216_))))))
          (declare (not safe))
          (_g229199229246_ _ann229198_))))
    (define gxc#basic-expression-type-annotation-mop.predicate
      (lambda (_stx229145_ _ann229146_)
        (let* ((_g229148229161_
                (lambda (_g229149229158_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229149229158_))))
               (_g229147229194_
                (lambda (_g229149229164_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229149229164_))
                      (let ((_e229153229166_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229149229164_))))
                        (let ((_hd229152229169_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229153229166_)))
                              (_tl229151229171_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229153229166_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229151229171_))
                              (let ((_e229156229174_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229151229171_))))
                                (let ((_hd229155229177_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229156229174_)))
                                      (_tl229154229179_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229156229174_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl229154229179_))
                                      ((lambda (_L229182_)
                                         (let ((__tmp236843
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L229182_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!predicate::t
                                            __tmp236843)))
                                       _hd229155229177_)
                                      (let ()
                                        (declare (not safe))
                                        (_g229148229161_ _g229149229164_)))))
                              (let ()
                                (declare (not safe))
                                (_g229148229161_ _g229149229164_)))))
                      (let ()
                        (declare (not safe))
                        (_g229148229161_ _g229149229164_))))))
          (declare (not safe))
          (_g229147229194_ _ann229146_))))
    (define gxc#basic-expression-type-annotation-mop.accessor
      (lambda (_stx229061_ _ann229062_)
        (let* ((_g229064229085_
                (lambda (_g229065229082_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229065229082_))))
               (_g229063229142_
                (lambda (_g229065229088_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229065229088_))
                      (let ((_e229071229090_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229065229088_))))
                        (let ((_hd229070229093_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229071229090_)))
                              (_tl229069229095_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229071229090_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229069229095_))
                              (let ((_e229074229098_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229069229095_))))
                                (let ((_hd229073229101_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229074229098_)))
                                      (_tl229072229103_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229074229098_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl229072229103_))
                                      (let ((_e229077229106_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl229072229103_))))
                                        (let ((_hd229076229109_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229077229106_)))
                                              (_tl229075229111_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229077229106_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl229075229111_))
                                              (let ((_e229080229114_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl229075229111_))))
                                                (let ((_hd229079229117_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e229080229114_)))
                                                      (_tl229078229119_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e229080229114_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl229078229119_))
                                                      ((lambda (_L229122_
                                                                _L229123_
                                                                _L229124_)
                                                         (let ((__tmp236846
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L229124_)))
                       (__tmp236845
                        (let () (declare (not safe)) (gx#stx-e _L229123_)))
                       (__tmp236844
                        (let () (declare (not safe)) (gx#stx-e _L229122_))))
                   (declare (not safe))
                   (##structure
                    gxc#!accessor::t
                    __tmp236846
                    __tmp236845
                    __tmp236844)))
               _hd229079229117_
               _hd229076229109_
               _hd229073229101_)
              (let ()
                (declare (not safe))
                (_g229064229085_ _g229065229088_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g229064229085_
                                                 _g229065229088_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229064229085_ _g229065229088_)))))
                              (let ()
                                (declare (not safe))
                                (_g229064229085_ _g229065229088_)))))
                      (let ()
                        (declare (not safe))
                        (_g229064229085_ _g229065229088_))))))
          (declare (not safe))
          (_g229063229142_ _ann229062_))))
    (define gxc#basic-expression-type-annotation-mop.mutator
      (lambda (_stx228977_ _ann228978_)
        (let* ((_g228980229001_
                (lambda (_g228981228998_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g228981228998_))))
               (_g228979229058_
                (lambda (_g228981229004_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g228981229004_))
                      (let ((_e228987229006_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g228981229004_))))
                        (let ((_hd228986229009_
                               (let ()
                                 (declare (not safe))
                                 (##car _e228987229006_)))
                              (_tl228985229011_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e228987229006_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl228985229011_))
                              (let ((_e228990229014_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl228985229011_))))
                                (let ((_hd228989229017_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e228990229014_)))
                                      (_tl228988229019_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e228990229014_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl228988229019_))
                                      (let ((_e228993229022_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl228988229019_))))
                                        (let ((_hd228992229025_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e228993229022_)))
                                              (_tl228991229027_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e228993229022_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl228991229027_))
                                              (let ((_e228996229030_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl228991229027_))))
                                                (let ((_hd228995229033_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e228996229030_)))
                                                      (_tl228994229035_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e228996229030_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl228994229035_))
                                                      ((lambda (_L229038_
                                                                _L229039_
                                                                _L229040_)
                                                         (let ((__tmp236849
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L229040_)))
                       (__tmp236848
                        (let () (declare (not safe)) (gx#stx-e _L229039_)))
                       (__tmp236847
                        (let () (declare (not safe)) (gx#stx-e _L229038_))))
                   (declare (not safe))
                   (##structure
                    gxc#!mutator::t
                    __tmp236849
                    __tmp236848
                    __tmp236847)))
               _hd228995229033_
               _hd228992229025_
               _hd228989229017_)
              (let ()
                (declare (not safe))
                (_g228980229001_ _g228981229004_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g228980229001_
                                                 _g228981229004_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g228980229001_ _g228981229004_)))))
                              (let ()
                                (declare (not safe))
                                (_g228980229001_ _g228981229004_)))))
                      (let ()
                        (declare (not safe))
                        (_g228980229001_ _g228981229004_))))))
          (declare (not safe))
          (_g228979229058_ _ann228978_))))
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
      (lambda (_stx228097_)
        (let* ((___stx235130235131_ _stx228097_)
               (_g228103228299_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx235130235131_)))))
          (let ((___kont235132235133_
                 (lambda (_L228965_)
                   (let ((__obj236800
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj236800
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L228965_))
                      '#f)
                     __obj236800)))
                (___kont235134235135_
                 (lambda (_L228892_
                          _L228893_
                          _L228894_
                          _L228895_
                          _L228896_
                          _L228897_)
                   (let* ((_tab228947_
                           (let () (declare (not safe)) (gx#stx-e _L228894_)))
                          (_keys228949_
                           (if _tab228947_
                               (let ((__tmp236850 (vector->list _tab228947_)))
                                 (declare (not safe))
                                 (filter values __tmp236850))
                               '#f)))
                     (let ((__tmp236851
                            (let ()
                              (declare (not safe))
                              (gxc#identifier-symbol _L228893_))))
                       (declare (not safe))
                       (##structure
                        gxc#!kw-lambda::t
                        'kw-lambda
                        _keys228949_
                        __tmp236851)))))
                (___kont235136235137_
                 (lambda (_L228625_
                          _L228626_
                          _L228627_
                          _L228628_
                          _L228629_
                          _L228630_
                          _L228631_
                          _L228632_
                          _L228633_
                          _L228634_)
                   (let ((__tmp236853
                          (map gx#stx-e
                               (let ((__tmp236854
                                      (lambda (_g228727228730_ _g228728228732_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g228727228730_
                                                _g228728228732_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp236854 '() _L228627_))))
                         (__tmp236852
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L228631_))))
                     (declare (not safe))
                     (##structure
                      gxc#!kw-lambda-primary::t
                      'kw-lambda-dispatch
                      __tmp236853
                      __tmp236852))))
                (___kont235140235141_
                 (lambda (_L228335_)
                   (let ((__obj236801
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj236801
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L228335_))
                      (let ()
                        (declare (not safe))
                        (gxc#dispatch-lambda-form-delegate _L228335_)))
                     __obj236801)))
                (___kont235142235143_
                 (lambda (_L228312_)
                   (let ((__obj236802
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj236802
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L228312_))
                      '#f)
                     __obj236802))))
            (let* ((___match235449235450_
                    (lambda (_e228290228327_ _hd228289228330_ _tl228288228332_)
                      (let ((_L228335_ _tl228288228332_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#dispatch-lambda-form? _L228335_))
                            (___kont235140235141_ _L228335_)
                            (___kont235142235143_ _tl228288228332_)))))
                   (___match235443235444_
                    (lambda (_e228184228349_
                             _hd228183228352_
                             _tl228182228354_
                             _e228187228357_
                             _hd228186228360_
                             _tl228185228362_
                             _e228190228365_
                             _hd228189228368_
                             _tl228188228370_
                             _e228193228373_
                             _hd228192228376_
                             _tl228191228378_
                             _e228196228381_
                             _hd228195228384_
                             _tl228194228386_
                             _e228199228389_
                             _hd228198228392_
                             _tl228197228394_
                             _e228202228397_
                             _hd228201228400_
                             _tl228200228402_
                             _e228205228405_
                             _hd228204228408_
                             _tl228203228410_
                             _e228208228413_
                             _hd228207228416_
                             _tl228206228418_
                             _e228211228421_
                             _hd228210228424_
                             _tl228209228426_
                             _e228214228429_
                             _hd228213228432_
                             _tl228212228434_
                             _e228217228437_
                             _hd228216228440_
                             _tl228215228442_
                             _e228220228445_
                             _hd228219228448_
                             _tl228218228450_
                             _e228223228453_
                             _hd228222228456_
                             _tl228221228458_
                             ___splice235138235139_
                             _target228224228461_
                             _tl228226228463_
                             _e228241228466_
                             _hd228240228469_
                             _tl228239228471_
                             _e228244228474_
                             _hd228243228477_
                             _tl228242228479_
                             _e228247228482_
                             _hd228246228485_
                             _tl228245228487_)
                      (letrec ((_loop228227228490_
                                (lambda (_hd228225228493_
                                         _-absent-value228231228495_
                                         _key228232228497_
                                         _-xkwvar228233228499_
                                         _-hash-ref228234228501_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd228225228493_))
                                      (let ((_e228228228504_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd228225228493_))))
                                        (let ((_lp-tl228230228509_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e228228228504_)))
                                              (_lp-hd228229228507_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e228228228504_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _lp-hd228229228507_))
                                              (let ((_e228250228512_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _lp-hd228229228507_))))
                                                (let ((_tl228248228517_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e228250228512_)))
                                                      (_hd228249228515_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e228250228512_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd228249228515_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#call
                                                             _hd228249228515_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl228248228517_))
                      (let ((_e228253228520_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl228248228517_))))
                        (let ((_tl228251228525_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e228253228520_)))
                              (_hd228252228523_
                               (let ()
                                 (declare (not safe))
                                 (##car _e228253228520_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd228252228523_))
                              (let ((_e228256228528_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd228252228523_))))
                                (let ((_tl228254228533_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e228256228528_)))
                                      (_hd228255228531_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e228256228528_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd228255228531_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd228255228531_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl228254228533_))
                                              (let ((_e228259228536_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl228254228533_))))
                                                (let ((_tl228257228541_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e228259228536_)))
                                                      (_hd228258228539_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e228259228536_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl228257228541_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl228251228525_))
                                                          (let ((_e228262228544_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl228251228525_))))
                    (let ((_tl228260228549_
                           (let ()
                             (declare (not safe))
                             (##cdr _e228262228544_)))
                          (_hd228261228547_
                           (let ()
                             (declare (not safe))
                             (##car _e228262228544_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd228261228547_))
                          (let ((_e228265228552_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd228261228547_))))
                            (let ((_tl228263228557_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e228265228552_)))
                                  (_hd228264228555_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e228265228552_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd228264228555_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd228264228555_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl228263228557_))
                                          (let ((_e228268228560_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl228263228557_))))
                                            (let ((_tl228266228565_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e228268228560_)))
                                                  (_hd228267228563_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e228268228560_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl228266228565_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl228260228549_))
                                                      (let ((_e228271228568_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl228260228549_))))
                (let ((_tl228269228573_
                       (let () (declare (not safe)) (##cdr _e228271228568_)))
                      (_hd228270228571_
                       (let () (declare (not safe)) (##car _e228271228568_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd228270228571_))
                      (let ((_e228274228576_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd228270228571_))))
                        (let ((_tl228272228581_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e228274228576_)))
                              (_hd228273228579_
                               (let ()
                                 (declare (not safe))
                                 (##car _e228274228576_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd228273228579_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#quote _hd228273228579_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl228272228581_))
                                      (let ((_e228277228584_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl228272228581_))))
                                        (let ((_tl228275228589_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e228277228584_)))
                                              (_hd228276228587_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e228277228584_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl228275228589_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl228269228573_))
                                                  (let ((_e228280228592_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl228269228573_))))
                                                    (let ((_tl228278228597_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e228280228592_)))
                                                          (_hd228279228595_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e228280228592_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd228279228595_))
                                                          (let ((_e228283228600_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd228279228595_))))
                    (let ((_tl228281228605_
                           (let ()
                             (declare (not safe))
                             (##cdr _e228283228600_)))
                          (_hd228282228603_
                           (let ()
                             (declare (not safe))
                             (##car _e228283228600_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd228282228603_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd228282228603_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl228281228605_))
                                  (let ((_e228286228608_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl228281228605_))))
                                    (let ((_tl228284228613_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e228286228608_)))
                                          (_hd228285228611_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e228286228608_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl228284228613_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl228278228597_))
                                              (let ((__tmp236869
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd228285228611_
                                                             _-absent-value228231228495_)))
                                                    (__tmp236868
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd228276228587_
                                                             _key228232228497_)))
                                                    (__tmp236867
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd228267228563_
                                                             _-xkwvar228233228499_)))
                                                    (__tmp236866
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd228258228539_
                                                             _-hash-ref228234228501_))))
                                                (declare (not safe))
                                                (_loop228227228490_
                                                 _lp-tl228230228509_
                                                 __tmp236869
                                                 __tmp236868
                                                 __tmp236867
                                                 __tmp236866))
                                              (___match235449235450_
                                               _e228184228349_
                                               _hd228183228352_
                                               _tl228182228354_))
                                          (___match235449235450_
                                           _e228184228349_
                                           _hd228183228352_
                                           _tl228182228354_))))
                                  (___match235449235450_
                                   _e228184228349_
                                   _hd228183228352_
                                   _tl228182228354_))
                              (___match235449235450_
                               _e228184228349_
                               _hd228183228352_
                               _tl228182228354_))
                          (___match235449235450_
                           _e228184228349_
                           _hd228183228352_
                           _tl228182228354_))))
                  (___match235449235450_
                   _e228184228349_
                   _hd228183228352_
                   _tl228182228354_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match235449235450_
                                                   _e228184228349_
                                                   _hd228183228352_
                                                   _tl228182228354_))
                                              (___match235449235450_
                                               _e228184228349_
                                               _hd228183228352_
                                               _tl228182228354_))))
                                      (___match235449235450_
                                       _e228184228349_
                                       _hd228183228352_
                                       _tl228182228354_))
                                  (___match235449235450_
                                   _e228184228349_
                                   _hd228183228352_
                                   _tl228182228354_))
                              (___match235449235450_
                               _e228184228349_
                               _hd228183228352_
                               _tl228182228354_))))
                      (___match235449235450_
                       _e228184228349_
                       _hd228183228352_
                       _tl228182228354_))))
              (___match235449235450_
               _e228184228349_
               _hd228183228352_
               _tl228182228354_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match235449235450_
                                                   _e228184228349_
                                                   _hd228183228352_
                                                   _tl228182228354_))))
                                          (___match235449235450_
                                           _e228184228349_
                                           _hd228183228352_
                                           _tl228182228354_))
                                      (___match235449235450_
                                       _e228184228349_
                                       _hd228183228352_
                                       _tl228182228354_))
                                  (___match235449235450_
                                   _e228184228349_
                                   _hd228183228352_
                                   _tl228182228354_))))
                          (___match235449235450_
                           _e228184228349_
                           _hd228183228352_
                           _tl228182228354_))))
                  (___match235449235450_
                   _e228184228349_
                   _hd228183228352_
                   _tl228182228354_))
              (___match235449235450_
               _e228184228349_
               _hd228183228352_
               _tl228182228354_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match235449235450_
                                               _e228184228349_
                                               _hd228183228352_
                                               _tl228182228354_))
                                          (___match235449235450_
                                           _e228184228349_
                                           _hd228183228352_
                                           _tl228182228354_))
                                      (___match235449235450_
                                       _e228184228349_
                                       _hd228183228352_
                                       _tl228182228354_))))
                              (___match235449235450_
                               _e228184228349_
                               _hd228183228352_
                               _tl228182228354_))))
                      (___match235449235450_
                       _e228184228349_
                       _hd228183228352_
                       _tl228182228354_))
                  (___match235449235450_
                   _e228184228349_
                   _hd228183228352_
                   _tl228182228354_))
              (___match235449235450_
               _e228184228349_
               _hd228183228352_
               _tl228182228354_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match235449235450_
                                               _e228184228349_
                                               _hd228183228352_
                                               _tl228182228354_))))
                                      (let ((_-hash-ref228238228622_
                                             (reverse _-hash-ref228234228501_))
                                            (_-xkwvar228237228620_
                                             (reverse _-xkwvar228233228499_))
                                            (_key228236228618_
                                             (reverse _key228232228497_))
                                            (_-absent-value228235228616_
                                             (reverse _-absent-value228231228495_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl228191228378_))
                                            (let ((_L228625_ _hd228246228485_)
                                                  (_L228626_
                                                   _-absent-value228235228616_)
                                                  (_L228627_ _key228236228618_)
                                                  (_L228628_
                                                   _-xkwvar228237228620_)
                                                  (_L228629_
                                                   _-hash-ref228238228622_)
                                                  (_L228630_ _hd228222228456_)
                                                  (_L228631_ _hd228213228432_)
                                                  (_L228632_ _hd228204228408_)
                                                  (_L228633_ _tl228188228370_)
                                                  (_L228634_ _hd228189228368_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L228634_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L228633_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#runtime-identifier=?
                                                          _L228632_
                                                          'apply))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#free-identifier=?
                                                          _L228634_
                                                          _L228630_))
                                                       (let ((__tmp236864
                                                              (let ((__tmp236865
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g228687228690_ _g228688228692_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g228687228690_ _g228688228692_)))))
                        (declare (not safe))
                        (foldr1 __tmp236865 '() _L228627_))))
                 (declare (not safe))
                 (andmap1 gx#stx-keyword? __tmp236864))
               (let ((__tmp236863
                      (lambda (_g228694228696_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g228694228696_
                           'hash-ref))))
                     (__tmp236861
                      (let ((__tmp236862
                             (lambda (_g228698228701_ _g228699228703_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g228698228701_ _g228699228703_)))))
                        (declare (not safe))
                        (foldr1 __tmp236862 '() _L228629_))))
                 (declare (not safe))
                 (andmap1 __tmp236863 __tmp236861))
               (let ((__tmp236860
                      (lambda (_g228705228707_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g228705228707_
                           'absent-value))))
                     (__tmp236858
                      (let ((__tmp236859
                             (lambda (_g228709228712_ _g228710228714_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g228709228712_ _g228710228714_)))))
                        (declare (not safe))
                        (foldr1 __tmp236859 '() _L228626_))))
                 (declare (not safe))
                 (andmap1 __tmp236860 __tmp236858))
               (let ((__tmp236857
                      (lambda (_g228716228718_)
                        (let ()
                          (declare (not safe))
                          (gx#free-identifier=? _g228716228718_ _L228634_))))
                     (__tmp236855
                      (let ((__tmp236856
                             (lambda (_g228720228723_ _g228721228725_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g228720228723_ _g228721228725_)))))
                        (declare (not safe))
                        (foldr1 __tmp236856 '() _L228628_))))
                 (declare (not safe))
                 (andmap1 __tmp236857 __tmp236855)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont235136235137_
                                                   _L228625_
                                                   _L228626_
                                                   _L228627_
                                                   _L228628_
                                                   _L228629_
                                                   _L228630_
                                                   _L228631_
                                                   _L228632_
                                                   _L228633_
                                                   _L228634_)
                                                  (___match235449235450_
                                                   _e228184228349_
                                                   _hd228183228352_
                                                   _tl228182228354_)))
                                            (___match235449235450_
                                             _e228184228349_
                                             _hd228183228352_
                                             _tl228182228354_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop228227228490_
                           _target228224228461_
                           '()
                           '()
                           '()
                           '())))))
                   (___match235315235316_
                    (lambda (_e228184228349_
                             _hd228183228352_
                             _tl228182228354_
                             _e228187228357_
                             _hd228186228360_
                             _tl228185228362_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd228186228360_))
                          (let ((_e228190228365_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd228186228360_))))
                            (let ((_tl228188228370_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e228190228365_)))
                                  (_hd228189228368_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e228190228365_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl228185228362_))
                                  (let ((_e228193228373_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl228185228362_))))
                                    (let ((_tl228191228378_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e228193228373_)))
                                          (_hd228192228376_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e228193228373_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd228192228376_))
                                          (let ((_e228196228381_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd228192228376_))))
                                            (let ((_tl228194228386_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e228196228381_)))
                                                  (_hd228195228384_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e228196228381_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd228195228384_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd228195228384_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl228194228386_))
                                                          (let ((_e228199228389_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl228194228386_))))
                    (let ((_tl228197228394_
                           (let ()
                             (declare (not safe))
                             (##cdr _e228199228389_)))
                          (_hd228198228392_
                           (let ()
                             (declare (not safe))
                             (##car _e228199228389_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd228198228392_))
                          (let ((_e228202228397_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd228198228392_))))
                            (let ((_tl228200228402_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e228202228397_)))
                                  (_hd228201228400_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e228202228397_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd228201228400_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd228201228400_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl228200228402_))
                                          (let ((_e228205228405_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl228200228402_))))
                                            (let ((_tl228203228410_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e228205228405_)))
                                                  (_hd228204228408_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e228205228405_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl228203228410_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl228197228394_))
                                                      (let ((_e228208228413_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl228197228394_))))
                (let ((_tl228206228418_
                       (let () (declare (not safe)) (##cdr _e228208228413_)))
                      (_hd228207228416_
                       (let () (declare (not safe)) (##car _e228208228413_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd228207228416_))
                      (let ((_e228211228421_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd228207228416_))))
                        (let ((_tl228209228426_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e228211228421_)))
                              (_hd228210228424_
                               (let ()
                                 (declare (not safe))
                                 (##car _e228211228421_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd228210228424_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd228210228424_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl228209228426_))
                                      (let ((_e228214228429_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl228209228426_))))
                                        (let ((_tl228212228434_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e228214228429_)))
                                              (_hd228213228432_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e228214228429_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl228212228434_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl228206228418_))
                                                  (let ((_e228217228437_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl228206228418_))))
                                                    (let ((_tl228215228442_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e228217228437_)))
                                                          (_hd228216228440_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e228217228437_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd228216228440_))
                                                          (let ((_e228220228445_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd228216228440_))))
                    (let ((_tl228218228450_
                           (let ()
                             (declare (not safe))
                             (##cdr _e228220228445_)))
                          (_hd228219228448_
                           (let ()
                             (declare (not safe))
                             (##car _e228220228445_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd228219228448_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd228219228448_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl228218228450_))
                                  (let ((_e228223228453_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl228218228450_))))
                                    (let ((_tl228221228458_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e228223228453_)))
                                          (_hd228222228456_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e228223228453_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl228221228458_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl228215228442_))
                                              (if (fx>= (let ()
                                                          (declare (not safe))
                                                          (gx#stx-length
                                                           _tl228215228442_))
                                                        '1)
                                                  (let ((___splice235138235139_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl228215228442_
                                                            '1))))
                                                    (let ((_tl228226228463_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice235138235139_
                                                              '1)))
                                                          (_target228224228461_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice235138235139_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl228226228463_))
                                                          (let ((_e228241228466_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl228226228463_))))
                    (let ((_tl228239228471_
                           (let ()
                             (declare (not safe))
                             (##cdr _e228241228466_)))
                          (_hd228240228469_
                           (let ()
                             (declare (not safe))
                             (##car _e228241228466_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd228240228469_))
                          (let ((_e228244228474_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd228240228469_))))
                            (let ((_tl228242228479_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e228244228474_)))
                                  (_hd228243228477_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e228244228474_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd228243228477_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd228243228477_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl228242228479_))
                                          (let ((_e228247228482_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl228242228479_))))
                                            (let ((_tl228245228487_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e228247228482_)))
                                                  (_hd228246228485_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e228247228482_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl228245228487_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl228239228471_))
                                                      (___match235443235444_
                                                       _e228184228349_
                                                       _hd228183228352_
                                                       _tl228182228354_
                                                       _e228187228357_
                                                       _hd228186228360_
                                                       _tl228185228362_
                                                       _e228190228365_
                                                       _hd228189228368_
                                                       _tl228188228370_
                                                       _e228193228373_
                                                       _hd228192228376_
                                                       _tl228191228378_
                                                       _e228196228381_
                                                       _hd228195228384_
                                                       _tl228194228386_
                                                       _e228199228389_
                                                       _hd228198228392_
                                                       _tl228197228394_
                                                       _e228202228397_
                                                       _hd228201228400_
                                                       _tl228200228402_
                                                       _e228205228405_
                                                       _hd228204228408_
                                                       _tl228203228410_
                                                       _e228208228413_
                                                       _hd228207228416_
                                                       _tl228206228418_
                                                       _e228211228421_
                                                       _hd228210228424_
                                                       _tl228209228426_
                                                       _e228214228429_
                                                       _hd228213228432_
                                                       _tl228212228434_
                                                       _e228217228437_
                                                       _hd228216228440_
                                                       _tl228215228442_
                                                       _e228220228445_
                                                       _hd228219228448_
                                                       _tl228218228450_
                                                       _e228223228453_
                                                       _hd228222228456_
                                                       _tl228221228458_
                                                       ___splice235138235139_
                                                       _target228224228461_
                                                       _tl228226228463_
                                                       _e228241228466_
                                                       _hd228240228469_
                                                       _tl228239228471_
                                                       _e228244228474_
                                                       _hd228243228477_
                                                       _tl228242228479_
                                                       _e228247228482_
                                                       _hd228246228485_
                                                       _tl228245228487_)
                                                      (___match235449235450_
                                                       _e228184228349_
                                                       _hd228183228352_
                                                       _tl228182228354_))
                                                  (___match235449235450_
                                                   _e228184228349_
                                                   _hd228183228352_
                                                   _tl228182228354_))))
                                          (___match235449235450_
                                           _e228184228349_
                                           _hd228183228352_
                                           _tl228182228354_))
                                      (___match235449235450_
                                       _e228184228349_
                                       _hd228183228352_
                                       _tl228182228354_))
                                  (___match235449235450_
                                   _e228184228349_
                                   _hd228183228352_
                                   _tl228182228354_))))
                          (___match235449235450_
                           _e228184228349_
                           _hd228183228352_
                           _tl228182228354_))))
                  (___match235449235450_
                   _e228184228349_
                   _hd228183228352_
                   _tl228182228354_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match235449235450_
                                                   _e228184228349_
                                                   _hd228183228352_
                                                   _tl228182228354_))
                                              (___match235449235450_
                                               _e228184228349_
                                               _hd228183228352_
                                               _tl228182228354_))
                                          (___match235449235450_
                                           _e228184228349_
                                           _hd228183228352_
                                           _tl228182228354_))))
                                  (___match235449235450_
                                   _e228184228349_
                                   _hd228183228352_
                                   _tl228182228354_))
                              (___match235449235450_
                               _e228184228349_
                               _hd228183228352_
                               _tl228182228354_))
                          (___match235449235450_
                           _e228184228349_
                           _hd228183228352_
                           _tl228182228354_))))
                  (___match235449235450_
                   _e228184228349_
                   _hd228183228352_
                   _tl228182228354_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match235449235450_
                                                   _e228184228349_
                                                   _hd228183228352_
                                                   _tl228182228354_))
                                              (___match235449235450_
                                               _e228184228349_
                                               _hd228183228352_
                                               _tl228182228354_))))
                                      (___match235449235450_
                                       _e228184228349_
                                       _hd228183228352_
                                       _tl228182228354_))
                                  (___match235449235450_
                                   _e228184228349_
                                   _hd228183228352_
                                   _tl228182228354_))
                              (___match235449235450_
                               _e228184228349_
                               _hd228183228352_
                               _tl228182228354_))))
                      (___match235449235450_
                       _e228184228349_
                       _hd228183228352_
                       _tl228182228354_))))
              (___match235449235450_
               _e228184228349_
               _hd228183228352_
               _tl228182228354_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match235449235450_
                                                   _e228184228349_
                                                   _hd228183228352_
                                                   _tl228182228354_))))
                                          (___match235449235450_
                                           _e228184228349_
                                           _hd228183228352_
                                           _tl228182228354_))
                                      (___match235449235450_
                                       _e228184228349_
                                       _hd228183228352_
                                       _tl228182228354_))
                                  (___match235449235450_
                                   _e228184228349_
                                   _hd228183228352_
                                   _tl228182228354_))))
                          (___match235449235450_
                           _e228184228349_
                           _hd228183228352_
                           _tl228182228354_))))
                  (___match235449235450_
                   _e228184228349_
                   _hd228183228352_
                   _tl228182228354_))
              (___match235449235450_
               _e228184228349_
               _hd228183228352_
               _tl228182228354_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match235449235450_
                                                   _e228184228349_
                                                   _hd228183228352_
                                                   _tl228182228354_))))
                                          (___match235449235450_
                                           _e228184228349_
                                           _hd228183228352_
                                           _tl228182228354_))))
                                  (___match235449235450_
                                   _e228184228349_
                                   _hd228183228352_
                                   _tl228182228354_))))
                          (___match235449235450_
                           _e228184228349_
                           _hd228183228352_
                           _tl228182228354_))))
                   (___match235303235304_
                    (lambda (_e228117228740_
                             _hd228116228743_
                             _tl228115228745_
                             _e228120228748_
                             _hd228119228751_
                             _tl228118228753_
                             _e228123228756_
                             _hd228122228759_
                             _tl228121228761_
                             _e228126228764_
                             _hd228125228767_
                             _tl228124228769_
                             _e228129228772_
                             _hd228128228775_
                             _tl228127228777_
                             _e228132228780_
                             _hd228131228783_
                             _tl228130228785_
                             _e228135228788_
                             _hd228134228791_
                             _tl228133228793_
                             _e228138228796_
                             _hd228137228799_
                             _tl228136228801_
                             _e228141228804_
                             _hd228140228807_
                             _tl228139228809_
                             _e228144228812_
                             _hd228143228815_
                             _tl228142228817_
                             _e228147228820_
                             _hd228146228823_
                             _tl228145228825_
                             _e228150228828_
                             _hd228149228831_
                             _tl228148228833_
                             _e228153228836_
                             _hd228152228839_
                             _tl228151228841_
                             _e228156228844_
                             _hd228155228847_
                             _tl228154228849_
                             _e228159228852_
                             _hd228158228855_
                             _tl228157228857_
                             _e228162228860_
                             _hd228161228863_
                             _tl228160228865_
                             _e228165228868_
                             _hd228164228871_
                             _tl228163228873_
                             _e228168228876_
                             _hd228167228879_
                             _tl228166228881_
                             _e228171228884_
                             _hd228170228887_
                             _tl228169228889_)
                      (let ((_L228892_ _hd228170228887_)
                            (_L228893_ _hd228161228863_)
                            (_L228894_ _hd228152228839_)
                            (_L228895_ _hd228143228815_)
                            (_L228896_ _hd228134228791_)
                            (_L228897_ _hd228119228751_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L228897_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L228896_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _L228895_
                                    'keyword-dispatch))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L228897_ _L228892_)))
                            (___kont235134235135_
                             _L228892_
                             _L228893_
                             _L228894_
                             _L228895_
                             _L228896_
                             _L228897_)
                            (___match235315235316_
                             _e228117228740_
                             _hd228116228743_
                             _tl228115228745_
                             _e228120228748_
                             _hd228119228751_
                             _tl228118228753_)))))
                   (___match235157235158_
                    (lambda (_e228117228740_ _hd228116228743_ _tl228115228745_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl228115228745_))
                          (let ((_e228120228748_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl228115228745_))))
                            (let ((_tl228118228753_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e228120228748_)))
                                  (_hd228119228751_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e228120228748_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl228118228753_))
                                  (let ((_e228123228756_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl228118228753_))))
                                    (let ((_tl228121228761_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e228123228756_)))
                                          (_hd228122228759_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e228123228756_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd228122228759_))
                                          (let ((_e228126228764_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd228122228759_))))
                                            (let ((_tl228124228769_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e228126228764_)))
                                                  (_hd228125228767_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e228126228764_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd228125228767_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd228125228767_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl228124228769_))
                                                          (let ((_e228129228772_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl228124228769_))))
                    (let ((_tl228127228777_
                           (let ()
                             (declare (not safe))
                             (##cdr _e228129228772_)))
                          (_hd228128228775_
                           (let ()
                             (declare (not safe))
                             (##car _e228129228772_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd228128228775_))
                          (let ((_e228132228780_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd228128228775_))))
                            (let ((_tl228130228785_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e228132228780_)))
                                  (_hd228131228783_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e228132228780_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd228131228783_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd228131228783_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl228130228785_))
                                          (let ((_e228135228788_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl228130228785_))))
                                            (let ((_tl228133228793_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e228135228788_)))
                                                  (_hd228134228791_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e228135228788_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl228133228793_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl228127228777_))
                                                      (let ((_e228138228796_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl228127228777_))))
                (let ((_tl228136228801_
                       (let () (declare (not safe)) (##cdr _e228138228796_)))
                      (_hd228137228799_
                       (let () (declare (not safe)) (##car _e228138228796_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd228137228799_))
                      (let ((_e228141228804_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd228137228799_))))
                        (let ((_tl228139228809_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e228141228804_)))
                              (_hd228140228807_
                               (let ()
                                 (declare (not safe))
                                 (##car _e228141228804_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd228140228807_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd228140228807_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl228139228809_))
                                      (let ((_e228144228812_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl228139228809_))))
                                        (let ((_tl228142228817_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e228144228812_)))
                                              (_hd228143228815_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e228144228812_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl228142228817_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl228136228801_))
                                                  (let ((_e228147228820_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl228136228801_))))
                                                    (let ((_tl228145228825_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e228147228820_)))
                                                          (_hd228146228823_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e228147228820_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd228146228823_))
                                                          (let ((_e228150228828_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd228146228823_))))
                    (let ((_tl228148228833_
                           (let ()
                             (declare (not safe))
                             (##cdr _e228150228828_)))
                          (_hd228149228831_
                           (let ()
                             (declare (not safe))
                             (##car _e228150228828_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd228149228831_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd228149228831_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl228148228833_))
                                  (let ((_e228153228836_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl228148228833_))))
                                    (let ((_tl228151228841_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e228153228836_)))
                                          (_hd228152228839_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e228153228836_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl228151228841_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl228145228825_))
                                              (let ((_e228156228844_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl228145228825_))))
                                                (let ((_tl228154228849_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e228156228844_)))
                                                      (_hd228155228847_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e228156228844_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd228155228847_))
                                                      (let ((_e228159228852_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd228155228847_))))
                (let ((_tl228157228857_
                       (let () (declare (not safe)) (##cdr _e228159228852_)))
                      (_hd228158228855_
                       (let () (declare (not safe)) (##car _e228159228852_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd228158228855_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd228158228855_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl228157228857_))
                              (let ((_e228162228860_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl228157228857_))))
                                (let ((_tl228160228865_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e228162228860_)))
                                      (_hd228161228863_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e228162228860_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl228160228865_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl228154228849_))
                                          (let ((_e228165228868_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl228154228849_))))
                                            (let ((_tl228163228873_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e228165228868_)))
                                                  (_hd228164228871_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e228165228868_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd228164228871_))
                                                  (let ((_e228168228876_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd228164228871_))))
                                                    (let ((_tl228166228881_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e228168228876_)))
                                                          (_hd228167228879_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e228168228876_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd228167228879_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _hd228167228879_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl228166228881_))
                          (let ((_e228171228884_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl228166228881_))))
                            (let ((_tl228169228889_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e228171228884_)))
                                  (_hd228170228887_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e228171228884_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl228169228889_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl228163228873_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl228121228761_))
                                          (___match235303235304_
                                           _e228117228740_
                                           _hd228116228743_
                                           _tl228115228745_
                                           _e228120228748_
                                           _hd228119228751_
                                           _tl228118228753_
                                           _e228123228756_
                                           _hd228122228759_
                                           _tl228121228761_
                                           _e228126228764_
                                           _hd228125228767_
                                           _tl228124228769_
                                           _e228129228772_
                                           _hd228128228775_
                                           _tl228127228777_
                                           _e228132228780_
                                           _hd228131228783_
                                           _tl228130228785_
                                           _e228135228788_
                                           _hd228134228791_
                                           _tl228133228793_
                                           _e228138228796_
                                           _hd228137228799_
                                           _tl228136228801_
                                           _e228141228804_
                                           _hd228140228807_
                                           _tl228139228809_
                                           _e228144228812_
                                           _hd228143228815_
                                           _tl228142228817_
                                           _e228147228820_
                                           _hd228146228823_
                                           _tl228145228825_
                                           _e228150228828_
                                           _hd228149228831_
                                           _tl228148228833_
                                           _e228153228836_
                                           _hd228152228839_
                                           _tl228151228841_
                                           _e228156228844_
                                           _hd228155228847_
                                           _tl228154228849_
                                           _e228159228852_
                                           _hd228158228855_
                                           _tl228157228857_
                                           _e228162228860_
                                           _hd228161228863_
                                           _tl228160228865_
                                           _e228165228868_
                                           _hd228164228871_
                                           _tl228163228873_
                                           _e228168228876_
                                           _hd228167228879_
                                           _tl228166228881_
                                           _e228171228884_
                                           _hd228170228887_
                                           _tl228169228889_)
                                          (___match235315235316_
                                           _e228117228740_
                                           _hd228116228743_
                                           _tl228115228745_
                                           _e228120228748_
                                           _hd228119228751_
                                           _tl228118228753_))
                                      (___match235315235316_
                                       _e228117228740_
                                       _hd228116228743_
                                       _tl228115228745_
                                       _e228120228748_
                                       _hd228119228751_
                                       _tl228118228753_))
                                  (___match235315235316_
                                   _e228117228740_
                                   _hd228116228743_
                                   _tl228115228745_
                                   _e228120228748_
                                   _hd228119228751_
                                   _tl228118228753_))))
                          (___match235315235316_
                           _e228117228740_
                           _hd228116228743_
                           _tl228115228745_
                           _e228120228748_
                           _hd228119228751_
                           _tl228118228753_))
                      (___match235315235316_
                       _e228117228740_
                       _hd228116228743_
                       _tl228115228745_
                       _e228120228748_
                       _hd228119228751_
                       _tl228118228753_))
                  (___match235315235316_
                   _e228117228740_
                   _hd228116228743_
                   _tl228115228745_
                   _e228120228748_
                   _hd228119228751_
                   _tl228118228753_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match235315235316_
                                                   _e228117228740_
                                                   _hd228116228743_
                                                   _tl228115228745_
                                                   _e228120228748_
                                                   _hd228119228751_
                                                   _tl228118228753_))))
                                          (___match235315235316_
                                           _e228117228740_
                                           _hd228116228743_
                                           _tl228115228745_
                                           _e228120228748_
                                           _hd228119228751_
                                           _tl228118228753_))
                                      (___match235315235316_
                                       _e228117228740_
                                       _hd228116228743_
                                       _tl228115228745_
                                       _e228120228748_
                                       _hd228119228751_
                                       _tl228118228753_))))
                              (___match235315235316_
                               _e228117228740_
                               _hd228116228743_
                               _tl228115228745_
                               _e228120228748_
                               _hd228119228751_
                               _tl228118228753_))
                          (___match235315235316_
                           _e228117228740_
                           _hd228116228743_
                           _tl228115228745_
                           _e228120228748_
                           _hd228119228751_
                           _tl228118228753_))
                      (___match235315235316_
                       _e228117228740_
                       _hd228116228743_
                       _tl228115228745_
                       _e228120228748_
                       _hd228119228751_
                       _tl228118228753_))))
              (___match235315235316_
               _e228117228740_
               _hd228116228743_
               _tl228115228745_
               _e228120228748_
               _hd228119228751_
               _tl228118228753_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match235315235316_
                                               _e228117228740_
                                               _hd228116228743_
                                               _tl228115228745_
                                               _e228120228748_
                                               _hd228119228751_
                                               _tl228118228753_))
                                          (___match235315235316_
                                           _e228117228740_
                                           _hd228116228743_
                                           _tl228115228745_
                                           _e228120228748_
                                           _hd228119228751_
                                           _tl228118228753_))))
                                  (___match235315235316_
                                   _e228117228740_
                                   _hd228116228743_
                                   _tl228115228745_
                                   _e228120228748_
                                   _hd228119228751_
                                   _tl228118228753_))
                              (___match235315235316_
                               _e228117228740_
                               _hd228116228743_
                               _tl228115228745_
                               _e228120228748_
                               _hd228119228751_
                               _tl228118228753_))
                          (___match235315235316_
                           _e228117228740_
                           _hd228116228743_
                           _tl228115228745_
                           _e228120228748_
                           _hd228119228751_
                           _tl228118228753_))))
                  (___match235315235316_
                   _e228117228740_
                   _hd228116228743_
                   _tl228115228745_
                   _e228120228748_
                   _hd228119228751_
                   _tl228118228753_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match235315235316_
                                                   _e228117228740_
                                                   _hd228116228743_
                                                   _tl228115228745_
                                                   _e228120228748_
                                                   _hd228119228751_
                                                   _tl228118228753_))
                                              (___match235315235316_
                                               _e228117228740_
                                               _hd228116228743_
                                               _tl228115228745_
                                               _e228120228748_
                                               _hd228119228751_
                                               _tl228118228753_))))
                                      (___match235315235316_
                                       _e228117228740_
                                       _hd228116228743_
                                       _tl228115228745_
                                       _e228120228748_
                                       _hd228119228751_
                                       _tl228118228753_))
                                  (___match235315235316_
                                   _e228117228740_
                                   _hd228116228743_
                                   _tl228115228745_
                                   _e228120228748_
                                   _hd228119228751_
                                   _tl228118228753_))
                              (___match235315235316_
                               _e228117228740_
                               _hd228116228743_
                               _tl228115228745_
                               _e228120228748_
                               _hd228119228751_
                               _tl228118228753_))))
                      (___match235315235316_
                       _e228117228740_
                       _hd228116228743_
                       _tl228115228745_
                       _e228120228748_
                       _hd228119228751_
                       _tl228118228753_))))
              (___match235315235316_
               _e228117228740_
               _hd228116228743_
               _tl228115228745_
               _e228120228748_
               _hd228119228751_
               _tl228118228753_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match235315235316_
                                                   _e228117228740_
                                                   _hd228116228743_
                                                   _tl228115228745_
                                                   _e228120228748_
                                                   _hd228119228751_
                                                   _tl228118228753_))))
                                          (___match235315235316_
                                           _e228117228740_
                                           _hd228116228743_
                                           _tl228115228745_
                                           _e228120228748_
                                           _hd228119228751_
                                           _tl228118228753_))
                                      (___match235315235316_
                                       _e228117228740_
                                       _hd228116228743_
                                       _tl228115228745_
                                       _e228120228748_
                                       _hd228119228751_
                                       _tl228118228753_))
                                  (___match235315235316_
                                   _e228117228740_
                                   _hd228116228743_
                                   _tl228115228745_
                                   _e228120228748_
                                   _hd228119228751_
                                   _tl228118228753_))))
                          (___match235315235316_
                           _e228117228740_
                           _hd228116228743_
                           _tl228115228745_
                           _e228120228748_
                           _hd228119228751_
                           _tl228118228753_))))
                  (___match235315235316_
                   _e228117228740_
                   _hd228116228743_
                   _tl228115228745_
                   _e228120228748_
                   _hd228119228751_
                   _tl228118228753_))
              (___match235315235316_
               _e228117228740_
               _hd228116228743_
               _tl228115228745_
               _e228120228748_
               _hd228119228751_
               _tl228118228753_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match235315235316_
                                                   _e228117228740_
                                                   _hd228116228743_
                                                   _tl228115228745_
                                                   _e228120228748_
                                                   _hd228119228751_
                                                   _tl228118228753_))))
                                          (___match235315235316_
                                           _e228117228740_
                                           _hd228116228743_
                                           _tl228115228745_
                                           _e228120228748_
                                           _hd228119228751_
                                           _tl228118228753_))))
                                  (___match235315235316_
                                   _e228117228740_
                                   _hd228116228743_
                                   _tl228115228745_
                                   _e228120228748_
                                   _hd228119228751_
                                   _tl228118228753_))))
                          (___match235449235450_
                           _e228117228740_
                           _hd228116228743_
                           _tl228115228745_)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx235130235131_))
                  (let ((_e228108228957_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx235130235131_))))
                    (let ((_tl228106228962_
                           (let ()
                             (declare (not safe))
                             (##cdr _e228108228957_)))
                          (_hd228107228960_
                           (let ()
                             (declare (not safe))
                             (##car _e228108228957_))))
                      (if (gxc#current-compile-type-closure)
                          (let ((_L228965_ _tl228106228962_))
                            (___kont235132235133_ _L228965_))
                          (___match235157235158_
                           _e228108228957_
                           _hd228107228960_
                           _tl228106228962_))))
                  (let () (declare (not safe)) (_g228103228299_))))))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_stx228052_)
        (letrec ((_clause-e228054_
                  (lambda (_form228095_)
                    (let ((__obj236803
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
                       __obj236803
                       'case-lambda-clause
                       (let ()
                         (declare (not safe))
                         (gxc#lambda-form-arity _form228095_))
                       (if (let ((__tmp236870
                                  (gxc#current-compile-type-closure)))
                             (declare (not safe))
                             (not __tmp236870))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form? _form228095_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form-delegate
                                  _form228095_))
                               '#f)
                           '#f))
                      __obj236803))))
          (let* ((_g228056228066_
                  (lambda (_g228057228063_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g228057228063_))))
                 (_g228055228092_
                  (lambda (_g228057228069_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g228057228069_))
                        (let ((_e228061228071_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g228057228069_))))
                          (let ((_hd228060228074_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e228061228071_)))
                                (_tl228059228076_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e228061228071_))))
                            ((lambda (_L228079_)
                               (let ((_clauses228090_
                                      (map _clause-e228054_ _L228079_)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#!case-lambda::t
                                  'case-lambda
                                  _clauses228090_)))
                             _tl228059228076_)))
                        (let ()
                          (declare (not safe))
                          (_g228056228066_ _g228057228069_))))))
            (declare (not safe))
            (_g228055228092_ _stx228052_)))))
    (define gxc#basic-expression-type-let-values%
      (lambda (_stx227984_)
        (let* ((_g227986228003_
                (lambda (_g227987228000_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g227987228000_))))
               (_g227985228049_
                (lambda (_g227987228006_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g227987228006_))
                      (let ((_e227992228008_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g227987228006_))))
                        (let ((_hd227991228011_
                               (let ()
                                 (declare (not safe))
                                 (##car _e227992228008_)))
                              (_tl227990228013_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e227992228008_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl227990228013_))
                              (let ((_e227995228016_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl227990228013_))))
                                (let ((_hd227994228019_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e227995228016_)))
                                      (_tl227993228021_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e227995228016_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl227993228021_))
                                      (let ((_e227998228024_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl227993228021_))))
                                        (let ((_hd227997228027_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e227998228024_)))
                                              (_tl227996228029_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e227998228024_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl227996228029_))
                                              ((lambda (_L228032_ _L228033_)
                                                 (let ((__tmp236871
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _L228032_)))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp236871
                                                    gxc#current-compile-type-closure
                                                    '#t)))
                                               _hd227997228027_
                                               _hd227994228019_)
                                              (let ()
                                                (declare (not safe))
                                                (_g227986228003_
                                                 _g227987228006_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g227986228003_ _g227987228006_)))))
                              (let ()
                                (declare (not safe))
                                (_g227986228003_ _g227987228006_)))))
                      (let ()
                        (declare (not safe))
                        (_g227986228003_ _g227987228006_))))))
          (declare (not safe))
          (_g227985228049_ _stx227984_))))
    (define gxc#basic-expression-type-builtin
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-call%
      (lambda (_stx227889_)
        (let* ((___stx235458235459_ _stx227889_)
               (_g227892227912_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx235458235459_)))))
          (let ((___kont235460235461_
                 (lambda (_L227956_ _L227957_)
                   (let ((_type-e227974227976_
                          (let ((__tmp236872
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L227957_))))
                            (declare (not safe))
                            (hash-get
                             gxc#basic-expression-type-builtin
                             __tmp236872))))
                     (if _type-e227974227976_
                         (let ((_type-e227979_ _type-e227974227976_))
                           (_type-e227979_ _stx227889_ _L227956_))
                         '#f))))
                (___kont235462235463_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx235458235459_))
                (let ((_e227898227924_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx235458235459_))))
                  (let ((_tl227896227929_
                         (let () (declare (not safe)) (##cdr _e227898227924_)))
                        (_hd227897227927_
                         (let ()
                           (declare (not safe))
                           (##car _e227898227924_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl227896227929_))
                        (let ((_e227901227932_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl227896227929_))))
                          (let ((_tl227899227937_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e227901227932_)))
                                (_hd227900227935_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e227901227932_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd227900227935_))
                                (let ((_e227904227940_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd227900227935_))))
                                  (let ((_tl227902227945_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e227904227940_)))
                                        (_hd227903227943_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e227904227940_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd227903227943_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd227903227943_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl227902227945_))
                                                (let ((_e227907227948_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl227902227945_))))
                                                  (let ((_tl227905227953_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e227907227948_)))
                                                        (_hd227906227951_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e227907227948_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl227905227953_))
                                                        (___kont235460235461_
                                                         _tl227899227937_
                                                         _hd227906227951_)
                                                        (___kont235462235463_))))
                                                (___kont235462235463_))
                                            (___kont235462235463_))
                                        (___kont235462235463_))))
                                (___kont235462235463_))))
                        (___kont235462235463_))))
                (___kont235462235463_))))))
    (define gxc#basic-expression-type-ref%
      (lambda (_stx227838_)
        (let* ((_g227840227853_
                (lambda (_g227841227850_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g227841227850_))))
               (_g227839227886_
                (lambda (_g227841227856_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g227841227856_))
                      (let ((_e227845227858_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g227841227856_))))
                        (let ((_hd227844227861_
                               (let ()
                                 (declare (not safe))
                                 (##car _e227845227858_)))
                              (_tl227843227863_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e227845227858_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl227843227863_))
                              (let ((_e227848227866_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl227843227863_))))
                                (let ((_hd227847227869_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e227848227866_)))
                                      (_tl227846227871_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e227848227866_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl227846227871_))
                                      ((lambda (_L227874_)
                                         (let ((__tmp236873
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L227874_))))
                                           (declare (not safe))
                                           (gxc#optimizer-lookup-type
                                            __tmp236873)))
                                       _hd227847227869_)
                                      (let ()
                                        (declare (not safe))
                                        (_g227840227853_ _g227841227856_)))))
                              (let ()
                                (declare (not safe))
                                (_g227840227853_ _g227841227856_)))))
                      (let ()
                        (declare (not safe))
                        (_g227840227853_ _g227841227856_))))))
          (declare (not safe))
          (_g227839227886_ _stx227838_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_form227072_)
        (let* ((___stx235496235497_ _form227072_)
               (_g227077227234_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx235496235497_)))))
          (let ((___kont235498235499_
                 (lambda (_L227758_ _L227759_ _L227760_) '#t))
                (___kont235504235505_
                 (lambda (_L227546_
                          _L227547_
                          _L227548_
                          _L227549_
                          _L227550_
                          _L227551_)
                   '#t))
                (___kont235510235511_
                 (lambda (_L227342_ _L227343_ _L227344_ _L227345_) '#t))
                (___kont235512235513_ (lambda () '#f)))
            (let* ((___match235637235638_
                    (lambda (_e227196227246_
                             _hd227195227249_
                             _tl227194227251_
                             _e227199227254_
                             _hd227198227257_
                             _tl227197227259_
                             _e227202227262_
                             _hd227201227265_
                             _tl227200227267_
                             _e227205227270_
                             _hd227204227273_
                             _tl227203227275_
                             _e227208227278_
                             _hd227207227281_
                             _tl227206227283_
                             _e227211227286_
                             _hd227210227289_
                             _tl227209227291_
                             _e227214227294_
                             _hd227213227297_
                             _tl227212227299_
                             _e227217227302_
                             _hd227216227305_
                             _tl227215227307_
                             _e227220227310_
                             _hd227219227313_
                             _tl227218227315_
                             _e227223227318_
                             _hd227222227321_
                             _tl227221227323_
                             _e227226227326_
                             _hd227225227329_
                             _tl227224227331_
                             _e227229227334_
                             _hd227228227337_
                             _tl227227227339_)
                      (let ((_L227342_ _hd227228227337_)
                            (_L227343_ _hd227219227313_)
                            (_L227344_ _hd227210227289_)
                            (_L227345_ _hd227195227249_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L227345_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L227344_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L227345_ _L227342_))
                                 (let ((__tmp236874
                                        (let ()
                                          (declare (not safe))
                                          (gx#free-identifier=?
                                           _L227343_
                                           _L227345_))))
                                   (declare (not safe))
                                   (not __tmp236874)))
                            (___kont235510235511_
                             _L227342_
                             _L227343_
                             _L227344_
                             _L227345_)
                            (___kont235512235513_)))))
                   (___match235609235610_
                    (lambda (_e227196227246_
                             _hd227195227249_
                             _tl227194227251_
                             _e227199227254_
                             _hd227198227257_
                             _tl227197227259_
                             _e227202227262_
                             _hd227201227265_
                             _tl227200227267_
                             _e227205227270_
                             _hd227204227273_
                             _tl227203227275_
                             _e227208227278_
                             _hd227207227281_
                             _tl227206227283_
                             _e227211227286_
                             _hd227210227289_
                             _tl227209227291_
                             _e227214227294_
                             _hd227213227297_
                             _tl227212227299_
                             _e227217227302_
                             _hd227216227305_
                             _tl227215227307_
                             _e227220227310_
                             _hd227219227313_
                             _tl227218227315_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl227212227299_))
                          (let ((_e227223227318_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl227212227299_))))
                            (let ((_tl227221227323_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e227223227318_)))
                                  (_hd227222227321_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e227223227318_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd227222227321_))
                                  (let ((_e227226227326_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd227222227321_))))
                                    (let ((_tl227224227331_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e227226227326_)))
                                          (_hd227225227329_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e227226227326_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd227225227329_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd227225227329_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl227224227331_))
                                                  (let ((_e227229227334_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl227224227331_))))
                                                    (let ((_tl227227227339_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e227229227334_)))
                                                          (_hd227228227337_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e227229227334_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl227227227339_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl227221227323_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl227197227259_))
                          (___match235637235638_
                           _e227196227246_
                           _hd227195227249_
                           _tl227194227251_
                           _e227199227254_
                           _hd227198227257_
                           _tl227197227259_
                           _e227202227262_
                           _hd227201227265_
                           _tl227200227267_
                           _e227205227270_
                           _hd227204227273_
                           _tl227203227275_
                           _e227208227278_
                           _hd227207227281_
                           _tl227206227283_
                           _e227211227286_
                           _hd227210227289_
                           _tl227209227291_
                           _e227214227294_
                           _hd227213227297_
                           _tl227212227299_
                           _e227217227302_
                           _hd227216227305_
                           _tl227215227307_
                           _e227220227310_
                           _hd227219227313_
                           _tl227218227315_
                           _e227223227318_
                           _hd227222227321_
                           _tl227221227323_
                           _e227226227326_
                           _hd227225227329_
                           _tl227224227331_
                           _e227229227334_
                           _hd227228227337_
                           _tl227227227339_)
                          (___kont235512235513_))
                      (___kont235512235513_))
                  (___kont235512235513_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont235512235513_))
                                              (___kont235512235513_))
                                          (___kont235512235513_))))
                                  (___kont235512235513_))))
                          (___kont235512235513_))))
                   (___match235539235540_
                    (lambda (_e227132227386_
                             _hd227131227389_
                             _tl227130227391_
                             ___splice235506235507_
                             _target227133227394_
                             _tl227135227396_)
                      (letrec ((_loop227136227399_
                                (lambda (_hd227134227402_ _arg227140227404_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd227134227402_))
                                      (let ((_e227137227407_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd227134227402_))))
                                        (let ((_lp-tl227139227412_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e227137227407_)))
                                              (_lp-hd227138227410_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e227137227407_))))
                                          (let ((__tmp236889
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd227138227410_
                                                         _arg227140227404_))))
                                            (declare (not safe))
                                            (_loop227136227399_
                                             _lp-tl227139227412_
                                             __tmp236889))))
                                      (let ((_arg227141227415_
                                             (reverse _arg227140227404_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl227130227391_))
                                            (let ((_e227144227418_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl227130227391_))))
                                              (let ((_tl227142227423_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e227144227418_)))
                                                    (_hd227143227421_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e227144227418_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd227143227421_))
                                                    (let ((_e227147227426_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd227143227421_))))
                                                      (let ((_tl227145227431_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e227147227426_)))
                    (_hd227146227429_
                     (let () (declare (not safe)) (##car _e227147227426_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd227146227429_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd227146227429_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl227145227431_))
                            (let ((_e227150227434_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl227145227431_))))
                              (let ((_tl227148227439_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e227150227434_)))
                                    (_hd227149227437_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e227150227434_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd227149227437_))
                                    (let ((_e227153227442_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd227149227437_))))
                                      (let ((_tl227151227447_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e227153227442_)))
                                            (_hd227152227445_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e227153227442_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd227152227445_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd227152227445_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl227151227447_))
                                                    (let ((_e227156227450_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl227151227447_))))
                                                      (let ((_tl227154227455_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e227156227450_)))
                    (_hd227155227453_
                     (let () (declare (not safe)) (##car _e227156227450_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl227154227455_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl227148227439_))
                        (let ((_e227159227458_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl227148227439_))))
                          (let ((_tl227157227463_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e227159227458_)))
                                (_hd227158227461_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e227159227458_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd227158227461_))
                                (let ((_e227162227466_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd227158227461_))))
                                  (let ((_tl227160227471_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e227162227466_)))
                                        (_hd227161227469_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e227162227466_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd227161227469_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd227161227469_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl227160227471_))
                                                (let ((_e227165227474_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl227160227471_))))
                                                  (let ((_tl227163227479_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e227165227474_)))
                                                        (_hd227164227477_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e227165227474_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl227163227479_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _tl227157227463_))
                                                            (if (fx>= (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#stx-length _tl227157227463_))
                              '1)
                        (let ((___splice235508235509_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl227157227463_
                                  '1))))
                          (let ((_tl227168227484_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice235508235509_ '1)))
                                (_target227166227482_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice235508235509_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl227168227484_))
                                (let ((_e227177227487_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl227168227484_))))
                                  (let ((_tl227175227492_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e227177227487_)))
                                        (_hd227176227490_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e227177227487_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd227176227490_))
                                        (let ((_e227180227495_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd227176227490_))))
                                          (let ((_tl227178227500_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e227180227495_)))
                                                (_hd227179227498_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e227180227495_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd227179227498_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd227179227498_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl227178227500_))
                                                        (let ((_e227183227503_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl227178227500_))))
                  (let ((_tl227181227508_
                         (let () (declare (not safe)) (##cdr _e227183227503_)))
                        (_hd227182227506_
                         (let ()
                           (declare (not safe))
                           (##car _e227183227503_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl227181227508_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl227175227492_))
                            (letrec ((_loop227169227511_
                                      (lambda (_hd227167227514_
                                               _xarg227173227516_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd227167227514_))
                                            (let ((_e227170227519_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd227167227514_))))
                                              (let ((_lp-tl227172227524_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e227170227519_)))
                                                    (_lp-hd227171227522_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e227170227519_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _lp-hd227171227522_))
                                                    (let ((_e227186227527_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _lp-hd227171227522_))))
                                                      (let ((_tl227184227532_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e227186227527_)))
                    (_hd227185227530_
                     (let () (declare (not safe)) (##car _e227186227527_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd227185227530_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd227185227530_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl227184227532_))
                            (let ((_e227189227535_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl227184227532_))))
                              (let ((_tl227187227540_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e227189227535_)))
                                    (_hd227188227538_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e227189227535_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl227187227540_))
                                    (let ((__tmp236888
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd227188227538_
                                                   _xarg227173227516_))))
                                      (declare (not safe))
                                      (_loop227169227511_
                                       _lp-tl227172227524_
                                       __tmp236888))
                                    (___match235609235610_
                                     _e227132227386_
                                     _hd227131227389_
                                     _tl227130227391_
                                     _e227144227418_
                                     _hd227143227421_
                                     _tl227142227423_
                                     _e227147227426_
                                     _hd227146227429_
                                     _tl227145227431_
                                     _e227150227434_
                                     _hd227149227437_
                                     _tl227148227439_
                                     _e227153227442_
                                     _hd227152227445_
                                     _tl227151227447_
                                     _e227156227450_
                                     _hd227155227453_
                                     _tl227154227455_
                                     _e227159227458_
                                     _hd227158227461_
                                     _tl227157227463_
                                     _e227162227466_
                                     _hd227161227469_
                                     _tl227160227471_
                                     _e227165227474_
                                     _hd227164227477_
                                     _tl227163227479_))))
                            (___match235609235610_
                             _e227132227386_
                             _hd227131227389_
                             _tl227130227391_
                             _e227144227418_
                             _hd227143227421_
                             _tl227142227423_
                             _e227147227426_
                             _hd227146227429_
                             _tl227145227431_
                             _e227150227434_
                             _hd227149227437_
                             _tl227148227439_
                             _e227153227442_
                             _hd227152227445_
                             _tl227151227447_
                             _e227156227450_
                             _hd227155227453_
                             _tl227154227455_
                             _e227159227458_
                             _hd227158227461_
                             _tl227157227463_
                             _e227162227466_
                             _hd227161227469_
                             _tl227160227471_
                             _e227165227474_
                             _hd227164227477_
                             _tl227163227479_))
                        (___match235609235610_
                         _e227132227386_
                         _hd227131227389_
                         _tl227130227391_
                         _e227144227418_
                         _hd227143227421_
                         _tl227142227423_
                         _e227147227426_
                         _hd227146227429_
                         _tl227145227431_
                         _e227150227434_
                         _hd227149227437_
                         _tl227148227439_
                         _e227153227442_
                         _hd227152227445_
                         _tl227151227447_
                         _e227156227450_
                         _hd227155227453_
                         _tl227154227455_
                         _e227159227458_
                         _hd227158227461_
                         _tl227157227463_
                         _e227162227466_
                         _hd227161227469_
                         _tl227160227471_
                         _e227165227474_
                         _hd227164227477_
                         _tl227163227479_))
                    (___match235609235610_
                     _e227132227386_
                     _hd227131227389_
                     _tl227130227391_
                     _e227144227418_
                     _hd227143227421_
                     _tl227142227423_
                     _e227147227426_
                     _hd227146227429_
                     _tl227145227431_
                     _e227150227434_
                     _hd227149227437_
                     _tl227148227439_
                     _e227153227442_
                     _hd227152227445_
                     _tl227151227447_
                     _e227156227450_
                     _hd227155227453_
                     _tl227154227455_
                     _e227159227458_
                     _hd227158227461_
                     _tl227157227463_
                     _e227162227466_
                     _hd227161227469_
                     _tl227160227471_
                     _e227165227474_
                     _hd227164227477_
                     _tl227163227479_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match235609235610_
                                                     _e227132227386_
                                                     _hd227131227389_
                                                     _tl227130227391_
                                                     _e227144227418_
                                                     _hd227143227421_
                                                     _tl227142227423_
                                                     _e227147227426_
                                                     _hd227146227429_
                                                     _tl227145227431_
                                                     _e227150227434_
                                                     _hd227149227437_
                                                     _tl227148227439_
                                                     _e227153227442_
                                                     _hd227152227445_
                                                     _tl227151227447_
                                                     _e227156227450_
                                                     _hd227155227453_
                                                     _tl227154227455_
                                                     _e227159227458_
                                                     _hd227158227461_
                                                     _tl227157227463_
                                                     _e227162227466_
                                                     _hd227161227469_
                                                     _tl227160227471_
                                                     _e227165227474_
                                                     _hd227164227477_
                                                     _tl227163227479_))))
                                            (let ((_xarg227174227543_
                                                   (reverse _xarg227173227516_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl227142227423_))
                                                  (let ((_L227546_
                                                         _hd227182227506_)
                                                        (_L227547_
                                                         _xarg227174227543_)
                                                        (_L227548_
                                                         _hd227164227477_)
                                                        (_L227549_
                                                         _hd227155227453_)
                                                        (_L227550_
                                                         _tl227135227396_)
                                                        (_L227551_
                                                         _arg227141227415_))
                                                    (if (and (let ((__tmp236886
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp236887
                                   (lambda (_g227594227597_ _g227595227599_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g227594227597_
                                             _g227595227599_)))))
                              (declare (not safe))
                              (foldr1 __tmp236887 '() _L227551_))))
                       (declare (not safe))
                       (gx#identifier-list? __tmp236886))
                     (let () (declare (not safe)) (gx#identifier? _L227550_))
                     (let ()
                       (declare (not safe))
                       (gxc#runtime-identifier=? _L227549_ 'apply))
                     (fx= (length (let ((__tmp236884
                                         (lambda (_g227601227604_
                                                  _g227602227606_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g227601227604_
                                                   _g227602227606_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp236884 '() _L227551_)))
                          (length (let ((__tmp236885
                                         (lambda (_g227608227611_
                                                  _g227609227613_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g227608227611_
                                                   _g227609227613_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp236885 '() _L227547_))))
                     (let ((__tmp236882
                            (let ((__tmp236883
                                   (lambda (_g227615227618_ _g227616227620_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g227615227618_
                                             _g227616227620_)))))
                              (declare (not safe))
                              (foldr1 __tmp236883 '() _L227551_)))
                           (__tmp236880
                            (let ((__tmp236881
                                   (lambda (_g227622227625_ _g227623227627_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g227622227625_
                                             _g227623227627_)))))
                              (declare (not safe))
                              (foldr1 __tmp236881 '() _L227547_))))
                       (declare (not safe))
                       (andmap2 gx#free-identifier=? __tmp236882 __tmp236880))
                     (let ()
                       (declare (not safe))
                       (gx#free-identifier=? _L227550_ _L227546_))
                     (let ((__tmp236875
                            (let ((__tmp236879
                                   (lambda (_g227629227631_)
                                     (let ()
                                       (declare (not safe))
                                       (gx#free-identifier=?
                                        _g227629227631_
                                        _L227548_))))
                                  (__tmp236876
                                   (let ((__tmp236878
                                          (lambda (_g227633227636_
                                                   _g227634227638_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g227633227636_
                                                    _g227634227638_))))
                                         (__tmp236877
                                          (let ()
                                            (declare (not safe))
                                            (cons _L227550_ '()))))
                                     (declare (not safe))
                                     (foldr1 __tmp236878
                                             __tmp236877
                                             _L227551_))))
                              (declare (not safe))
                              (find __tmp236879 __tmp236876))))
                       (declare (not safe))
                       (not __tmp236875)))
                (___kont235504235505_
                 _L227546_
                 _L227547_
                 _L227548_
                 _L227549_
                 _L227550_
                 _L227551_)
                (___match235609235610_
                 _e227132227386_
                 _hd227131227389_
                 _tl227130227391_
                 _e227144227418_
                 _hd227143227421_
                 _tl227142227423_
                 _e227147227426_
                 _hd227146227429_
                 _tl227145227431_
                 _e227150227434_
                 _hd227149227437_
                 _tl227148227439_
                 _e227153227442_
                 _hd227152227445_
                 _tl227151227447_
                 _e227156227450_
                 _hd227155227453_
                 _tl227154227455_
                 _e227159227458_
                 _hd227158227461_
                 _tl227157227463_
                 _e227162227466_
                 _hd227161227469_
                 _tl227160227471_
                 _e227165227474_
                 _hd227164227477_
                 _tl227163227479_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match235609235610_
                                                   _e227132227386_
                                                   _hd227131227389_
                                                   _tl227130227391_
                                                   _e227144227418_
                                                   _hd227143227421_
                                                   _tl227142227423_
                                                   _e227147227426_
                                                   _hd227146227429_
                                                   _tl227145227431_
                                                   _e227150227434_
                                                   _hd227149227437_
                                                   _tl227148227439_
                                                   _e227153227442_
                                                   _hd227152227445_
                                                   _tl227151227447_
                                                   _e227156227450_
                                                   _hd227155227453_
                                                   _tl227154227455_
                                                   _e227159227458_
                                                   _hd227158227461_
                                                   _tl227157227463_
                                                   _e227162227466_
                                                   _hd227161227469_
                                                   _tl227160227471_
                                                   _e227165227474_
                                                   _hd227164227477_
                                                   _tl227163227479_)))))))
                              (let ()
                                (declare (not safe))
                                (_loop227169227511_ _target227166227482_ '())))
                            (___match235609235610_
                             _e227132227386_
                             _hd227131227389_
                             _tl227130227391_
                             _e227144227418_
                             _hd227143227421_
                             _tl227142227423_
                             _e227147227426_
                             _hd227146227429_
                             _tl227145227431_
                             _e227150227434_
                             _hd227149227437_
                             _tl227148227439_
                             _e227153227442_
                             _hd227152227445_
                             _tl227151227447_
                             _e227156227450_
                             _hd227155227453_
                             _tl227154227455_
                             _e227159227458_
                             _hd227158227461_
                             _tl227157227463_
                             _e227162227466_
                             _hd227161227469_
                             _tl227160227471_
                             _e227165227474_
                             _hd227164227477_
                             _tl227163227479_))
                        (___match235609235610_
                         _e227132227386_
                         _hd227131227389_
                         _tl227130227391_
                         _e227144227418_
                         _hd227143227421_
                         _tl227142227423_
                         _e227147227426_
                         _hd227146227429_
                         _tl227145227431_
                         _e227150227434_
                         _hd227149227437_
                         _tl227148227439_
                         _e227153227442_
                         _hd227152227445_
                         _tl227151227447_
                         _e227156227450_
                         _hd227155227453_
                         _tl227154227455_
                         _e227159227458_
                         _hd227158227461_
                         _tl227157227463_
                         _e227162227466_
                         _hd227161227469_
                         _tl227160227471_
                         _e227165227474_
                         _hd227164227477_
                         _tl227163227479_))))
                (___match235609235610_
                 _e227132227386_
                 _hd227131227389_
                 _tl227130227391_
                 _e227144227418_
                 _hd227143227421_
                 _tl227142227423_
                 _e227147227426_
                 _hd227146227429_
                 _tl227145227431_
                 _e227150227434_
                 _hd227149227437_
                 _tl227148227439_
                 _e227153227442_
                 _hd227152227445_
                 _tl227151227447_
                 _e227156227450_
                 _hd227155227453_
                 _tl227154227455_
                 _e227159227458_
                 _hd227158227461_
                 _tl227157227463_
                 _e227162227466_
                 _hd227161227469_
                 _tl227160227471_
                 _e227165227474_
                 _hd227164227477_
                 _tl227163227479_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match235609235610_
                                                     _e227132227386_
                                                     _hd227131227389_
                                                     _tl227130227391_
                                                     _e227144227418_
                                                     _hd227143227421_
                                                     _tl227142227423_
                                                     _e227147227426_
                                                     _hd227146227429_
                                                     _tl227145227431_
                                                     _e227150227434_
                                                     _hd227149227437_
                                                     _tl227148227439_
                                                     _e227153227442_
                                                     _hd227152227445_
                                                     _tl227151227447_
                                                     _e227156227450_
                                                     _hd227155227453_
                                                     _tl227154227455_
                                                     _e227159227458_
                                                     _hd227158227461_
                                                     _tl227157227463_
                                                     _e227162227466_
                                                     _hd227161227469_
                                                     _tl227160227471_
                                                     _e227165227474_
                                                     _hd227164227477_
                                                     _tl227163227479_))
                                                (___match235609235610_
                                                 _e227132227386_
                                                 _hd227131227389_
                                                 _tl227130227391_
                                                 _e227144227418_
                                                 _hd227143227421_
                                                 _tl227142227423_
                                                 _e227147227426_
                                                 _hd227146227429_
                                                 _tl227145227431_
                                                 _e227150227434_
                                                 _hd227149227437_
                                                 _tl227148227439_
                                                 _e227153227442_
                                                 _hd227152227445_
                                                 _tl227151227447_
                                                 _e227156227450_
                                                 _hd227155227453_
                                                 _tl227154227455_
                                                 _e227159227458_
                                                 _hd227158227461_
                                                 _tl227157227463_
                                                 _e227162227466_
                                                 _hd227161227469_
                                                 _tl227160227471_
                                                 _e227165227474_
                                                 _hd227164227477_
                                                 _tl227163227479_))))
                                        (___match235609235610_
                                         _e227132227386_
                                         _hd227131227389_
                                         _tl227130227391_
                                         _e227144227418_
                                         _hd227143227421_
                                         _tl227142227423_
                                         _e227147227426_
                                         _hd227146227429_
                                         _tl227145227431_
                                         _e227150227434_
                                         _hd227149227437_
                                         _tl227148227439_
                                         _e227153227442_
                                         _hd227152227445_
                                         _tl227151227447_
                                         _e227156227450_
                                         _hd227155227453_
                                         _tl227154227455_
                                         _e227159227458_
                                         _hd227158227461_
                                         _tl227157227463_
                                         _e227162227466_
                                         _hd227161227469_
                                         _tl227160227471_
                                         _e227165227474_
                                         _hd227164227477_
                                         _tl227163227479_))))
                                (___match235609235610_
                                 _e227132227386_
                                 _hd227131227389_
                                 _tl227130227391_
                                 _e227144227418_
                                 _hd227143227421_
                                 _tl227142227423_
                                 _e227147227426_
                                 _hd227146227429_
                                 _tl227145227431_
                                 _e227150227434_
                                 _hd227149227437_
                                 _tl227148227439_
                                 _e227153227442_
                                 _hd227152227445_
                                 _tl227151227447_
                                 _e227156227450_
                                 _hd227155227453_
                                 _tl227154227455_
                                 _e227159227458_
                                 _hd227158227461_
                                 _tl227157227463_
                                 _e227162227466_
                                 _hd227161227469_
                                 _tl227160227471_
                                 _e227165227474_
                                 _hd227164227477_
                                 _tl227163227479_))))
                        (___match235609235610_
                         _e227132227386_
                         _hd227131227389_
                         _tl227130227391_
                         _e227144227418_
                         _hd227143227421_
                         _tl227142227423_
                         _e227147227426_
                         _hd227146227429_
                         _tl227145227431_
                         _e227150227434_
                         _hd227149227437_
                         _tl227148227439_
                         _e227153227442_
                         _hd227152227445_
                         _tl227151227447_
                         _e227156227450_
                         _hd227155227453_
                         _tl227154227455_
                         _e227159227458_
                         _hd227158227461_
                         _tl227157227463_
                         _e227162227466_
                         _hd227161227469_
                         _tl227160227471_
                         _e227165227474_
                         _hd227164227477_
                         _tl227163227479_))
                    (___match235609235610_
                     _e227132227386_
                     _hd227131227389_
                     _tl227130227391_
                     _e227144227418_
                     _hd227143227421_
                     _tl227142227423_
                     _e227147227426_
                     _hd227146227429_
                     _tl227145227431_
                     _e227150227434_
                     _hd227149227437_
                     _tl227148227439_
                     _e227153227442_
                     _hd227152227445_
                     _tl227151227447_
                     _e227156227450_
                     _hd227155227453_
                     _tl227154227455_
                     _e227159227458_
                     _hd227158227461_
                     _tl227157227463_
                     _e227162227466_
                     _hd227161227469_
                     _tl227160227471_
                     _e227165227474_
                     _hd227164227477_
                     _tl227163227479_))
                (___kont235512235513_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont235512235513_))
                                            (___kont235512235513_))
                                        (___kont235512235513_))))
                                (___kont235512235513_))))
                        (___kont235512235513_))
                    (___kont235512235513_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont235512235513_))
                                                (___kont235512235513_))
                                            (___kont235512235513_))))
                                    (___kont235512235513_))))
                            (___kont235512235513_))
                        (___kont235512235513_))
                    (___kont235512235513_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont235512235513_))))
                                            (___kont235512235513_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop227136227399_ _target227133227394_ '())))))
                   (___match235527235528_
                    (lambda (_e227084227646_
                             _hd227083227649_
                             _tl227082227651_
                             ___splice235500235501_
                             _target227085227654_
                             _tl227087227656_)
                      (letrec ((_loop227088227659_
                                (lambda (_hd227086227662_ _arg227092227664_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd227086227662_))
                                      (let ((_e227089227667_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd227086227662_))))
                                        (let ((_lp-tl227091227672_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e227089227667_)))
                                              (_lp-hd227090227670_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e227089227667_))))
                                          (let ((__tmp236903
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd227090227670_
                                                         _arg227092227664_))))
                                            (declare (not safe))
                                            (_loop227088227659_
                                             _lp-tl227091227672_
                                             __tmp236903))))
                                      (let ((_arg227093227675_
                                             (reverse _arg227092227664_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl227082227651_))
                                            (let ((_e227096227678_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl227082227651_))))
                                              (let ((_tl227094227683_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e227096227678_)))
                                                    (_hd227095227681_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e227096227678_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd227095227681_))
                                                    (let ((_e227099227686_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd227095227681_))))
                                                      (let ((_tl227097227691_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e227099227686_)))
                    (_hd227098227689_
                     (let () (declare (not safe)) (##car _e227099227686_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd227098227689_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd227098227689_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl227097227691_))
                            (let ((_e227102227694_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl227097227691_))))
                              (let ((_tl227100227699_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e227102227694_)))
                                    (_hd227101227697_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e227102227694_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd227101227697_))
                                    (let ((_e227105227702_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd227101227697_))))
                                      (let ((_tl227103227707_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e227105227702_)))
                                            (_hd227104227705_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e227105227702_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd227104227705_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd227104227705_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl227103227707_))
                                                    (let ((_e227108227710_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl227103227707_))))
                                                      (let ((_tl227106227715_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e227108227710_)))
                    (_hd227107227713_
                     (let () (declare (not safe)) (##car _e227108227710_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl227106227715_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl227100227699_))
                        (let ((___splice235502235503_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl227100227699_
                                  '0))))
                          (let ((_tl227111227720_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice235502235503_ '1)))
                                (_target227109227718_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice235502235503_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl227111227720_))
                                (letrec ((_loop227112227723_
                                          (lambda (_hd227110227726_
                                                   _xarg227116227728_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd227110227726_))
                                                (let ((_e227113227731_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd227110227726_))))
                                                  (let ((_lp-tl227115227736_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e227113227731_)))
                                                        (_lp-hd227114227734_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e227113227731_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd227114227734_))
                                                        (let ((_e227120227739_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd227114227734_))))
                  (let ((_tl227118227744_
                         (let () (declare (not safe)) (##cdr _e227120227739_)))
                        (_hd227119227742_
                         (let ()
                           (declare (not safe))
                           (##car _e227120227739_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd227119227742_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd227119227742_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl227118227744_))
                                (let ((_e227123227747_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl227118227744_))))
                                  (let ((_tl227121227752_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e227123227747_)))
                                        (_hd227122227750_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e227123227747_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl227121227752_))
                                        (let ((__tmp236902
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd227122227750_
                                                       _xarg227116227728_))))
                                          (declare (not safe))
                                          (_loop227112227723_
                                           _lp-tl227115227736_
                                           __tmp236902))
                                        (___match235539235540_
                                         _e227084227646_
                                         _hd227083227649_
                                         _tl227082227651_
                                         ___splice235500235501_
                                         _target227085227654_
                                         _tl227087227656_))))
                                (___match235539235540_
                                 _e227084227646_
                                 _hd227083227649_
                                 _tl227082227651_
                                 ___splice235500235501_
                                 _target227085227654_
                                 _tl227087227656_))
                            (___match235539235540_
                             _e227084227646_
                             _hd227083227649_
                             _tl227082227651_
                             ___splice235500235501_
                             _target227085227654_
                             _tl227087227656_))
                        (___match235539235540_
                         _e227084227646_
                         _hd227083227649_
                         _tl227082227651_
                         ___splice235500235501_
                         _target227085227654_
                         _tl227087227656_))))
                (___match235539235540_
                 _e227084227646_
                 _hd227083227649_
                 _tl227082227651_
                 ___splice235500235501_
                 _target227085227654_
                 _tl227087227656_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg227117227755_
                                                       (reverse _xarg227116227728_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl227094227683_))
                                                      (let ((_L227758_
                                                             _xarg227117227755_)
                                                            (_L227759_
                                                             _hd227107227713_)
                                                            (_L227760_
                                                             _arg227093227675_))
                                                        (if (and (let ((__tmp236900
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp236901
                                       (lambda (_g227788227791_
                                                _g227789227793_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g227788227791_
                                                 _g227789227793_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp236901 '() _L227760_))))
                           (declare (not safe))
                           (gx#identifier-list? __tmp236900))
                         (fx= (length (let ((__tmp236898
                                             (lambda (_g227795227798_
                                                      _g227796227800_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g227795227798_
                                                       _g227796227800_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp236898 '() _L227760_)))
                              (length (let ((__tmp236899
                                             (lambda (_g227802227805_
                                                      _g227803227807_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g227802227805_
                                                       _g227803227807_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp236899 '() _L227758_))))
                         (let ((__tmp236896
                                (let ((__tmp236897
                                       (lambda (_g227809227812_
                                                _g227810227814_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g227809227812_
                                                 _g227810227814_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp236897 '() _L227760_)))
                               (__tmp236894
                                (let ((__tmp236895
                                       (lambda (_g227816227819_
                                                _g227817227821_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g227816227819_
                                                 _g227817227821_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp236895 '() _L227758_))))
                           (declare (not safe))
                           (andmap2 gx#free-identifier=?
                                    __tmp236896
                                    __tmp236894))
                         (let ((__tmp236890
                                (let ((__tmp236893
                                       (lambda (_g227823227825_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _g227823227825_
                                            _L227759_))))
                                      (__tmp236891
                                       (let ((__tmp236892
                                              (lambda (_g227827227830_
                                                       _g227828227832_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g227827227830_
                                                        _g227828227832_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp236892 '() _L227760_))))
                                  (declare (not safe))
                                  (find __tmp236893 __tmp236891))))
                           (declare (not safe))
                           (not __tmp236890)))
                    (___kont235498235499_ _L227758_ _L227759_ _L227760_)
                    (___match235539235540_
                     _e227084227646_
                     _hd227083227649_
                     _tl227082227651_
                     ___splice235500235501_
                     _target227085227654_
                     _tl227087227656_)))
              (___match235539235540_
               _e227084227646_
               _hd227083227649_
               _tl227082227651_
               ___splice235500235501_
               _target227085227654_
               _tl227087227656_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (let ()
                                    (declare (not safe))
                                    (_loop227112227723_
                                     _target227109227718_
                                     '())))
                                (___match235539235540_
                                 _e227084227646_
                                 _hd227083227649_
                                 _tl227082227651_
                                 ___splice235500235501_
                                 _target227085227654_
                                 _tl227087227656_))))
                        (___match235539235540_
                         _e227084227646_
                         _hd227083227649_
                         _tl227082227651_
                         ___splice235500235501_
                         _target227085227654_
                         _tl227087227656_))
                    (___match235539235540_
                     _e227084227646_
                     _hd227083227649_
                     _tl227082227651_
                     ___splice235500235501_
                     _target227085227654_
                     _tl227087227656_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match235539235540_
                                                     _e227084227646_
                                                     _hd227083227649_
                                                     _tl227082227651_
                                                     ___splice235500235501_
                                                     _target227085227654_
                                                     _tl227087227656_))
                                                (___match235539235540_
                                                 _e227084227646_
                                                 _hd227083227649_
                                                 _tl227082227651_
                                                 ___splice235500235501_
                                                 _target227085227654_
                                                 _tl227087227656_))
                                            (___match235539235540_
                                             _e227084227646_
                                             _hd227083227649_
                                             _tl227082227651_
                                             ___splice235500235501_
                                             _target227085227654_
                                             _tl227087227656_))))
                                    (___match235539235540_
                                     _e227084227646_
                                     _hd227083227649_
                                     _tl227082227651_
                                     ___splice235500235501_
                                     _target227085227654_
                                     _tl227087227656_))))
                            (___match235539235540_
                             _e227084227646_
                             _hd227083227649_
                             _tl227082227651_
                             ___splice235500235501_
                             _target227085227654_
                             _tl227087227656_))
                        (___match235539235540_
                         _e227084227646_
                         _hd227083227649_
                         _tl227082227651_
                         ___splice235500235501_
                         _target227085227654_
                         _tl227087227656_))
                    (___match235539235540_
                     _e227084227646_
                     _hd227083227649_
                     _tl227082227651_
                     ___splice235500235501_
                     _target227085227654_
                     _tl227087227656_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match235539235540_
                                                     _e227084227646_
                                                     _hd227083227649_
                                                     _tl227082227651_
                                                     ___splice235500235501_
                                                     _target227085227654_
                                                     _tl227087227656_))))
                                            (___match235539235540_
                                             _e227084227646_
                                             _hd227083227649_
                                             _tl227082227651_
                                             ___splice235500235501_
                                             _target227085227654_
                                             _tl227087227656_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop227088227659_ _target227085227654_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx235496235497_))
                  (let ((_e227084227646_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx235496235497_))))
                    (let ((_tl227082227651_
                           (let ()
                             (declare (not safe))
                             (##cdr _e227084227646_)))
                          (_hd227083227649_
                           (let ()
                             (declare (not safe))
                             (##car _e227084227646_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd227083227649_))
                          (let ((___splice235500235501_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd227083227649_
                                    '0))))
                            (let ((_tl227087227656_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice235500235501_ '1)))
                                  (_target227085227654_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice235500235501_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl227087227656_))
                                  (___match235527235528_
                                   _e227084227646_
                                   _hd227083227649_
                                   _tl227082227651_
                                   ___splice235500235501_
                                   _target227085227654_
                                   _tl227087227656_)
                                  (___match235539235540_
                                   _e227084227646_
                                   _hd227083227649_
                                   _tl227082227651_
                                   ___splice235500235501_
                                   _target227085227654_
                                   _tl227087227656_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl227082227651_))
                              (let ((_e227199227254_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl227082227651_))))
                                (let ((_tl227197227259_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e227199227254_)))
                                      (_hd227198227257_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e227199227254_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd227198227257_))
                                      (let ((_e227202227262_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd227198227257_))))
                                        (let ((_tl227200227267_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e227202227262_)))
                                              (_hd227201227265_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e227202227262_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd227201227265_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd227201227265_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl227200227267_))
                                                      (let ((_e227205227270_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl227200227267_))))
                (let ((_tl227203227275_
                       (let () (declare (not safe)) (##cdr _e227205227270_)))
                      (_hd227204227273_
                       (let () (declare (not safe)) (##car _e227205227270_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd227204227273_))
                      (let ((_e227208227278_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd227204227273_))))
                        (let ((_tl227206227283_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e227208227278_)))
                              (_hd227207227281_
                               (let ()
                                 (declare (not safe))
                                 (##car _e227208227278_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd227207227281_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd227207227281_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl227206227283_))
                                      (let ((_e227211227286_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl227206227283_))))
                                        (let ((_tl227209227291_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e227211227286_)))
                                              (_hd227210227289_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e227211227286_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl227209227291_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl227203227275_))
                                                  (let ((_e227214227294_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl227203227275_))))
                                                    (let ((_tl227212227299_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e227214227294_)))
                                                          (_hd227213227297_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e227214227294_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd227213227297_))
                                                          (let ((_e227217227302_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd227213227297_))))
                    (let ((_tl227215227307_
                           (let ()
                             (declare (not safe))
                             (##cdr _e227217227302_)))
                          (_hd227216227305_
                           (let ()
                             (declare (not safe))
                             (##car _e227217227302_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd227216227305_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd227216227305_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl227215227307_))
                                  (let ((_e227220227310_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl227215227307_))))
                                    (let ((_tl227218227315_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e227220227310_)))
                                          (_hd227219227313_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e227220227310_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl227218227315_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl227212227299_))
                                              (let ((_e227223227318_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl227212227299_))))
                                                (let ((_tl227221227323_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e227223227318_)))
                                                      (_hd227222227321_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e227223227318_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd227222227321_))
                                                      (let ((_e227226227326_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd227222227321_))))
                (let ((_tl227224227331_
                       (let () (declare (not safe)) (##cdr _e227226227326_)))
                      (_hd227225227329_
                       (let () (declare (not safe)) (##car _e227226227326_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd227225227329_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd227225227329_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl227224227331_))
                              (let ((_e227229227334_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl227224227331_))))
                                (let ((_tl227227227339_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e227229227334_)))
                                      (_hd227228227337_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e227229227334_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl227227227339_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl227221227323_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl227197227259_))
                                              (___match235637235638_
                                               _e227084227646_
                                               _hd227083227649_
                                               _tl227082227651_
                                               _e227199227254_
                                               _hd227198227257_
                                               _tl227197227259_
                                               _e227202227262_
                                               _hd227201227265_
                                               _tl227200227267_
                                               _e227205227270_
                                               _hd227204227273_
                                               _tl227203227275_
                                               _e227208227278_
                                               _hd227207227281_
                                               _tl227206227283_
                                               _e227211227286_
                                               _hd227210227289_
                                               _tl227209227291_
                                               _e227214227294_
                                               _hd227213227297_
                                               _tl227212227299_
                                               _e227217227302_
                                               _hd227216227305_
                                               _tl227215227307_
                                               _e227220227310_
                                               _hd227219227313_
                                               _tl227218227315_
                                               _e227223227318_
                                               _hd227222227321_
                                               _tl227221227323_
                                               _e227226227326_
                                               _hd227225227329_
                                               _tl227224227331_
                                               _e227229227334_
                                               _hd227228227337_
                                               _tl227227227339_)
                                              (___kont235512235513_))
                                          (___kont235512235513_))
                                      (___kont235512235513_))))
                              (___kont235512235513_))
                          (___kont235512235513_))
                      (___kont235512235513_))))
              (___kont235512235513_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont235512235513_))
                                          (___kont235512235513_))))
                                  (___kont235512235513_))
                              (___kont235512235513_))
                          (___kont235512235513_))))
                  (___kont235512235513_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont235512235513_))
                                              (___kont235512235513_))))
                                      (___kont235512235513_))
                                  (___kont235512235513_))
                              (___kont235512235513_))))
                      (___kont235512235513_))))
              (___kont235512235513_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont235512235513_))
                                              (___kont235512235513_))))
                                      (___kont235512235513_))))
                              (___kont235512235513_)))))
                  (___kont235512235513_)))))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_form226540_)
        (let* ((___stx235640235641_ _form226540_)
               (_g226544226668_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx235640235641_)))))
          (let ((___kont235642235643_
                 (lambda (_L227038_ _L227039_ _L227040_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L227039_))))
                (___kont235648235649_
                 (lambda (_L226886_ _L226887_ _L226888_ _L226889_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L226886_))))
                (___kont235652235653_
                 (lambda (_L226753_ _L226754_ _L226755_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L226753_)))))
            (let* ((___match235749235750_
                    (lambda (_e226636226673_
                             _hd226635226676_
                             _tl226634226678_
                             _e226639226681_
                             _hd226638226684_
                             _tl226637226686_
                             _e226642226689_
                             _hd226641226692_
                             _tl226640226694_
                             _e226645226697_
                             _hd226644226700_
                             _tl226643226702_
                             _e226648226705_
                             _hd226647226708_
                             _tl226646226710_
                             _e226651226713_
                             _hd226650226716_
                             _tl226649226718_
                             _e226654226721_
                             _hd226653226724_
                             _tl226652226726_
                             _e226657226729_
                             _hd226656226732_
                             _tl226655226734_
                             _e226660226737_
                             _hd226659226740_
                             _tl226658226742_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl226652226726_))
                          (let ((_e226663226745_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl226652226726_))))
                            (let ((_tl226661226750_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e226663226745_)))
                                  (_hd226662226748_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e226663226745_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl226661226750_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl226637226686_))
                                      (___kont235652235653_
                                       _hd226659226740_
                                       _hd226650226716_
                                       _hd226635226676_)
                                      (let ()
                                        (declare (not safe))
                                        (_g226544226668_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g226544226668_)))))
                          (let () (declare (not safe)) (_g226544226668_)))))
                   (___match235679235680_
                    (lambda (_e226597226790_
                             _hd226596226793_
                             _tl226595226795_
                             ___splice235650235651_
                             _target226598226798_
                             _tl226600226800_)
                      (letrec ((_loop226601226803_
                                (lambda (_hd226599226806_ _arg226605226808_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd226599226806_))
                                      (let ((_e226602226811_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd226599226806_))))
                                        (let ((_lp-tl226604226816_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e226602226811_)))
                                              (_lp-hd226603226814_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e226602226811_))))
                                          (let ((__tmp236904
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd226603226814_
                                                         _arg226605226808_))))
                                            (declare (not safe))
                                            (_loop226601226803_
                                             _lp-tl226604226816_
                                             __tmp236904))))
                                      (let ((_arg226606226819_
                                             (reverse _arg226605226808_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl226595226795_))
                                            (let ((_e226609226822_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl226595226795_))))
                                              (let ((_tl226607226827_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e226609226822_)))
                                                    (_hd226608226825_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e226609226822_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd226608226825_))
                                                    (let ((_e226612226830_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd226608226825_))))
                                                      (let ((_tl226610226835_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e226612226830_)))
                    (_hd226611226833_
                     (let () (declare (not safe)) (##car _e226612226830_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd226611226833_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd226611226833_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl226610226835_))
                            (let ((_e226615226838_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl226610226835_))))
                              (let ((_tl226613226843_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e226615226838_)))
                                    (_hd226614226841_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e226615226838_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd226614226841_))
                                    (let ((_e226618226846_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd226614226841_))))
                                      (let ((_tl226616226851_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e226618226846_)))
                                            (_hd226617226849_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e226618226846_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd226617226849_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd226617226849_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl226616226851_))
                                                    (let ((_e226621226854_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl226616226851_))))
                                                      (let ((_tl226619226859_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e226621226854_)))
                    (_hd226620226857_
                     (let () (declare (not safe)) (##car _e226621226854_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl226619226859_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl226613226843_))
                        (let ((_e226624226862_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl226613226843_))))
                          (let ((_tl226622226867_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e226624226862_)))
                                (_hd226623226865_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e226624226862_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd226623226865_))
                                (let ((_e226627226870_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd226623226865_))))
                                  (let ((_tl226625226875_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e226627226870_)))
                                        (_hd226626226873_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e226627226870_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd226626226873_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd226626226873_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl226625226875_))
                                                (let ((_e226630226878_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl226625226875_))))
                                                  (let ((_tl226628226883_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e226630226878_)))
                                                        (_hd226629226881_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e226630226878_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl226628226883_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl226607226827_))
                                                            (___kont235648235649_
                                                             _hd226629226881_
                                                             _hd226620226857_
                                                             _tl226600226800_
                                                             _arg226606226819_)
                                                            (___match235749235750_
                                                             _e226597226790_
                                                             _hd226596226793_
                                                             _tl226595226795_
                                                             _e226609226822_
                                                             _hd226608226825_
                                                             _tl226607226827_
                                                             _e226612226830_
                                                             _hd226611226833_
                                                             _tl226610226835_
                                                             _e226615226838_
                                                             _hd226614226841_
                                                             _tl226613226843_
                                                             _e226618226846_
                                                             _hd226617226849_
                                                             _tl226616226851_
                                                             _e226621226854_
                                                             _hd226620226857_
                                                             _tl226619226859_
                                                             _e226624226862_
                                                             _hd226623226865_
                                                             _tl226622226867_
                                                             _e226627226870_
                                                             _hd226626226873_
                                                             _tl226625226875_
                                                             _e226630226878_
                                                             _hd226629226881_
                                                             _tl226628226883_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g226544226668_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g226544226668_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g226544226668_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g226544226668_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g226544226668_)))))
                        (let () (declare (not safe)) (_g226544226668_)))
                    (let () (declare (not safe)) (_g226544226668_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g226544226668_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g226544226668_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g226544226668_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g226544226668_)))))
                            (let () (declare (not safe)) (_g226544226668_)))
                        (let () (declare (not safe)) (_g226544226668_)))
                    (let () (declare (not safe)) (_g226544226668_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g226544226668_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g226544226668_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop226601226803_ _target226598226798_ '())))))
                   (___match235667235668_
                    (lambda (_e226551226926_
                             _hd226550226929_
                             _tl226549226931_
                             ___splice235644235645_
                             _target226552226934_
                             _tl226554226936_)
                      (letrec ((_loop226555226939_
                                (lambda (_hd226553226942_ _arg226559226944_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd226553226942_))
                                      (let ((_e226556226947_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd226553226942_))))
                                        (let ((_lp-tl226558226952_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e226556226947_)))
                                              (_lp-hd226557226950_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e226556226947_))))
                                          (let ((__tmp236906
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd226557226950_
                                                         _arg226559226944_))))
                                            (declare (not safe))
                                            (_loop226555226939_
                                             _lp-tl226558226952_
                                             __tmp236906))))
                                      (let ((_arg226560226955_
                                             (reverse _arg226559226944_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl226549226931_))
                                            (let ((_e226563226958_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl226549226931_))))
                                              (let ((_tl226561226963_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e226563226958_)))
                                                    (_hd226562226961_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e226563226958_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd226562226961_))
                                                    (let ((_e226566226966_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd226562226961_))))
                                                      (let ((_tl226564226971_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e226566226966_)))
                    (_hd226565226969_
                     (let () (declare (not safe)) (##car _e226566226966_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd226565226969_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd226565226969_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl226564226971_))
                            (let ((_e226569226974_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl226564226971_))))
                              (let ((_tl226567226979_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e226569226974_)))
                                    (_hd226568226977_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e226569226974_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd226568226977_))
                                    (let ((_e226572226982_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd226568226977_))))
                                      (let ((_tl226570226987_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e226572226982_)))
                                            (_hd226571226985_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e226572226982_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd226571226985_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd226571226985_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl226570226987_))
                                                    (let ((_e226575226990_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl226570226987_))))
                                                      (let ((_tl226573226995_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e226575226990_)))
                    (_hd226574226993_
                     (let () (declare (not safe)) (##car _e226575226990_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl226573226995_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl226567226979_))
                        (let ((___splice235646235647_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl226567226979_
                                  '0))))
                          (let ((_tl226578227000_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice235646235647_ '1)))
                                (_target226576226998_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice235646235647_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl226578227000_))
                                (letrec ((_loop226579227003_
                                          (lambda (_hd226577227006_
                                                   _xarg226583227008_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd226577227006_))
                                                (let ((_e226580227011_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd226577227006_))))
                                                  (let ((_lp-tl226582227016_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e226580227011_)))
                                                        (_lp-hd226581227014_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e226580227011_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd226581227014_))
                                                        (let ((_e226587227019_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd226581227014_))))
                  (let ((_tl226585227024_
                         (let () (declare (not safe)) (##cdr _e226587227019_)))
                        (_hd226586227022_
                         (let ()
                           (declare (not safe))
                           (##car _e226587227019_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd226586227022_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd226586227022_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl226585227024_))
                                (let ((_e226590227027_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl226585227024_))))
                                  (let ((_tl226588227032_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e226590227027_)))
                                        (_hd226589227030_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e226590227027_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl226588227032_))
                                        (let ((__tmp236905
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd226589227030_
                                                       _xarg226583227008_))))
                                          (declare (not safe))
                                          (_loop226579227003_
                                           _lp-tl226582227016_
                                           __tmp236905))
                                        (___match235679235680_
                                         _e226551226926_
                                         _hd226550226929_
                                         _tl226549226931_
                                         ___splice235644235645_
                                         _target226552226934_
                                         _tl226554226936_))))
                                (___match235679235680_
                                 _e226551226926_
                                 _hd226550226929_
                                 _tl226549226931_
                                 ___splice235644235645_
                                 _target226552226934_
                                 _tl226554226936_))
                            (___match235679235680_
                             _e226551226926_
                             _hd226550226929_
                             _tl226549226931_
                             ___splice235644235645_
                             _target226552226934_
                             _tl226554226936_))
                        (___match235679235680_
                         _e226551226926_
                         _hd226550226929_
                         _tl226549226931_
                         ___splice235644235645_
                         _target226552226934_
                         _tl226554226936_))))
                (___match235679235680_
                 _e226551226926_
                 _hd226550226929_
                 _tl226549226931_
                 ___splice235644235645_
                 _target226552226934_
                 _tl226554226936_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg226584227035_
                                                       (reverse _xarg226583227008_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl226561226963_))
                                                      (___kont235642235643_
                                                       _xarg226584227035_
                                                       _hd226574226993_
                                                       _arg226560226955_)
                                                      (___match235679235680_
                                                       _e226551226926_
                                                       _hd226550226929_
                                                       _tl226549226931_
                                                       ___splice235644235645_
                                                       _target226552226934_
                                                       _tl226554226936_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_loop226579227003_
                                     _target226576226998_
                                     '())))
                                (___match235679235680_
                                 _e226551226926_
                                 _hd226550226929_
                                 _tl226549226931_
                                 ___splice235644235645_
                                 _target226552226934_
                                 _tl226554226936_))))
                        (___match235679235680_
                         _e226551226926_
                         _hd226550226929_
                         _tl226549226931_
                         ___splice235644235645_
                         _target226552226934_
                         _tl226554226936_))
                    (___match235679235680_
                     _e226551226926_
                     _hd226550226929_
                     _tl226549226931_
                     ___splice235644235645_
                     _target226552226934_
                     _tl226554226936_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match235679235680_
                                                     _e226551226926_
                                                     _hd226550226929_
                                                     _tl226549226931_
                                                     ___splice235644235645_
                                                     _target226552226934_
                                                     _tl226554226936_))
                                                (___match235679235680_
                                                 _e226551226926_
                                                 _hd226550226929_
                                                 _tl226549226931_
                                                 ___splice235644235645_
                                                 _target226552226934_
                                                 _tl226554226936_))
                                            (___match235679235680_
                                             _e226551226926_
                                             _hd226550226929_
                                             _tl226549226931_
                                             ___splice235644235645_
                                             _target226552226934_
                                             _tl226554226936_))))
                                    (___match235679235680_
                                     _e226551226926_
                                     _hd226550226929_
                                     _tl226549226931_
                                     ___splice235644235645_
                                     _target226552226934_
                                     _tl226554226936_))))
                            (___match235679235680_
                             _e226551226926_
                             _hd226550226929_
                             _tl226549226931_
                             ___splice235644235645_
                             _target226552226934_
                             _tl226554226936_))
                        (___match235679235680_
                         _e226551226926_
                         _hd226550226929_
                         _tl226549226931_
                         ___splice235644235645_
                         _target226552226934_
                         _tl226554226936_))
                    (___match235679235680_
                     _e226551226926_
                     _hd226550226929_
                     _tl226549226931_
                     ___splice235644235645_
                     _target226552226934_
                     _tl226554226936_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match235679235680_
                                                     _e226551226926_
                                                     _hd226550226929_
                                                     _tl226549226931_
                                                     ___splice235644235645_
                                                     _target226552226934_
                                                     _tl226554226936_))))
                                            (___match235679235680_
                                             _e226551226926_
                                             _hd226550226929_
                                             _tl226549226931_
                                             ___splice235644235645_
                                             _target226552226934_
                                             _tl226554226936_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop226555226939_ _target226552226934_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx235640235641_))
                  (let ((_e226551226926_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx235640235641_))))
                    (let ((_tl226549226931_
                           (let ()
                             (declare (not safe))
                             (##cdr _e226551226926_)))
                          (_hd226550226929_
                           (let ()
                             (declare (not safe))
                             (##car _e226551226926_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd226550226929_))
                          (let ((___splice235644235645_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd226550226929_
                                    '0))))
                            (let ((_tl226554226936_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice235644235645_ '1)))
                                  (_target226552226934_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice235644235645_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl226554226936_))
                                  (___match235667235668_
                                   _e226551226926_
                                   _hd226550226929_
                                   _tl226549226931_
                                   ___splice235644235645_
                                   _target226552226934_
                                   _tl226554226936_)
                                  (___match235679235680_
                                   _e226551226926_
                                   _hd226550226929_
                                   _tl226549226931_
                                   ___splice235644235645_
                                   _target226552226934_
                                   _tl226554226936_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl226549226931_))
                              (let ((_e226639226681_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl226549226931_))))
                                (let ((_tl226637226686_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e226639226681_)))
                                      (_hd226638226684_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e226639226681_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd226638226684_))
                                      (let ((_e226642226689_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd226638226684_))))
                                        (let ((_tl226640226694_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e226642226689_)))
                                              (_hd226641226692_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e226642226689_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd226641226692_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd226641226692_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl226640226694_))
                                                      (let ((_e226645226697_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl226640226694_))))
                (let ((_tl226643226702_
                       (let () (declare (not safe)) (##cdr _e226645226697_)))
                      (_hd226644226700_
                       (let () (declare (not safe)) (##car _e226645226697_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd226644226700_))
                      (let ((_e226648226705_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd226644226700_))))
                        (let ((_tl226646226710_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e226648226705_)))
                              (_hd226647226708_
                               (let ()
                                 (declare (not safe))
                                 (##car _e226648226705_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd226647226708_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd226647226708_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl226646226710_))
                                      (let ((_e226651226713_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl226646226710_))))
                                        (let ((_tl226649226718_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e226651226713_)))
                                              (_hd226650226716_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e226651226713_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl226649226718_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl226643226702_))
                                                  (let ((_e226654226721_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl226643226702_))))
                                                    (let ((_tl226652226726_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e226654226721_)))
                                                          (_hd226653226724_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e226654226721_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd226653226724_))
                                                          (let ((_e226657226729_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd226653226724_))))
                    (let ((_tl226655226734_
                           (let ()
                             (declare (not safe))
                             (##cdr _e226657226729_)))
                          (_hd226656226732_
                           (let ()
                             (declare (not safe))
                             (##car _e226657226729_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd226656226732_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd226656226732_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl226655226734_))
                                  (let ((_e226660226737_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl226655226734_))))
                                    (let ((_tl226658226742_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e226660226737_)))
                                          (_hd226659226740_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e226660226737_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl226658226742_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl226652226726_))
                                              (let ((_e226663226745_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl226652226726_))))
                                                (let ((_tl226661226750_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e226663226745_)))
                                                      (_hd226662226748_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e226663226745_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl226661226750_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl226637226686_))
                                                          (___kont235652235653_
                                                           _hd226659226740_
                                                           _hd226650226716_
                                                           _hd226550226929_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g226544226668_)))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g226544226668_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g226544226668_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g226544226668_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g226544226668_)))
                              (let () (declare (not safe)) (_g226544226668_)))
                          (let () (declare (not safe)) (_g226544226668_)))))
                  (let () (declare (not safe)) (_g226544226668_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g226544226668_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g226544226668_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g226544226668_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g226544226668_)))
                              (let ()
                                (declare (not safe))
                                (_g226544226668_)))))
                      (let () (declare (not safe)) (_g226544226668_)))))
              (let () (declare (not safe)) (_g226544226668_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g226544226668_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g226544226668_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g226544226668_)))))
                              (let ()
                                (declare (not safe))
                                (_g226544226668_))))))
                  (let () (declare (not safe)) (_g226544226668_))))))))
    (define gxc#lambda-form-arity
      (lambda (_form226344_)
        (let* ((_g226346226360_
                (lambda (_g226347226357_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g226347226357_))))
               (_g226345226537_
                (lambda (_g226347226363_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g226347226363_))
                      (let ((_e226352226365_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g226347226363_))))
                        (let ((_hd226351226368_
                               (let ()
                                 (declare (not safe))
                                 (##car _e226352226365_)))
                              (_tl226350226370_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e226352226365_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl226350226370_))
                              (let ((_e226355226373_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl226350226370_))))
                                (let ((_hd226354226376_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e226355226373_)))
                                      (_tl226353226378_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e226355226373_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl226353226378_))
                                      ((lambda (_L226381_ _L226382_)
                                         (let* ((___stx235762235763_ _L226382_)
                                                (_g226397226425_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx235762235763_)))))
                                           (let ((___kont235764235765_
                                                  (lambda (_L226516_)
                                                    (length (let ((__tmp236907
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g226526226529_ _g226527226531_)
                             (let ()
                               (declare (not safe))
                               (cons _g226526226529_ _g226527226531_)))))
                      (declare (not safe))
                      (foldr1 __tmp236907 '() _L226516_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont235768235769_
                                                  (lambda (_L226467_ _L226468_)
                                                    (let ((__tmp236908
                                                           (length (let ((__tmp236909
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g226479226482_ _g226480226484_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g226479226482_
                                            _g226480226484_)))))
                             (declare (not safe))
                             (foldr1 __tmp236909 '() _L226468_)))))
              (declare (not safe))
              (cons __tmp236908 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont235772235773_
                                                  (lambda (_L226430_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '())))))
                                             (let* ((___match235787235788_
                                                     (lambda (___splice235770235771_
                                                              _target226411226443_
                                                              _tl226413226445_)
                                                       (letrec ((_loop226414226448_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd226412226451_ _arg226418226453_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd226412226451_))
                               (let ((_e226415226456_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd226412226451_))))
                                 (let ((_lp-tl226417226461_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e226415226456_)))
                                       (_lp-hd226416226459_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e226415226456_))))
                                   (let ((__tmp236910
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd226416226459_
                                                  _arg226418226453_))))
                                     (declare (not safe))
                                     (_loop226414226448_
                                      _lp-tl226417226461_
                                      __tmp236910))))
                               (let ((_arg226419226464_
                                      (reverse _arg226418226453_)))
                                 (___kont235768235769_
                                  _tl226413226445_
                                  _arg226419226464_))))))
                 (let ()
                   (declare (not safe))
                   (_loop226414226448_ _target226411226443_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match235781235782_
                                                     (lambda (___splice235766235767_
                                                              _target226400226492_
                                                              _tl226402226494_)
                                                       (letrec ((_loop226403226497_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd226401226500_ _arg226407226502_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd226401226500_))
                               (let ((_e226404226505_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd226401226500_))))
                                 (let ((_lp-tl226406226510_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e226404226505_)))
                                       (_lp-hd226405226508_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e226404226505_))))
                                   (let ((__tmp236911
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd226405226508_
                                                  _arg226407226502_))))
                                     (declare (not safe))
                                     (_loop226403226497_
                                      _lp-tl226406226510_
                                      __tmp236911))))
                               (let ((_arg226408226513_
                                      (reverse _arg226407226502_)))
                                 (___kont235764235765_ _arg226408226513_))))))
                 (let ()
                   (declare (not safe))
                   (_loop226403226497_ _target226400226492_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair/null?
                                                      ___stx235762235763_))
                                                   (let ((___splice235766235767_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-split-splice
                                                             ___stx235762235763_
                                                             '0))))
                                                     (let ((_tl226402226494_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice235766235767_
                                                               '1)))
                                                           (_target226400226492_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice235766235767_
                                                               '0))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl226402226494_))
                                                           (___match235781235782_
                                                            ___splice235766235767_
                                                            _target226400226492_
                                                            _tl226402226494_)
                                                           (___match235787235788_
                                                            ___splice235766235767_
                                                            _target226400226492_
                                                            _tl226402226494_))))
                                                   (___kont235772235773_
                                                    ___stx235762235763_))))))
                                       _hd226354226376_
                                       _hd226351226368_)
                                      (let ()
                                        (declare (not safe))
                                        (_g226346226360_ _g226347226363_)))))
                              (let ()
                                (declare (not safe))
                                (_g226346226360_ _g226347226363_)))))
                      (let ()
                        (declare (not safe))
                        (_g226346226360_ _g226347226363_))))))
          (declare (not safe))
          (_g226345226537_ _form226344_))))
    (define gxc#lambda-expr?
      (lambda (_expr226297_)
        (let* ((___stx235790235791_ _expr226297_)
               (_g226300226310_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx235790235791_)))))
          (let ((___kont235792235793_ (lambda (_L226330_) '#t))
                (___kont235794235795_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx235790235791_))
                (let ((_e226305226322_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx235790235791_))))
                  (let ((_tl226303226327_
                         (let () (declare (not safe)) (##cdr _e226305226322_)))
                        (_hd226304226325_
                         (let ()
                           (declare (not safe))
                           (##car _e226305226322_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd226304226325_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#lambda _hd226304226325_))
                            (___kont235792235793_ _tl226303226327_)
                            (___kont235794235795_))
                        (___kont235794235795_))))
                (___kont235794235795_))))))
    (define gxc#case-lambda-expr?
      (lambda (_expr226250_)
        (let* ((___stx235808235809_ _expr226250_)
               (_g226253226263_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx235808235809_)))))
          (let ((___kont235810235811_ (lambda (_L226283_) '#t))
                (___kont235812235813_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx235808235809_))
                (let ((_e226258226275_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx235808235809_))))
                  (let ((_tl226256226280_
                         (let () (declare (not safe)) (##cdr _e226258226275_)))
                        (_hd226257226278_
                         (let ()
                           (declare (not safe))
                           (##car _e226258226275_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd226257226278_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#case-lambda _hd226257226278_))
                            (___kont235810235811_ _tl226256226280_)
                            (___kont235812235813_))
                        (___kont235812235813_))))
                (___kont235812235813_))))))
    (define gxc#opt-lambda-expr?
      (lambda (_expr226119_)
        (let* ((___stx235826235827_ _expr226119_)
               (_g226122226152_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx235826235827_)))))
          (let ((___kont235828235829_
                 (lambda (_L226220_ _L226221_ _L226222_)
                   (if (let () (declare (not safe)) (gx#identifier? _L226222_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#lambda-expr? _L226221_))
                           (let ()
                             (declare (not safe))
                             (gxc#case-lambda-expr? _L226220_))
                           '#f)
                       '#f)))
                (___kont235830235831_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx235826235827_))
                (let ((_e226129226164_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx235826235827_))))
                  (let ((_tl226127226169_
                         (let () (declare (not safe)) (##cdr _e226129226164_)))
                        (_hd226128226167_
                         (let ()
                           (declare (not safe))
                           (##car _e226129226164_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd226128226167_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd226128226167_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl226127226169_))
                                (let ((_e226132226172_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl226127226169_))))
                                  (let ((_tl226130226177_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e226132226172_)))
                                        (_hd226131226175_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e226132226172_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd226131226175_))
                                        (let ((_e226135226180_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd226131226175_))))
                                          (let ((_tl226133226185_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e226135226180_)))
                                                (_hd226134226183_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e226135226180_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd226134226183_))
                                                (let ((_e226138226188_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd226134226183_))))
                                                  (let ((_tl226136226193_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e226138226188_)))
                                                        (_hd226137226191_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e226138226188_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd226137226191_))
                                                        (let ((_e226141226196_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd226137226191_))))
                  (let ((_tl226139226201_
                         (let () (declare (not safe)) (##cdr _e226141226196_)))
                        (_hd226140226199_
                         (let ()
                           (declare (not safe))
                           (##car _e226141226196_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl226139226201_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl226136226193_))
                            (let ((_e226144226204_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl226136226193_))))
                              (let ((_tl226142226209_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e226144226204_)))
                                    (_hd226143226207_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e226144226204_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl226142226209_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl226133226185_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl226130226177_))
                                            (let ((_e226147226212_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl226130226177_))))
                                              (let ((_tl226145226217_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e226147226212_)))
                                                    (_hd226146226215_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e226147226212_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl226145226217_))
                                                    (___kont235828235829_
                                                     _hd226146226215_
                                                     _hd226143226207_
                                                     _hd226140226199_)
                                                    (___kont235830235831_))))
                                            (___kont235830235831_))
                                        (___kont235830235831_))
                                    (___kont235830235831_))))
                            (___kont235830235831_))
                        (___kont235830235831_))))
                (___kont235830235831_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont235830235831_))))
                                        (___kont235830235831_))))
                                (___kont235830235831_))
                            (___kont235830235831_))
                        (___kont235830235831_))))
                (___kont235830235831_))))))
    (define gxc#kw-lambda-expr?
      (lambda (_expr225444_)
        (let* ((___stx235888235889_ _expr225444_)
               (_g225447225605_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx235888235889_)))))
          (let ((___kont235890235891_
                 (lambda (_L225993_
                          _L225994_
                          _L225995_
                          _L225996_
                          _L225997_
                          _L225998_
                          _L225999_
                          _L226000_
                          _L226001_
                          _L226002_
                          _L226003_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#runtime-identifier=? _L226000_ 'apply))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L225996_ 'apply))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#runtime-identifier=?
                                  _L225995_
                                  'keyword-dispatch))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L226003_
                                      _L225994_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L226002_
                                          _L225999_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L225997_
                                              _L225993_))
                                           (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L226001_
                                              _L225998_))
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)))
                (___kont235892235893_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx235888235889_))
                (let ((_e225462225617_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx235888235889_))))
                  (let ((_tl225460225622_
                         (let () (declare (not safe)) (##cdr _e225462225617_)))
                        (_hd225461225620_
                         (let ()
                           (declare (not safe))
                           (##car _e225462225617_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd225461225620_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd225461225620_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl225460225622_))
                                (let ((_e225465225625_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl225460225622_))))
                                  (let ((_tl225463225630_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e225465225625_)))
                                        (_hd225464225628_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e225465225625_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd225464225628_))
                                        (let ((_e225468225633_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd225464225628_))))
                                          (let ((_tl225466225638_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e225468225633_)))
                                                (_hd225467225636_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e225468225633_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd225467225636_))
                                                (let ((_e225471225641_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd225467225636_))))
                                                  (let ((_tl225469225646_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e225471225641_)))
                                                        (_hd225470225644_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e225471225641_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd225470225644_))
                                                        (let ((_e225474225649_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd225470225644_))))
                  (let ((_tl225472225654_
                         (let () (declare (not safe)) (##cdr _e225474225649_)))
                        (_hd225473225652_
                         (let ()
                           (declare (not safe))
                           (##car _e225474225649_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl225472225654_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl225469225646_))
                            (let ((_e225477225657_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl225469225646_))))
                              (let ((_tl225475225662_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e225477225657_)))
                                    (_hd225476225660_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e225477225657_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd225476225660_))
                                    (let ((_e225480225665_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd225476225660_))))
                                      (let ((_tl225478225670_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e225480225665_)))
                                            (_hd225479225668_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e225480225665_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd225479225668_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#let-values
                                                   _hd225479225668_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl225478225670_))
                                                    (let ((_e225483225673_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl225478225670_))))
                                                      (let ((_tl225481225678_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e225483225673_)))
                    (_hd225482225676_
                     (let () (declare (not safe)) (##car _e225483225673_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd225482225676_))
                    (let ((_e225486225681_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd225482225676_))))
                      (let ((_tl225484225686_
                             (let ()
                               (declare (not safe))
                               (##cdr _e225486225681_)))
                            (_hd225485225684_
                             (let ()
                               (declare (not safe))
                               (##car _e225486225681_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd225485225684_))
                            (let ((_e225489225689_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd225485225684_))))
                              (let ((_tl225487225694_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e225489225689_)))
                                    (_hd225488225692_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e225489225689_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd225488225692_))
                                    (let ((_e225492225697_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd225488225692_))))
                                      (let ((_tl225490225702_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e225492225697_)))
                                            (_hd225491225700_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e225492225697_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl225490225702_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl225487225694_))
                                                (let ((_e225495225705_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl225487225694_))))
                                                  (let ((_tl225493225710_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e225495225705_)))
                                                        (_hd225494225708_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e225495225705_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl225493225710_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl225484225686_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl225481225678_))
                        (let ((_e225498225713_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl225481225678_))))
                          (let ((_tl225496225718_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e225498225713_)))
                                (_hd225497225716_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e225498225713_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd225497225716_))
                                (let ((_e225501225721_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd225497225716_))))
                                  (let ((_tl225499225726_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e225501225721_)))
                                        (_hd225500225724_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e225501225721_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd225500225724_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#lambda
                                               _hd225500225724_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl225499225726_))
                                                (let ((_e225504225729_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl225499225726_))))
                                                  (let ((_tl225502225734_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e225504225729_)))
                                                        (_hd225503225732_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e225504225729_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd225503225732_))
                                                        (let ((_e225507225737_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd225503225732_))))
                  (let ((_tl225505225742_
                         (let () (declare (not safe)) (##cdr _e225507225737_)))
                        (_hd225506225740_
                         (let ()
                           (declare (not safe))
                           (##car _e225507225737_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl225502225734_))
                        (let ((_e225510225745_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl225502225734_))))
                          (let ((_tl225508225750_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e225510225745_)))
                                (_hd225509225748_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e225510225745_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd225509225748_))
                                (let ((_e225513225753_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd225509225748_))))
                                  (let ((_tl225511225758_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e225513225753_)))
                                        (_hd225512225756_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e225513225753_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd225512225756_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#call
                                               _hd225512225756_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl225511225758_))
                                                (let ((_e225516225761_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl225511225758_))))
                                                  (let ((_tl225514225766_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e225516225761_)))
                                                        (_hd225515225764_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e225516225761_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd225515225764_))
                                                        (let ((_e225519225769_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd225515225764_))))
                  (let ((_tl225517225774_
                         (let () (declare (not safe)) (##cdr _e225519225769_)))
                        (_hd225518225772_
                         (let ()
                           (declare (not safe))
                           (##car _e225519225769_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd225518225772_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd225518225772_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl225517225774_))
                                (let ((_e225522225777_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl225517225774_))))
                                  (let ((_tl225520225782_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e225522225777_)))
                                        (_hd225521225780_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e225522225777_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl225520225782_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl225514225766_))
                                            (let ((_e225525225785_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl225514225766_))))
                                              (let ((_tl225523225790_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e225525225785_)))
                                                    (_hd225524225788_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e225525225785_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd225524225788_))
                                                    (let ((_e225528225793_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd225524225788_))))
                                                      (let ((_tl225526225798_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e225528225793_)))
                    (_hd225527225796_
                     (let () (declare (not safe)) (##car _e225528225793_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd225527225796_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd225527225796_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl225526225798_))
                            (let ((_e225531225801_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl225526225798_))))
                              (let ((_tl225529225806_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e225531225801_)))
                                    (_hd225530225804_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e225531225801_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl225529225806_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl225523225790_))
                                        (let ((_e225534225809_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl225523225790_))))
                                          (let ((_tl225532225814_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e225534225809_)))
                                                (_hd225533225812_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e225534225809_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd225533225812_))
                                                (let ((_e225537225817_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd225533225812_))))
                                                  (let ((_tl225535225822_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e225537225817_)))
                                                        (_hd225536225820_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e225537225817_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd225536225820_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd225536225820_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl225535225822_))
                        (let ((_e225540225825_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl225535225822_))))
                          (let ((_tl225538225830_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e225540225825_)))
                                (_hd225539225828_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e225540225825_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl225538225830_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl225508225750_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl225496225718_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl225475225662_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl225466225638_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl225463225630_))
                                                    (let ((_e225543225833_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl225463225630_))))
                                                      (let ((_tl225541225838_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e225543225833_)))
                    (_hd225542225836_
                     (let () (declare (not safe)) (##car _e225543225833_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd225542225836_))
                    (let ((_e225546225841_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd225542225836_))))
                      (let ((_tl225544225846_
                             (let ()
                               (declare (not safe))
                               (##cdr _e225546225841_)))
                            (_hd225545225844_
                             (let ()
                               (declare (not safe))
                               (##car _e225546225841_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd225545225844_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#lambda _hd225545225844_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl225544225846_))
                                    (let ((_e225549225849_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl225544225846_))))
                                      (let ((_tl225547225854_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e225549225849_)))
                                            (_hd225548225852_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e225549225849_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl225547225854_))
                                            (let ((_e225552225857_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl225547225854_))))
                                              (let ((_tl225550225862_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e225552225857_)))
                                                    (_hd225551225860_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e225552225857_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd225551225860_))
                                                    (let ((_e225555225865_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd225551225860_))))
                                                      (let ((_tl225553225870_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e225555225865_)))
                    (_hd225554225868_
                     (let () (declare (not safe)) (##car _e225555225865_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd225554225868_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd225554225868_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl225553225870_))
                            (let ((_e225558225873_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl225553225870_))))
                              (let ((_tl225556225878_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e225558225873_)))
                                    (_hd225557225876_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e225558225873_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd225557225876_))
                                    (let ((_e225561225881_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd225557225876_))))
                                      (let ((_tl225559225886_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e225561225881_)))
                                            (_hd225560225884_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e225561225881_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd225560225884_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd225560225884_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl225559225886_))
                                                    (let ((_e225564225889_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl225559225886_))))
                                                      (let ((_tl225562225894_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e225564225889_)))
                    (_hd225563225892_
                     (let () (declare (not safe)) (##car _e225564225889_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl225562225894_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl225556225878_))
                        (let ((_e225567225897_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl225556225878_))))
                          (let ((_tl225565225902_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e225567225897_)))
                                (_hd225566225900_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e225567225897_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd225566225900_))
                                (let ((_e225570225905_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd225566225900_))))
                                  (let ((_tl225568225910_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e225570225905_)))
                                        (_hd225569225908_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e225570225905_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd225569225908_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd225569225908_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl225568225910_))
                                                (let ((_e225573225913_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl225568225910_))))
                                                  (let ((_tl225571225918_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e225573225913_)))
                                                        (_hd225572225916_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e225573225913_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl225571225918_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl225565225902_))
                                                            (let ((_e225576225921_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl225565225902_))))
                      (let ((_tl225574225926_
                             (let ()
                               (declare (not safe))
                               (##cdr _e225576225921_)))
                            (_hd225575225924_
                             (let ()
                               (declare (not safe))
                               (##car _e225576225921_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd225575225924_))
                            (let ((_e225579225929_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd225575225924_))))
                              (let ((_tl225577225934_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e225579225929_)))
                                    (_hd225578225932_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e225579225929_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd225578225932_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd225578225932_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl225577225934_))
                                            (let ((_e225582225937_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl225577225934_))))
                                              (let ((_tl225580225942_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e225582225937_)))
                                                    (_hd225581225940_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e225582225937_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl225580225942_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl225574225926_))
                                                        (let ((_e225585225945_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl225574225926_))))
                  (let ((_tl225583225950_
                         (let () (declare (not safe)) (##cdr _e225585225945_)))
                        (_hd225584225948_
                         (let ()
                           (declare (not safe))
                           (##car _e225585225945_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd225584225948_))
                        (let ((_e225588225953_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd225584225948_))))
                          (let ((_tl225586225958_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e225588225953_)))
                                (_hd225587225956_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e225588225953_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd225587225956_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd225587225956_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl225586225958_))
                                        (let ((_e225591225961_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl225586225958_))))
                                          (let ((_tl225589225966_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e225591225961_)))
                                                (_hd225590225964_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e225591225961_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl225589225966_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl225583225950_))
                                                    (let ((_e225594225969_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl225583225950_))))
                                                      (let ((_tl225592225974_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e225594225969_)))
                    (_hd225593225972_
                     (let () (declare (not safe)) (##car _e225594225969_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd225593225972_))
                    (let ((_e225597225977_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd225593225972_))))
                      (let ((_tl225595225982_
                             (let ()
                               (declare (not safe))
                               (##cdr _e225597225977_)))
                            (_hd225596225980_
                             (let ()
                               (declare (not safe))
                               (##car _e225597225977_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd225596225980_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#ref _hd225596225980_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl225595225982_))
                                    (let ((_e225600225985_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl225595225982_))))
                                      (let ((_tl225598225990_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e225600225985_)))
                                            (_hd225599225988_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e225600225985_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl225598225990_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl225592225974_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl225550225862_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl225541225838_))
                                                        (___kont235890235891_
                                                         _hd225599225988_
                                                         _hd225590225964_
                                                         _hd225572225916_
                                                         _hd225563225892_
                                                         _hd225548225852_
                                                         _hd225539225828_
                                                         _hd225530225804_
                                                         _hd225521225780_
                                                         _hd225506225740_
                                                         _hd225491225700_
                                                         _hd225473225652_)
                                                        (___kont235892235893_))
                                                    (___kont235892235893_))
                                                (___kont235892235893_))
                                            (___kont235892235893_))))
                                    (___kont235892235893_))
                                (___kont235892235893_))
                            (___kont235892235893_))))
                    (___kont235892235893_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont235892235893_))
                                                (___kont235892235893_))))
                                        (___kont235892235893_))
                                    (___kont235892235893_))
                                (___kont235892235893_))))
                        (___kont235892235893_))))
                (___kont235892235893_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont235892235893_))))
                                            (___kont235892235893_))
                                        (___kont235892235893_))
                                    (___kont235892235893_))))
                            (___kont235892235893_))))
                    (___kont235892235893_))
                (___kont235892235893_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont235892235893_))
                                            (___kont235892235893_))
                                        (___kont235892235893_))))
                                (___kont235892235893_))))
                        (___kont235892235893_))
                    (___kont235892235893_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont235892235893_))
                                                (___kont235892235893_))
                                            (___kont235892235893_))))
                                    (___kont235892235893_))))
                            (___kont235892235893_))
                        (___kont235892235893_))
                    (___kont235892235893_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont235892235893_))))
                                            (___kont235892235893_))))
                                    (___kont235892235893_))
                                (___kont235892235893_))
                            (___kont235892235893_))))
                    (___kont235892235893_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont235892235893_))
                                                (___kont235892235893_))
                                            (___kont235892235893_))
                                        (___kont235892235893_))
                                    (___kont235892235893_))
                                (___kont235892235893_))))
                        (___kont235892235893_))
                    (___kont235892235893_))
                (___kont235892235893_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont235892235893_))))
                                        (___kont235892235893_))
                                    (___kont235892235893_))))
                            (___kont235892235893_))
                        (___kont235892235893_))
                    (___kont235892235893_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont235892235893_))))
                                            (___kont235892235893_))
                                        (___kont235892235893_))))
                                (___kont235892235893_))
                            (___kont235892235893_))
                        (___kont235892235893_))))
                (___kont235892235893_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont235892235893_))
                                            (___kont235892235893_))
                                        (___kont235892235893_))))
                                (___kont235892235893_))))
                        (___kont235892235893_))))
                (___kont235892235893_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont235892235893_))
                                            (___kont235892235893_))
                                        (___kont235892235893_))))
                                (___kont235892235893_))))
                        (___kont235892235893_))
                    (___kont235892235893_))
                (___kont235892235893_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont235892235893_))
                                            (___kont235892235893_))))
                                    (___kont235892235893_))))
                            (___kont235892235893_))))
                    (___kont235892235893_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont235892235893_))
                                                (___kont235892235893_))
                                            (___kont235892235893_))))
                                    (___kont235892235893_))))
                            (___kont235892235893_))
                        (___kont235892235893_))))
                (___kont235892235893_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont235892235893_))))
                                        (___kont235892235893_))))
                                (___kont235892235893_))
                            (___kont235892235893_))
                        (___kont235892235893_))))
                (___kont235892235893_))))))
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx225186_ _id225187_ _clauses225188_ _gensym?225189_)
        (let _lp225191_ ((_rest225193_ _clauses225188_)
                         (_ids225194_ '())
                         (_impls225195_ '())
                         (_clauses225196_ '()))
          (let* ((_rest225197225205_ _rest225193_)
                 (_else225199225213_
                  (lambda ()
                    (values (reverse _ids225194_)
                            (reverse _impls225195_)
                            (reverse _clauses225196_))))
                 (_K225201225418_
                  (lambda (_rest225216_ _clause225217_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#dispatch-lambda-form? _clause225217_))
                        (let ((__tmp236967
                               (let ()
                                 (declare (not safe))
                                 (cons _clause225217_ _clauses225196_))))
                          (declare (not safe))
                          (_lp225191_
                           _rest225216_
                           _ids225194_
                           _impls225195_
                           __tmp236967))
                        (let* ((_g225219225230_
                                (lambda (_g225220225227_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g225220225227_))))
                               (_g225218225415_
                                (lambda (_g225220225233_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _g225220225233_))
                                      (let ((_e225225225235_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _g225220225233_))))
                                        (let ((_hd225224225238_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e225225225235_)))
                                              (_tl225223225240_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e225225225235_))))
                                          ((lambda (_L225243_ _L225244_)
                                             (let* ((_id225261_
                                                     (let ((__tmp236914
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _id225187_)))
                                                           (__tmp236913
                                                            (length _clauses225196_))
                                                           (__tmp236912
                                                            (if _gensym?225189_
                                                                (gensym '__)
                                                                '"")))
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        __tmp236914
                                                        '"__"
                                                        __tmp236913
                                                        __tmp236912)))
                                                    (_id225263_
                                                     (let ((__tmp236915
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-source
                                                               _stx225186_))))
                                                       (declare (not safe))
                                                       (gx#core-quote-syntax__1
                                                        _id225261_
                                                        __tmp236915)))
                                                    (_impl225265_
                                                     (let ((__tmp236916
                                                            (let ((__tmp236918
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '%#lambda)))
                          (__tmp236917
                           (let ()
                             (declare (not safe))
                             (cons _L225244_ _L225243_))))
                      (declare (not safe))
                      (cons __tmp236918 __tmp236917))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp236916 _stx225186_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause225412_
                                                     (let* ((___stx236272236273_
                                                             _L225244_)
                                                            (_g225269225297_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx236272236273_)))))
               (let ((___kont236274236275_
                      (lambda (_L225391_)
                        (let ((__tmp236919
                               (let ((__tmp236920
                                      (let ((__tmp236921
                                             (let ((__tmp236922
                                                    (let ((__tmp236928
                                                           (let ((__tmp236929
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id225263_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp236929)))
                  (__tmp236923
                   (let ((__tmp236924
                          (lambda (_g225401225404_ _g225402225406_)
                            (let ((__tmp236925
                                   (let ((__tmp236927
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp236926
                                          (let ()
                                            (declare (not safe))
                                            (cons _g225401225404_ '()))))
                                     (declare (not safe))
                                     (cons __tmp236927 __tmp236926))))
                              (declare (not safe))
                              (cons __tmp236925 _g225402225406_)))))
                     (declare (not safe))
                     (foldr1 __tmp236924 '() _L225391_))))
              (declare (not safe))
              (cons __tmp236928 __tmp236923))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp236922))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp236921
                                         _stx225186_))))
                                 (declare (not safe))
                                 (cons __tmp236920 '()))))
                          (declare (not safe))
                          (cons _L225244_ __tmp236919))))
                     (___kont236278236279_
                      (lambda (_L225342_ _L225343_)
                        (let ((__tmp236930
                               (let ((__tmp236931
                                      (let ((__tmp236932
                                             (let ((__tmp236933
                                                    (let ((__tmp236947
                                                           (let ((__tmp236948
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp236948)))
                  (__tmp236934
                   (let ((__tmp236945
                          (let ((__tmp236946
                                 (let ()
                                   (declare (not safe))
                                   (cons _id225263_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp236946)))
                         (__tmp236935
                          (let ((__tmp236941
                                 (let ((__tmp236942
                                        (let ((__tmp236944
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)))
                                              (__tmp236943
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L225342_ '()))))
                                          (declare (not safe))
                                          (cons __tmp236944 __tmp236943))))
                                   (declare (not safe))
                                   (cons __tmp236942 '())))
                                (__tmp236936
                                 (let ((__tmp236937
                                        (lambda (_g225354225357_
                                                 _g225355225359_)
                                          (let ((__tmp236938
                                                 (let ((__tmp236940
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)))
                                                       (__tmp236939
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g225354225357_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp236940
                                                         __tmp236939))))
                                            (declare (not safe))
                                            (cons __tmp236938
                                                  _g225355225359_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp236937 '() _L225343_))))
                            (declare (not safe))
                            (foldr1 cons __tmp236941 __tmp236936))))
                     (declare (not safe))
                     (cons __tmp236945 __tmp236935))))
              (declare (not safe))
              (cons __tmp236947 __tmp236934))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp236933))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp236932
                                         _stx225186_))))
                                 (declare (not safe))
                                 (cons __tmp236931 '()))))
                          (declare (not safe))
                          (cons _L225244_ __tmp236930))))
                     (___kont236282236283_
                      (lambda (_L225302_)
                        (let ((__tmp236949
                               (let ((__tmp236950
                                      (let ((__tmp236951
                                             (let ((__tmp236952
                                                    (let ((__tmp236960
                                                           (let ((__tmp236961
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp236961)))
                  (__tmp236953
                   (let ((__tmp236958
                          (let ((__tmp236959
                                 (let ()
                                   (declare (not safe))
                                   (cons _id225263_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp236959)))
                         (__tmp236954
                          (let ((__tmp236955
                                 (let ((__tmp236957
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '%#ref)))
                                       (__tmp236956
                                        (let ()
                                          (declare (not safe))
                                          (cons _L225302_ '()))))
                                   (declare (not safe))
                                   (cons __tmp236957 __tmp236956))))
                            (declare (not safe))
                            (cons __tmp236955 '()))))
                     (declare (not safe))
                     (cons __tmp236958 __tmp236954))))
              (declare (not safe))
              (cons __tmp236960 __tmp236953))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp236952))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp236951
                                         _stx225186_))))
                                 (declare (not safe))
                                 (cons __tmp236950 '()))))
                          (declare (not safe))
                          (cons _L225244_ __tmp236949)))))
                 (let* ((___match236297236298_
                         (lambda (___splice236280236281_
                                  _target225283225318_
                                  _tl225285225320_)
                           (letrec ((_loop225286225323_
                                     (lambda (_hd225284225326_
                                              _arg225290225328_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd225284225326_))
                                           (let ((_e225287225331_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd225284225326_))))
                                             (let ((_lp-tl225289225336_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e225287225331_)))
                                                   (_lp-hd225288225334_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e225287225331_))))
                                               (let ((__tmp236962
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd225288225334_
                                                              _arg225290225328_))))
                                                 (declare (not safe))
                                                 (_loop225286225323_
                                                  _lp-tl225289225336_
                                                  __tmp236962))))
                                           (let ((_arg225291225339_
                                                  (reverse _arg225290225328_)))
                                             (___kont236278236279_
                                              _tl225285225320_
                                              _arg225291225339_))))))
                             (let ()
                               (declare (not safe))
                               (_loop225286225323_
                                _target225283225318_
                                '())))))
                        (___match236291236292_
                         (lambda (___splice236276236277_
                                  _target225272225367_
                                  _tl225274225369_)
                           (letrec ((_loop225275225372_
                                     (lambda (_hd225273225375_
                                              _arg225279225377_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd225273225375_))
                                           (let ((_e225276225380_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd225273225375_))))
                                             (let ((_lp-tl225278225385_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e225276225380_)))
                                                   (_lp-hd225277225383_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e225276225380_))))
                                               (let ((__tmp236963
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd225277225383_
                                                              _arg225279225377_))))
                                                 (declare (not safe))
                                                 (_loop225275225372_
                                                  _lp-tl225278225385_
                                                  __tmp236963))))
                                           (let ((_arg225280225388_
                                                  (reverse _arg225279225377_)))
                                             (___kont236274236275_
                                              _arg225280225388_))))))
                             (let ()
                               (declare (not safe))
                               (_loop225275225372_
                                _target225272225367_
                                '()))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? ___stx236272236273_))
                       (let ((___splice236276236277_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 ___stx236272236273_
                                 '0))))
                         (let ((_tl225274225369_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice236276236277_ '1)))
                               (_target225272225367_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice236276236277_ '0))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl225274225369_))
                               (___match236291236292_
                                ___splice236276236277_
                                _target225272225367_
                                _tl225274225369_)
                               (___match236297236298_
                                ___splice236276236277_
                                _target225272225367_
                                _tl225274225369_))))
                       (___kont236282236283_ ___stx236272236273_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp236966
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _id225263_
                                                              _ids225194_)))
                                                     (__tmp236965
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _impl225265_
                                                              _impls225195_)))
                                                     (__tmp236964
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _clause225412_
                                                              _clauses225196_))))
                                                 (declare (not safe))
                                                 (_lp225191_
                                                  _rest225216_
                                                  __tmp236966
                                                  __tmp236965
                                                  __tmp236964))))
                                           _tl225223225240_
                                           _hd225224225238_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g225219225230_ _g225220225233_))))))
                          (declare (not safe))
                          (_g225218225415_ _clause225217_))))))
            (if (let () (declare (not safe)) (##pair? _rest225197225205_))
                (let ((_hd225202225421_
                       (let ()
                         (declare (not safe))
                         (##car _rest225197225205_)))
                      (_tl225203225423_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest225197225205_))))
                  (let* ((_clause225426_ _hd225202225421_)
                         (_rest225428_ _tl225203225423_))
                    (declare (not safe))
                    (_K225201225418_ _rest225428_ _clause225426_)))
                (let () (declare (not safe)) (_else225199225213_)))))))
    (define gxc#lift-case-lambda-clauses__0
      (lambda (_stx225433_ _id225434_ _clauses225435_)
        (let ((_gensym?225437_ '#f))
          (declare (not safe))
          (gxc#lift-case-lambda-clauses__%
           _stx225433_
           _id225434_
           _clauses225435_
           _gensym?225437_))))
    (define gxc#lift-case-lambda-clauses
      (lambda _g236969_
        (let ((_g236968_ (let () (declare (not safe)) (##length _g236969_))))
          (cond ((let () (declare (not safe)) (##fx= _g236968_ 3))
                 (apply (lambda (_stx225433_ _id225434_ _clauses225435_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__0
                             _stx225433_
                             _id225434_
                             _clauses225435_)))
                        _g236969_))
                ((let () (declare (not safe)) (##fx= _g236968_ 4))
                 (apply (lambda (_stx225439_
                                 _id225440_
                                 _clauses225441_
                                 _gensym?225442_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__%
                             _stx225439_
                             _id225440_
                             _clauses225441_
                             _gensym?225442_)))
                        _g236969_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#lift-case-lambda-clauses
                  _g236969_))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_stx224463_)
        (letrec ((_case-lambda-clause-def224465_
                  (lambda (_id225182_ _impl225183_)
                    (let ((__tmp236970
                           (let ((__tmp236971
                                  (let ((__tmp236974
                                         (let ()
                                           (declare (not safe))
                                           (cons _id225182_ '())))
                                        (__tmp236972
                                         (let ((__tmp236973
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _impl225183_))))
                                           (declare (not safe))
                                           (cons __tmp236973 '()))))
                                    (declare (not safe))
                                    (cons __tmp236974 __tmp236972))))
                             (declare (not safe))
                             (cons '%#define-values __tmp236971))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp236970 _stx224463_))))
                 (_opt-lambda-dispatch-name224466_
                  (lambda (_id225178_)
                    (if (uninterned-symbol? _id225178_)
                        (let ((_str225180_ (symbol->string _id225178_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"opt-lambda" _str225180_))
                              '"%"
                              _id225178_))
                        _id225178_)))
                 (_kw-lambda-dispatch-name224467_
                  (lambda (_id225173_ _name225174_)
                    (if (uninterned-symbol? _id225173_)
                        (let ((_str225176_ (symbol->string _id225173_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"kw-lambda" _str225176_))
                              _name225174_
                              _id225173_))
                        _id225173_))))
          (let* ((___stx236320236321_ _stx224463_)
                 (_g224472224531_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx236320236321_)))))
            (let ((___kont236322236323_
                   (lambda (_L225082_ _L225083_)
                     (let* ((___stx236300236301_ _L225082_)
                            (_g225100225114_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx236300236301_)))))
                       (let ((___kont236302236303_
                              (lambda (_L225158_) _stx224463_))
                             (___kont236304236305_
                              (lambda (_L225127_)
                                (let ((_g236975_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#lift-case-lambda-clauses__0
                                          _stx224463_
                                          _L225083_
                                          _L225127_))))
                                  (begin
                                    (let ((_g236976_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g236975_)
                                                 (##vector-length _g236975_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g236976_ 3)))
                                          (error "Context expects 3 values"
                                                 _g236976_)))
                                    (let ((_ids225137_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g236975_ 0)))
                                          (_impls225138_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g236975_ 1)))
                                          (_clauses225139_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g236975_ 2))))
                                      (let* ((_g236977_
                                              (for-each
                                               gx#core-bind-runtime!
                                               _ids225137_))
                                             (_defs225142_
                                              (map _case-lambda-clause-def224465_
                                                   _ids225137_
                                                   _impls225138_)))
                                        (let ((__tmp236979
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L225083_)))
                                              (__tmp236978
                                               (map gxc#identifier-symbol
                                                    _ids225137_)))
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"lift case-lambda clauses "
                                           __tmp236979
                                           '" => "
                                           __tmp236978))
                                        (let ((__tmp236980
                                               (let ((__tmp236981
                                                      (let ((__tmp236982
                                                             (let ((__tmp236983
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp236984
                                   (let ((__tmp236985
                                          (let ((__tmp236990
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L225083_ '())))
                                                (__tmp236986
                                                 (let ((__tmp236987
                                                        (let ((__tmp236989
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '%#case-lambda _clauses225139_)))
                      (__tmp236988
                       (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp236989 __tmp236988))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp236987 '()))))
                                            (declare (not safe))
                                            (cons __tmp236990 __tmp236986))))
                                     (declare (not safe))
                                     (cons '%#define-values __tmp236985))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp236984
                               _stx224463_))))
                       (declare (not safe))
                       (cons __tmp236983 '()))))
                (declare (not safe))
                (foldr1 cons __tmp236982 _defs225142_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#begin __tmp236981))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp236980
                                           _stx224463_)))))))))
                         (let ((___match236311236312_
                                (lambda (_e225105225150_
                                         _hd225104225153_
                                         _tl225103225155_)
                                  (let ((_L225158_ _tl225103225155_))
                                    (if (let ()
                                          (declare (not safe))
                                          (andmap1 gxc#dispatch-lambda-form?
                                                   _L225158_))
                                        (___kont236302236303_ _L225158_)
                                        (___kont236304236305_
                                         _tl225103225155_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? ___stx236300236301_))
                               (let ((_e225105225150_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e ___stx236300236301_))))
                                 (let ((_tl225103225155_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e225105225150_)))
                                       (_hd225104225153_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e225105225150_))))
                                   (___match236311236312_
                                    _e225105225150_
                                    _hd225104225153_
                                    _tl225103225155_)))
                               (let ()
                                 (declare (not safe))
                                 (_g225100225114_))))))))
                  (___kont236324236325_
                   (lambda (_L224900_ _L224901_)
                     (let* ((_g224917224947_
                             (lambda (_g224918224944_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g224918224944_))))
                            (_g224916225042_
                             (lambda (_g224918224950_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g224918224950_))
                                   (let ((_e224924224952_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g224918224950_))))
                                     (let ((_hd224923224955_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e224924224952_)))
                                           (_tl224922224957_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e224924224952_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl224922224957_))
                                           (let ((_e224927224960_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl224922224957_))))
                                             (let ((_hd224926224963_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e224927224960_)))
                                                   (_tl224925224965_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e224927224960_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd224926224963_))
                                                   (let ((_e224930224968_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd224926224963_))))
                                                     (let ((_hd224929224971_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e224930224968_)))
                                                           (_tl224928224973_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e224930224968_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd224929224971_))
                                                           (let ((_e224933224976_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd224929224971_))))
                     (let ((_hd224932224979_
                            (let ()
                              (declare (not safe))
                              (##car _e224933224976_)))
                           (_tl224931224981_
                            (let ()
                              (declare (not safe))
                              (##cdr _e224933224976_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd224932224979_))
                           (let ((_e224936224984_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd224932224979_))))
                             (let ((_hd224935224987_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e224936224984_)))
                                   (_tl224934224989_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e224936224984_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl224934224989_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl224931224981_))
                                       (let ((_e224939224992_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl224931224981_))))
                                         (let ((_hd224938224995_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e224939224992_)))
                                               (_tl224937224997_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e224939224992_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl224937224997_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl224928224973_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl224925224965_))
                                                       (let ((_e224942225000_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl224925224965_))))
                 (let ((_hd224941225003_
                        (let () (declare (not safe)) (##car _e224942225000_)))
                       (_tl224940225005_
                        (let () (declare (not safe)) (##cdr _e224942225000_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl224940225005_))
                       ((lambda (_L225008_ _L225009_ _L225010_)
                          (let* ((_lambda-id225034_
                                  (let ((__tmp236993
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L224901_)))
                                        (__tmp236991
                                         (let ((__tmp236992
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L225010_))))
                                           (declare (not safe))
                                           (_opt-lambda-dispatch-name224466_
                                            __tmp236992))))
                                    (declare (not safe))
                                    (make-symbol__1
                                     __tmp236993
                                     '"__"
                                     __tmp236991)))
                                 (_lambda-id225036_
                                  (let ((__tmp236994
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-source _stx224463_))))
                                    (declare (not safe))
                                    (gx#core-quote-syntax__1
                                     _lambda-id225034_
                                     __tmp236994)))
                                 (_g236995_
                                  (let ()
                                    (declare (not safe))
                                    (gx#core-bind-runtime!__0
                                     _lambda-id225036_)))
                                 (_new-case-lambda-expr225039_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-expression-subst
                                     _L225008_
                                     _L225010_
                                     _lambda-id225036_))))
                            (let ((__tmp236997
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol _L224901_)))
                                  (__tmp236996
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol
                                      _lambda-id225036_))))
                              (declare (not safe))
                              (gxc#verbose
                               '"lift opt-lambda dispatch "
                               __tmp236997
                               '" => "
                               __tmp236996))
                            (let ((__tmp236998
                                   (let ((__tmp236999
                                          (let ((__tmp237007
                                                 (let ((__tmp237008
                                                        (let ((__tmp237009
                                                               (let ((__tmp237012
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _lambda-id225036_ '())))
                             (__tmp237010
                              (let ((__tmp237011
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L225009_))))
                                (declare (not safe))
                                (cons __tmp237011 '()))))
                         (declare (not safe))
                         (cons __tmp237012 __tmp237010))))
                  (declare (not safe))
                  (cons '%#define-values __tmp237009))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp237008
                                                    _stx224463_)))
                                                (__tmp237000
                                                 (let ((__tmp237001
                                                        (let ((__tmp237002
                                                               (let ((__tmp237003
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp237004
                                     (let ((__tmp237006
                                            (let ()
                                              (declare (not safe))
                                              (cons _L224901_ '())))
                                           (__tmp237005
                                            (let ()
                                              (declare (not safe))
                                              (cons _new-case-lambda-expr225039_
                                                    '()))))
                                       (declare (not safe))
                                       (cons __tmp237006 __tmp237005))))
                                (declare (not safe))
                                (cons '%#define-values __tmp237004))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp237003 _stx224463_))))
                  (declare (not safe))
                  (gxc#lift-top-lambda-define-values% __tmp237002))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp237001 '()))))
                                            (declare (not safe))
                                            (cons __tmp237007 __tmp237000))))
                                     (declare (not safe))
                                     (cons '%#begin __tmp236999))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp236998
                               _stx224463_))))
                        _hd224941225003_
                        _hd224938224995_
                        _hd224935224987_)
                       (let ()
                         (declare (not safe))
                         (_g224917224947_ _g224918224950_)))))
               (let () (declare (not safe)) (_g224917224947_ _g224918224950_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g224917224947_
                                                      _g224918224950_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g224917224947_
                                                  _g224918224950_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g224917224947_ _g224918224950_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g224917224947_ _g224918224950_)))))
                           (let ()
                             (declare (not safe))
                             (_g224917224947_ _g224918224950_)))))
                   (let ()
                     (declare (not safe))
                     (_g224917224947_ _g224918224950_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g224917224947_
                                                      _g224918224950_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g224917224947_
                                              _g224918224950_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g224917224947_ _g224918224950_))))))
                       (declare (not safe))
                       (_g224916225042_ _L224900_))))
                  (___kont236326236327_
                   (lambda (_L224614_ _L224615_)
                     (let* ((_g224631224684_
                             (lambda (_g224632224681_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g224632224681_))))
                            (_g224630224860_
                             (lambda (_g224632224687_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g224632224687_))
                                   (let ((_e224640224689_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g224632224687_))))
                                     (let ((_hd224639224692_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e224640224689_)))
                                           (_tl224638224694_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e224640224689_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl224638224694_))
                                           (let ((_e224643224697_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl224638224694_))))
                                             (let ((_hd224642224700_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e224643224697_)))
                                                   (_tl224641224702_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e224643224697_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd224642224700_))
                                                   (let ((_e224646224705_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd224642224700_))))
                                                     (let ((_hd224645224708_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e224646224705_)))
                                                           (_tl224644224710_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e224646224705_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd224645224708_))
                                                           (let ((_e224649224713_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd224645224708_))))
                     (let ((_hd224648224716_
                            (let ()
                              (declare (not safe))
                              (##car _e224649224713_)))
                           (_tl224647224718_
                            (let ()
                              (declare (not safe))
                              (##cdr _e224649224713_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd224648224716_))
                           (let ((_e224652224721_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd224648224716_))))
                             (let ((_hd224651224724_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e224652224721_)))
                                   (_tl224650224726_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e224652224721_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl224650224726_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl224647224718_))
                                       (let ((_e224655224729_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl224647224718_))))
                                         (let ((_hd224654224732_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e224655224729_)))
                                               (_tl224653224734_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e224655224729_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd224654224732_))
                                               (let ((_e224658224737_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd224654224732_))))
                                                 (let ((_hd224657224740_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e224658224737_)))
                                                       (_tl224656224742_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e224658224737_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl224656224742_))
                                                       (let ((_e224661224745_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl224656224742_))))
                 (let ((_hd224660224748_
                        (let () (declare (not safe)) (##car _e224661224745_)))
                       (_tl224659224750_
                        (let () (declare (not safe)) (##cdr _e224661224745_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _hd224660224748_))
                       (let ((_e224664224753_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _hd224660224748_))))
                         (let ((_hd224663224756_
                                (let ()
                                  (declare (not safe))
                                  (##car _e224664224753_)))
                               (_tl224662224758_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e224664224753_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd224663224756_))
                               (let ((_e224667224761_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd224663224756_))))
                                 (let ((_hd224666224764_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e224667224761_)))
                                       (_tl224665224766_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e224667224761_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd224666224764_))
                                       (let ((_e224670224769_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd224666224764_))))
                                         (let ((_hd224669224772_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e224670224769_)))
                                               (_tl224668224774_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e224670224769_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl224668224774_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl224665224766_))
                                                   (let ((_e224673224777_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl224665224766_))))
                                                     (let ((_hd224672224780_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e224673224777_)))
                                                           (_tl224671224782_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e224673224777_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl224671224782_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-null? _tl224662224758_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl224659224750_))
                           (let ((_e224676224785_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl224659224750_))))
                             (let ((_hd224675224788_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e224676224785_)))
                                   (_tl224674224790_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e224676224785_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl224674224790_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl224653224734_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl224644224710_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl224641224702_))
                                               (let ((_e224679224793_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl224641224702_))))
                                                 (let ((_hd224678224796_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e224679224793_)))
                                                       (_tl224677224798_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e224679224793_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl224677224798_))
                                                       ((lambda (_L224801_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L224802_
                         _L224803_
                         _L224804_
                         _L224805_)
                  (let* ((_get-kws-id224845_
                          (let ((__tmp237015
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L224615_)))
                                (__tmp237013
                                 (let ((__tmp237014
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L224805_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name224467_
                                    __tmp237014
                                    '"@"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp237015 '"__" __tmp237013)))
                         (_get-kws-id224847_
                          (let ((__tmp237016
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx224463_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _get-kws-id224845_
                             __tmp237016)))
                         (_main-id224849_
                          (let ((__tmp237019
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L224615_)))
                                (__tmp237017
                                 (let ((__tmp237018
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L224804_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name224467_
                                    __tmp237018
                                    '"%"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp237019 '"__" __tmp237017)))
                         (_main-id224851_
                          (let ((__tmp237020
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx224463_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _main-id224849_
                             __tmp237020)))
                         (_g237021_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _get-kws-id224847_)))
                         (_g237022_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _main-id224851_)))
                         (_new-kw-dispatch224855_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L224801_
                             _L224805_
                             _get-kws-id224847_)))
                         (_new-get-kws224857_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L224802_
                             _L224804_
                             _main-id224851_))))
                    (let ((__tmp237025
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L224615_)))
                          (__tmp237024
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _get-kws-id224847_)))
                          (__tmp237023
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _main-id224851_))))
                      (declare (not safe))
                      (gxc#verbose
                       '"lift kw-lambda dispatch "
                       __tmp237025
                       '" => "
                       __tmp237024
                       '" => "
                       __tmp237023))
                    (let ((__tmp237026
                           (let ((__tmp237027
                                  (let ((__tmp237040
                                         (let ((__tmp237041
                                                (let ((__tmp237042
                                                       (let ((__tmp237043
                                                              (let ((__tmp237045
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _main-id224851_ '())))
                            (__tmp237044
                             (let ()
                               (declare (not safe))
                               (cons _L224803_ '()))))
                        (declare (not safe))
                        (cons __tmp237045 __tmp237044))))
                 (declare (not safe))
                 (cons '%#define-values __tmp237043))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp237042
                                                   _stx224463_))))
                                           (declare (not safe))
                                           (gxc#lift-top-lambda-define-values%
                                            __tmp237041)))
                                        (__tmp237028
                                         (let ((__tmp237035
                                                (let ((__tmp237036
                                                       (let ((__tmp237037
                                                              (let ((__tmp237039
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _get-kws-id224847_ '())))
                            (__tmp237038
                             (let ()
                               (declare (not safe))
                               (cons _new-get-kws224857_ '()))))
                        (declare (not safe))
                        (cons __tmp237039 __tmp237038))))
                 (declare (not safe))
                 (cons '%#define-values __tmp237037))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp237036
                                                   _stx224463_)))
                                               (__tmp237029
                                                (let ((__tmp237030
                                                       (let ((__tmp237031
                                                              (let ((__tmp237032
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp237034
                                    (let ()
                                      (declare (not safe))
                                      (cons _L224615_ '())))
                                   (__tmp237033
                                    (let ()
                                      (declare (not safe))
                                      (cons _new-kw-dispatch224855_ '()))))
                               (declare (not safe))
                               (cons __tmp237034 __tmp237033))))
                        (declare (not safe))
                        (cons '%#define-values __tmp237032))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp237031 _stx224463_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp237030 '()))))
                                           (declare (not safe))
                                           (cons __tmp237035 __tmp237029))))
                                    (declare (not safe))
                                    (cons __tmp237040 __tmp237028))))
                             (declare (not safe))
                             (cons '%#begin __tmp237027))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp237026 _stx224463_))))
                _hd224678224796_
                _hd224675224788_
                _hd224672224780_
                _hd224669224772_
                _hd224651224724_)
               (let ()
                 (declare (not safe))
                 (_g224631224684_ _g224632224687_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g224631224684_
                                                  _g224632224687_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g224631224684_
                                              _g224632224687_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g224631224684_ _g224632224687_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g224631224684_ _g224632224687_)))))
                           (let ()
                             (declare (not safe))
                             (_g224631224684_ _g224632224687_)))
                       (let ()
                         (declare (not safe))
                         (_g224631224684_ _g224632224687_)))
                   (let ()
                     (declare (not safe))
                     (_g224631224684_ _g224632224687_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g224631224684_
                                                      _g224632224687_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g224631224684_
                                                  _g224632224687_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g224631224684_ _g224632224687_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g224631224684_ _g224632224687_)))))
                       (let ()
                         (declare (not safe))
                         (_g224631224684_ _g224632224687_)))))
               (let ()
                 (declare (not safe))
                 (_g224631224684_ _g224632224687_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g224631224684_
                                                  _g224632224687_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g224631224684_ _g224632224687_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g224631224684_ _g224632224687_)))))
                           (let ()
                             (declare (not safe))
                             (_g224631224684_ _g224632224687_)))))
                   (let ()
                     (declare (not safe))
                     (_g224631224684_ _g224632224687_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g224631224684_
                                                      _g224632224687_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g224631224684_
                                              _g224632224687_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g224631224684_ _g224632224687_))))))
                       (declare (not safe))
                       (_g224630224860_ _L224614_))))
                  (___kont236328236329_
                   (lambda (_L224560_ _L224561_)
                     (let ((__tmp237046
                            (let ((__tmp237047
                                   (let ((__tmp237048
                                          (let ((__tmp237049
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L224560_))))
                                            (declare (not safe))
                                            (cons __tmp237049 '()))))
                                     (declare (not safe))
                                     (cons _L224561_ __tmp237048))))
                              (declare (not safe))
                              (cons '%#define-values __tmp237047))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp237046 _stx224463_)))))
              (let* ((___match236413236414_
                      (lambda (_e224506224582_
                               _hd224505224585_
                               _tl224504224587_
                               _e224509224590_
                               _hd224508224593_
                               _tl224507224595_
                               _e224512224598_
                               _hd224511224601_
                               _tl224510224603_
                               _e224515224606_
                               _hd224514224609_
                               _tl224513224611_)
                        (let ((_L224614_ _hd224514224609_)
                              (_L224615_ _hd224511224601_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L224615_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L224614_)))
                              (___kont236326236327_ _L224614_ _L224615_)
                              (___kont236328236329_
                               _hd224514224609_
                               _hd224508224593_)))))
                     (___match236385236386_
                      (lambda (_e224492224868_
                               _hd224491224871_
                               _tl224490224873_
                               _e224495224876_
                               _hd224494224879_
                               _tl224493224881_
                               _e224498224884_
                               _hd224497224887_
                               _tl224496224889_
                               _e224501224892_
                               _hd224500224895_
                               _tl224499224897_)
                        (let ((_L224900_ _hd224500224895_)
                              (_L224901_ _hd224497224887_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L224901_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr? _L224900_)))
                              (___kont236324236325_ _L224900_ _L224901_)
                              (___match236413236414_
                               _e224492224868_
                               _hd224491224871_
                               _tl224490224873_
                               _e224495224876_
                               _hd224494224879_
                               _tl224493224881_
                               _e224498224884_
                               _hd224497224887_
                               _tl224496224889_
                               _e224501224892_
                               _hd224500224895_
                               _tl224499224897_)))))
                     (___match236357236358_
                      (lambda (_e224478225050_
                               _hd224477225053_
                               _tl224476225055_
                               _e224481225058_
                               _hd224480225061_
                               _tl224479225063_
                               _e224484225066_
                               _hd224483225069_
                               _tl224482225071_
                               _e224487225074_
                               _hd224486225077_
                               _tl224485225079_)
                        (let ((_L225082_ _hd224486225077_)
                              (_L225083_ _hd224483225069_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L225083_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#case-lambda-expr? _L225082_)))
                              (___kont236322236323_ _L225082_ _L225083_)
                              (___match236385236386_
                               _e224478225050_
                               _hd224477225053_
                               _tl224476225055_
                               _e224481225058_
                               _hd224480225061_
                               _tl224479225063_
                               _e224484225066_
                               _hd224483225069_
                               _tl224482225071_
                               _e224487225074_
                               _hd224486225077_
                               _tl224485225079_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx236320236321_))
                    (let ((_e224478225050_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx236320236321_))))
                      (let ((_tl224476225055_
                             (let ()
                               (declare (not safe))
                               (##cdr _e224478225050_)))
                            (_hd224477225053_
                             (let ()
                               (declare (not safe))
                               (##car _e224478225050_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl224476225055_))
                            (let ((_e224481225058_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl224476225055_))))
                              (let ((_tl224479225063_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e224481225058_)))
                                    (_hd224480225061_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e224481225058_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd224480225061_))
                                    (let ((_e224484225066_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd224480225061_))))
                                      (let ((_tl224482225071_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e224484225066_)))
                                            (_hd224483225069_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e224484225066_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl224482225071_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl224479225063_))
                                                (let ((_e224487225074_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl224479225063_))))
                                                  (let ((_tl224485225079_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e224487225074_)))
                                                        (_hd224486225077_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e224487225074_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl224485225079_))
                                                        (___match236357236358_
                                                         _e224478225050_
                                                         _hd224477225053_
                                                         _tl224476225055_
                                                         _e224481225058_
                                                         _hd224480225061_
                                                         _tl224479225063_
                                                         _e224484225066_
                                                         _hd224483225069_
                                                         _tl224482225071_
                                                         _e224487225074_
                                                         _hd224486225077_
                                                         _tl224485225079_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g224472224531_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g224472224531_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl224479225063_))
                                                (let ((_e224526224552_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl224479225063_))))
                                                  (let ((_tl224524224557_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e224526224552_)))
                                                        (_hd224525224555_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e224526224552_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl224524224557_))
                                                        (___kont236328236329_
                                                         _hd224525224555_
                                                         _hd224480225061_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g224472224531_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g224472224531_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl224479225063_))
                                        (let ((_e224526224552_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl224479225063_))))
                                          (let ((_tl224524224557_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e224526224552_)))
                                                (_hd224525224555_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e224526224552_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl224524224557_))
                                                (___kont236328236329_
                                                 _hd224525224555_
                                                 _hd224480225061_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g224472224531_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g224472224531_))))))
                            (let () (declare (not safe)) (_g224472224531_)))))
                    (let () (declare (not safe)) (_g224472224531_)))))))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_stx223395_)
        (letrec* ((_bind-e__234716234717_
                   (lambda (_id224447_ _expr224448_ _compile?224449_)
                     (let ((__tmp237052
                            (let ()
                              (declare (not safe))
                              (cons _id224447_ '())))
                           (__tmp237050
                            (let ((__tmp237051
                                   (if _compile?224449_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr224448_))
                                       _expr224448_)))
                              (declare (not safe))
                              (cons __tmp237051 '()))))
                       (declare (not safe))
                       (cons __tmp237052 __tmp237050))))
                  (_bind-e__0__234718234719_
                   (lambda (_id224454_ _expr224455_)
                     (let ((_compile?224457_ '#t))
                       (declare (not safe))
                       (_bind-e__234716234717_
                        _id224454_
                        _expr224455_
                        _compile?224457_))))
                  (_bind-e223397_
                   (lambda _g237054_
                     (let ((_g237053_
                            (let ()
                              (declare (not safe))
                              (##length _g237054_))))
                       (cond ((let () (declare (not safe)) (##fx= _g237053_ 2))
                              (apply (lambda (_id224454_ _expr224455_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__234718234719_
                                          _id224454_
                                          _expr224455_)))
                                     _g237054_))
                             ((let () (declare (not safe)) (##fx= _g237053_ 3))
                              (apply (lambda (_id224459_
                                              _expr224460_
                                              _compile?224461_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__234716234717_
                                          _id224459_
                                          _expr224460_
                                          _compile?224461_)))
                                     _g237054_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g237054_))))))
                  (_compile-bindings223398_
                   (lambda (_bindings224031_)
                     (let _lp224033_ ((_rest224035_ _bindings224031_)
                                      (_lift1224036_ '())
                                      (_lift2224037_ '())
                                      (_bind224038_ '()))
                       (let* ((_rest224039224047_ _rest224035_)
                              (_else224041224055_
                               (lambda ()
                                 (values (reverse _lift1224036_)
                                         (reverse _lift2224037_)
                                         (reverse _bind224038_))))
                              (_K224043224434_
                               (lambda (_rest224058_ _hd224059_)
                                 (let* ((___stx236456236457_ _hd224059_)
                                        (_g224063224099_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx236456236457_)))))
                                   (let ((___kont236458236459_
                                          (lambda (_L224341_ _L224342_)
                                            (let* ((___stx236436236437_
                                                    _L224341_)
                                                   (_g224357224371_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx236436236437_)))))
                                              (let ((___kont236438236439_
                                                     (lambda (_L224419_)
                                                       (let ((__tmp237055
                                                              (let ((__tmp237056
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__234716234717_
                                _L224342_
                                _L224341_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp237056 _bind224038_))))
                 (declare (not safe))
                 (_lp224033_
                  _rest224058_
                  _lift1224036_
                  _lift2224037_
                  __tmp237055))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont236440236441_
                                                     (lambda (_L224384_)
                                                       (let ((_g237057_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx223395_
                         _L224342_
                         _L224384_
                         '#t))))
                 (begin
                   (let ((_g237058_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g237057_)
                                (##vector-length _g237057_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g237058_ 3)))
                         (error "Context expects 3 values" _g237058_)))
                   (let ((_ids224394_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g237057_ 0)))
                         (_impls224395_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g237057_ 1)))
                         (_clauses224396_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g237057_ 2))))
                     (let* ((_g237059_
                             (for-each gx#core-bind-runtime! _ids224394_))
                            (_xbind224399_
                             (map _bind-e223397_ _ids224394_ _impls224395_))
                            (_expr*224401_
                             (let ((__tmp237061
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses224396_)))
                                   (__tmp237060
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp237061
                                __tmp237060)))
                            (_bind*224403_
                             (let ()
                               (declare (not safe))
                               (_bind-e__234716234717_
                                _L224342_
                                _expr*224401_
                                '#f))))
                       (let ((__tmp237063
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L224342_)))
                             (__tmp237062
                              (map gxc#identifier-symbol _ids224394_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp237063
                          '" => "
                          __tmp237062))
                       (let ((__tmp237065
                              (let ()
                                (declare (not safe))
                                (foldl1 cons _lift2224037_ _xbind224399_)))
                             (__tmp237064
                              (let ()
                                (declare (not safe))
                                (cons _bind*224403_ _bind224038_))))
                         (declare (not safe))
                         (_lp224033_
                          _rest224058_
                          _lift1224036_
                          __tmp237065
                          __tmp237064)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match236447236448_
                                                       (lambda (_e224362224411_
                                                                _hd224361224414_
                                                                _tl224360224416_)
                                                         (let ((_L224419_
                                                                _tl224360224416_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L224419_))
                       (___kont236438236439_ _L224419_)
                       (___kont236440236441_ _tl224360224416_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx236436236437_))
                                                      (let ((_e224362224411_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx236436236437_))))
                (let ((_tl224360224416_
                       (let () (declare (not safe)) (##cdr _e224362224411_)))
                      (_hd224361224414_
                       (let () (declare (not safe)) (##car _e224362224411_))))
                  (___match236447236448_
                   _e224362224411_
                   _hd224361224414_
                   _tl224360224416_)))
              (let () (declare (not safe)) (_g224357224371_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont236460236461_
                                          (lambda (_L224169_ _L224170_)
                                            (let* ((_g224184224214_
                                                    (lambda (_g224185224211_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g224185224211_))))
                                                   (_g224183224309_
                                                    (lambda (_g224185224217_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g224185224217_))
                                                          (let ((_e224191224219_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g224185224217_))))
                    (let ((_hd224190224222_
                           (let ()
                             (declare (not safe))
                             (##car _e224191224219_)))
                          (_tl224189224224_
                           (let ()
                             (declare (not safe))
                             (##cdr _e224191224219_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl224189224224_))
                          (let ((_e224194224227_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl224189224224_))))
                            (let ((_hd224193224230_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e224194224227_)))
                                  (_tl224192224232_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e224194224227_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd224193224230_))
                                  (let ((_e224197224235_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd224193224230_))))
                                    (let ((_hd224196224238_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e224197224235_)))
                                          (_tl224195224240_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e224197224235_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd224196224238_))
                                          (let ((_e224200224243_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd224196224238_))))
                                            (let ((_hd224199224246_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e224200224243_)))
                                                  (_tl224198224248_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e224200224243_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd224199224246_))
                                                  (let ((_e224203224251_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd224199224246_))))
                                                    (let ((_hd224202224254_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e224203224251_)))
                                                          (_tl224201224256_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e224203224251_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl224201224256_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl224198224248_))
                      (let ((_e224206224259_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl224198224248_))))
                        (let ((_hd224205224262_
                               (let ()
                                 (declare (not safe))
                                 (##car _e224206224259_)))
                              (_tl224204224264_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e224206224259_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl224204224264_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl224195224240_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl224192224232_))
                                      (let ((_e224209224267_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl224192224232_))))
                                        (let ((_hd224208224270_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e224209224267_)))
                                              (_tl224207224272_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e224209224267_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl224207224272_))
                                              ((lambda (_L224275_
                                                        _L224276_
                                                        _L224277_)
                                                 (let* ((_lambda-id224301_
                                                         (let ((__tmp237067
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L224170_)))
                       (__tmp237066 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp237067 __tmp237066)))
                (_lambda-id224303_
                 (let ((__tmp237068
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx223395_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id224301_ __tmp237068)))
                (_g237069_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id224303_)))
                (_new-case-lambda-expr224306_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L224275_
                    _L224277_
                    _lambda-id224303_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp237071
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L224170_)))
                                                         (__tmp237070
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id224303_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp237071
                                                      '" => "
                                                      __tmp237070))
                                                   (let ((__tmp237074
                                                          (let ((__tmp237075
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__234716234717_
                            _L224170_
                            _new-case-lambda-expr224306_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp237075 _rest224058_)))
                 (__tmp237072
                  (let ((__tmp237073
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__234718234719_
                            _lambda-id224303_
                            _L224276_))))
                    (declare (not safe))
                    (cons __tmp237073 _lift1224036_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp224033_
                                                      __tmp237074
                                                      __tmp237072
                                                      _lift2224037_
                                                      _bind224038_))))
                                               _hd224208224270_
                                               _hd224205224262_
                                               _hd224202224254_)
                                              (let ()
                                                (declare (not safe))
                                                (_g224184224214_
                                                 _g224185224217_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g224184224214_ _g224185224217_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g224184224214_ _g224185224217_)))
                              (let ()
                                (declare (not safe))
                                (_g224184224214_ _g224185224217_)))))
                      (let ()
                        (declare (not safe))
                        (_g224184224214_ _g224185224217_)))
                  (let ()
                    (declare (not safe))
                    (_g224184224214_ _g224185224217_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g224184224214_
                                                     _g224185224217_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g224184224214_
                                             _g224185224217_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g224184224214_ _g224185224217_)))))
                          (let ()
                            (declare (not safe))
                            (_g224184224214_ _g224185224217_)))))
                  (let ()
                    (declare (not safe))
                    (_g224184224214_ _g224185224217_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g224183224309_ _L224169_))))
                                         (___kont236462236463_
                                          (lambda (_L224120_ _L224121_)
                                            (let ((__tmp237076
                                                   (let ((__tmp237077
                                                          (let ((__tmp237078
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp237079
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L224120_))))
                           (declare (not safe))
                           (cons __tmp237079 '()))))
                    (declare (not safe))
                    (cons _L224121_ __tmp237078))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp237077
                                                           _bind224038_))))
                                              (declare (not safe))
                                              (_lp224033_
                                               _rest224058_
                                               _lift1224036_
                                               _lift2224037_
                                               __tmp237076)))))
                                     (let* ((___match236507236508_
                                             (lambda (_e224080224145_
                                                      _hd224079224148_
                                                      _tl224078224150_
                                                      _e224083224153_
                                                      _hd224082224156_
                                                      _tl224081224158_
                                                      _e224086224161_
                                                      _hd224085224164_
                                                      _tl224084224166_)
                                               (let ((_L224169_
                                                      _hd224085224164_)
                                                     (_L224170_
                                                      _hd224082224156_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L224170_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L224169_)))
                                                     (___kont236460236461_
                                                      _L224169_
                                                      _L224170_)
                                                     (___kont236462236463_
                                                      _hd224085224164_
                                                      _hd224079224148_)))))
                                            (___match236485236486_
                                             (lambda (_e224069224317_
                                                      _hd224068224320_
                                                      _tl224067224322_
                                                      _e224072224325_
                                                      _hd224071224328_
                                                      _tl224070224330_
                                                      _e224075224333_
                                                      _hd224074224336_
                                                      _tl224073224338_)
                                               (let ((_L224341_
                                                      _hd224074224336_)
                                                     (_L224342_
                                                      _hd224071224328_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L224342_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L224341_)))
                                                     (___kont236458236459_
                                                      _L224341_
                                                      _L224342_)
                                                     (___match236507236508_
                                                      _e224069224317_
                                                      _hd224068224320_
                                                      _tl224067224322_
                                                      _e224072224325_
                                                      _hd224071224328_
                                                      _tl224070224330_
                                                      _e224075224333_
                                                      _hd224074224336_
                                                      _tl224073224338_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx236456236457_))
                                           (let ((_e224069224317_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx236456236457_))))
                                             (let ((_tl224067224322_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e224069224317_)))
                                                   (_hd224068224320_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e224069224317_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd224068224320_))
                                                   (let ((_e224072224325_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd224068224320_))))
                                                     (let ((_tl224070224330_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e224072224325_)))
                                                           (_hd224071224328_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e224072224325_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl224070224330_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl224067224322_))
                       (let ((_e224075224333_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl224067224322_))))
                         (let ((_tl224073224338_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e224075224333_)))
                               (_hd224074224336_
                                (let ()
                                  (declare (not safe))
                                  (##car _e224075224333_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl224073224338_))
                               (___match236485236486_
                                _e224069224317_
                                _hd224068224320_
                                _tl224067224322_
                                _e224072224325_
                                _hd224071224328_
                                _tl224070224330_
                                _e224075224333_
                                _hd224074224336_
                                _tl224073224338_)
                               (let ()
                                 (declare (not safe))
                                 (_g224063224099_)))))
                       (let () (declare (not safe)) (_g224063224099_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl224067224322_))
                       (let ((_e224094224112_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl224067224322_))))
                         (let ((_tl224092224117_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e224094224112_)))
                               (_hd224093224115_
                                (let ()
                                  (declare (not safe))
                                  (##car _e224094224112_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl224092224117_))
                               (___kont236462236463_
                                _hd224093224115_
                                _hd224068224320_)
                               (let ()
                                 (declare (not safe))
                                 (_g224063224099_)))))
                       (let () (declare (not safe)) (_g224063224099_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl224067224322_))
                                                       (let ((_e224094224112_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl224067224322_))))
                 (let ((_tl224092224117_
                        (let () (declare (not safe)) (##cdr _e224094224112_)))
                       (_hd224093224115_
                        (let () (declare (not safe)) (##car _e224094224112_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl224092224117_))
                       (___kont236462236463_ _hd224093224115_ _hd224068224320_)
                       (let () (declare (not safe)) (_g224063224099_)))))
               (let () (declare (not safe)) (_g224063224099_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g224063224099_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest224039224047_))
                             (let ((_hd224044224437_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest224039224047_)))
                                   (_tl224045224439_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest224039224047_))))
                               (let* ((_hd224442_ _hd224044224437_)
                                      (_rest224444_ _tl224045224439_))
                                 (declare (not safe))
                                 (_K224043224434_ _rest224444_ _hd224442_)))
                             (let ()
                               (declare (not safe))
                               (_else224041224055_)))))))
                  (_lift-kw-lambda?223399_
                   (lambda (_bind223955_)
                     (let* ((___stx236524236525_ _bind223955_)
                            (_g223958223975_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx236524236525_)))))
                       (let ((___kont236526236527_
                              (lambda (_L224011_ _L224012_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _L224012_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#kw-lambda-expr? _L224011_))
                                    '#f)))
                             (___kont236528236529_ (lambda () '#f)))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? ___stx236524236525_))
                             (let ((_e223964223987_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e ___stx236524236525_))))
                               (let ((_tl223962223992_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e223964223987_)))
                                     (_hd223963223990_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e223964223987_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd223963223990_))
                                     (let ((_e223967223995_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd223963223990_))))
                                       (let ((_tl223965224000_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e223967223995_)))
                                             (_hd223966223998_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e223967223995_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl223965224000_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl223962223992_))
                                                 (let ((_e223970224003_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl223962223992_))))
                                                   (let ((_tl223968224008_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e223970224003_)))
                                                         (_hd223969224006_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e223970224003_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl223968224008_))
                                                         (___kont236526236527_
                                                          _hd223969224006_
                                                          _hd223966223998_)
                                                         (___kont236528236529_))))
                                                 (___kont236528236529_))
                                             (___kont236528236529_))))
                                     (___kont236528236529_))))
                             (___kont236528236529_))))))
                  (_lift-kw-lambda-bindings223400_
                   (lambda (_bindings223567_)
                     (let _lp223569_ ((_rest223571_ _bindings223567_)
                                      (_lift1223572_ '())
                                      (_lift2223573_ '())
                                      (_bind223574_ '()))
                       (let* ((_rest223575223583_ _rest223571_)
                              (_else223577223591_
                               (lambda ()
                                 (values (reverse _lift1223572_)
                                         (reverse _lift2223573_)
                                         (reverse _bind223574_))))
                              (_K223579223943_
                               (lambda (_rest223594_ _hd223595_)
                                 (let* ((___stx236554236555_ _hd223595_)
                                        (_g223598223623_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx236554236555_)))))
                                   (let ((___kont236556236557_
                                          (lambda (_L223693_ _L223694_)
                                            (let* ((_g223708223761_
                                                    (lambda (_g223709223758_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g223709223758_))))
                                                   (_g223707223937_
                                                    (lambda (_g223709223764_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g223709223764_))
                                                          (let ((_e223717223766_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g223709223764_))))
                    (let ((_hd223716223769_
                           (let ()
                             (declare (not safe))
                             (##car _e223717223766_)))
                          (_tl223715223771_
                           (let ()
                             (declare (not safe))
                             (##cdr _e223717223766_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl223715223771_))
                          (let ((_e223720223774_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl223715223771_))))
                            (let ((_hd223719223777_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e223720223774_)))
                                  (_tl223718223779_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e223720223774_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd223719223777_))
                                  (let ((_e223723223782_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd223719223777_))))
                                    (let ((_hd223722223785_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e223723223782_)))
                                          (_tl223721223787_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e223723223782_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd223722223785_))
                                          (let ((_e223726223790_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd223722223785_))))
                                            (let ((_hd223725223793_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e223726223790_)))
                                                  (_tl223724223795_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e223726223790_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd223725223793_))
                                                  (let ((_e223729223798_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd223725223793_))))
                                                    (let ((_hd223728223801_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e223729223798_)))
                                                          (_tl223727223803_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e223729223798_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl223727223803_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl223724223795_))
                      (let ((_e223732223806_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl223724223795_))))
                        (let ((_hd223731223809_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223732223806_)))
                              (_tl223730223811_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223732223806_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd223731223809_))
                              (let ((_e223735223814_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd223731223809_))))
                                (let ((_hd223734223817_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223735223814_)))
                                      (_tl223733223819_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223735223814_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl223733223819_))
                                      (let ((_e223738223822_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl223733223819_))))
                                        (let ((_hd223737223825_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e223738223822_)))
                                              (_tl223736223827_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e223738223822_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd223737223825_))
                                              (let ((_e223741223830_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd223737223825_))))
                                                (let ((_hd223740223833_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e223741223830_)))
                                                      (_tl223739223835_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e223741223830_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd223740223833_))
                                                      (let ((_e223744223838_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd223740223833_))))
                (let ((_hd223743223841_
                       (let () (declare (not safe)) (##car _e223744223838_)))
                      (_tl223742223843_
                       (let () (declare (not safe)) (##cdr _e223744223838_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd223743223841_))
                      (let ((_e223747223846_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd223743223841_))))
                        (let ((_hd223746223849_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223747223846_)))
                              (_tl223745223851_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223747223846_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl223745223851_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl223742223843_))
                                  (let ((_e223750223854_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl223742223843_))))
                                    (let ((_hd223749223857_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e223750223854_)))
                                          (_tl223748223859_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e223750223854_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl223748223859_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl223739223835_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl223736223827_))
                                                  (let ((_e223753223862_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl223736223827_))))
                                                    (let ((_hd223752223865_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e223753223862_)))
                                                          (_tl223751223867_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e223753223862_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl223751223867_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl223730223811_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl223721223787_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223718223779_))
                              (let ((_e223756223870_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223718223779_))))
                                (let ((_hd223755223873_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223756223870_)))
                                      (_tl223754223875_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223756223870_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl223754223875_))
                                      ((lambda (_L223878_
                                                _L223879_
                                                _L223880_
                                                _L223881_
                                                _L223882_)
                                         (let* ((_get-kws-id223922_
                                                 (let ((__tmp237081
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L223694_)))
                                                       (__tmp237080
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp237081
                                                    __tmp237080)))
                                                (_get-kws-id223924_
                                                 (let ((__tmp237082
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx223395_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id223922_
                                                    __tmp237082)))
                                                (_main-id223926_
                                                 (let ((__tmp237084
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L223694_)))
                                                       (__tmp237083
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp237084
                                                    __tmp237083)))
                                                (_main-id223928_
                                                 (let ((__tmp237085
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx223395_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id223926_
                                                    __tmp237085)))
                                                (_g237086_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id223924_)))
                                                (_g237087_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id223928_)))
                                                (_new-kw-dispatch223932_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L223878_
                                                    _L223882_
                                                    _get-kws-id223924_)))
                                                (_new-get-kws223934_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L223879_
                                                    _L223881_
                                                    _main-id223928_))))
                                           (let ((__tmp237090
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L223694_)))
                                                 (__tmp237089
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id223924_)))
                                                 (__tmp237088
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id223928_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp237090
                                              '" => "
                                              __tmp237089
                                              '" => "
                                              __tmp237088))
                                           (let ((__tmp237095
                                                  (let ((__tmp237096
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__234716234717_
                                                            _main-id223928_
                                                            _L223880_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp237096
                                                          _lift1223572_)))
                                                 (__tmp237093
                                                  (let ((__tmp237094
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__234716234717_
                                                            _get-kws-id223924_
                                                            _new-get-kws223934_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp237094
                                                          _lift2223573_)))
                                                 (__tmp237091
                                                  (let ((__tmp237092
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__234716234717_
                                                            _L223694_
                                                            _new-kw-dispatch223932_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp237092
                                                          _bind223574_))))
                                             (declare (not safe))
                                             (_lp223569_
                                              _rest223594_
                                              __tmp237095
                                              __tmp237093
                                              __tmp237091))))
                                       _hd223755223873_
                                       _hd223752223865_
                                       _hd223749223857_
                                       _hd223746223849_
                                       _hd223728223801_)
                                      (let ()
                                        (declare (not safe))
                                        (_g223708223761_ _g223709223764_)))))
                              (let ()
                                (declare (not safe))
                                (_g223708223761_ _g223709223764_)))
                          (let ()
                            (declare (not safe))
                            (_g223708223761_ _g223709223764_)))
                      (let ()
                        (declare (not safe))
                        (_g223708223761_ _g223709223764_)))
                  (let ()
                    (declare (not safe))
                    (_g223708223761_ _g223709223764_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g223708223761_
                                                     _g223709223764_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g223708223761_
                                                 _g223709223764_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g223708223761_
                                             _g223709223764_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g223708223761_ _g223709223764_)))
                              (let ()
                                (declare (not safe))
                                (_g223708223761_ _g223709223764_)))))
                      (let ()
                        (declare (not safe))
                        (_g223708223761_ _g223709223764_)))))
              (let ()
                (declare (not safe))
                (_g223708223761_ _g223709223764_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g223708223761_
                                                 _g223709223764_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g223708223761_ _g223709223764_)))))
                              (let ()
                                (declare (not safe))
                                (_g223708223761_ _g223709223764_)))))
                      (let ()
                        (declare (not safe))
                        (_g223708223761_ _g223709223764_)))
                  (let ()
                    (declare (not safe))
                    (_g223708223761_ _g223709223764_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g223708223761_
                                                     _g223709223764_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g223708223761_
                                             _g223709223764_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g223708223761_ _g223709223764_)))))
                          (let ()
                            (declare (not safe))
                            (_g223708223761_ _g223709223764_)))))
                  (let ()
                    (declare (not safe))
                    (_g223708223761_ _g223709223764_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g223707223937_ _L223693_))))
                                         (___kont236558236559_
                                          (lambda (_L223644_ _L223645_)
                                            (let ((__tmp237097
                                                   (let ((__tmp237098
                                                          (let ((__tmp237099
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L223644_ '()))))
                    (declare (not safe))
                    (cons _L223645_ __tmp237099))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp237098
                                                           _bind223574_))))
                                              (declare (not safe))
                                              (_lp223569_
                                               _rest223594_
                                               _lift1223572_
                                               _lift2223573_
                                               __tmp237097)))))
                                     (let ((___match236581236582_
                                            (lambda (_e223604223669_
                                                     _hd223603223672_
                                                     _tl223602223674_
                                                     _e223607223677_
                                                     _hd223606223680_
                                                     _tl223605223682_
                                                     _e223610223685_
                                                     _hd223609223688_
                                                     _tl223608223690_)
                                              (let ((_L223693_
                                                     _hd223609223688_)
                                                    (_L223694_
                                                     _hd223606223680_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _L223694_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#kw-lambda-expr?
                                                            _L223693_)))
                                                    (___kont236556236557_
                                                     _L223693_
                                                     _L223694_)
                                                    (___kont236558236559_
                                                     _hd223609223688_
                                                     _hd223603223672_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx236554236555_))
                                           (let ((_e223604223669_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx236554236555_))))
                                             (let ((_tl223602223674_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e223604223669_)))
                                                   (_hd223603223672_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e223604223669_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd223603223672_))
                                                   (let ((_e223607223677_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd223603223672_))))
                                                     (let ((_tl223605223682_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e223607223677_)))
                                                           (_hd223606223680_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e223607223677_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl223605223682_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl223602223674_))
                       (let ((_e223610223685_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl223602223674_))))
                         (let ((_tl223608223690_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e223610223685_)))
                               (_hd223609223688_
                                (let ()
                                  (declare (not safe))
                                  (##car _e223610223685_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl223608223690_))
                               (___match236581236582_
                                _e223604223669_
                                _hd223603223672_
                                _tl223602223674_
                                _e223607223677_
                                _hd223606223680_
                                _tl223605223682_
                                _e223610223685_
                                _hd223609223688_
                                _tl223608223690_)
                               (let ()
                                 (declare (not safe))
                                 (_g223598223623_)))))
                       (let () (declare (not safe)) (_g223598223623_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl223602223674_))
                       (let ((_e223618223636_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl223602223674_))))
                         (let ((_tl223616223641_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e223618223636_)))
                               (_hd223617223639_
                                (let ()
                                  (declare (not safe))
                                  (##car _e223618223636_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl223616223641_))
                               (___kont236558236559_
                                _hd223617223639_
                                _hd223603223672_)
                               (let ()
                                 (declare (not safe))
                                 (_g223598223623_)))))
                       (let () (declare (not safe)) (_g223598223623_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl223602223674_))
                                                       (let ((_e223618223636_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl223602223674_))))
                 (let ((_tl223616223641_
                        (let () (declare (not safe)) (##cdr _e223618223636_)))
                       (_hd223617223639_
                        (let () (declare (not safe)) (##car _e223618223636_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl223616223641_))
                       (___kont236558236559_ _hd223617223639_ _hd223603223672_)
                       (let () (declare (not safe)) (_g223598223623_)))))
               (let () (declare (not safe)) (_g223598223623_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g223598223623_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest223575223583_))
                             (let ((_hd223580223946_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest223575223583_)))
                                   (_tl223581223948_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest223575223583_))))
                               (let* ((_hd223951_ _hd223580223946_)
                                      (_rest223953_ _tl223581223948_))
                                 (declare (not safe))
                                 (_K223579223943_ _rest223953_ _hd223951_)))
                             (let ()
                               (declare (not safe))
                               (_else223577223591_))))))))
          (let* ((___stx236598236599_ _stx223395_)
                 (_g223403223429_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx236598236599_)))))
            (let ((___kont236600236601_
                   (lambda (_L223489_ _L223490_)
                     (let ((__tmp237101
                            (lambda ()
                              (if (let ((__tmp237128
                                         (let ((__tmp237129
                                                (lambda (_g223518223521_
                                                         _g223519223523_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g223518223521_
                                                          _g223519223523_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp237129
                                                   '()
                                                   _L223490_))))
                                    (declare (not safe))
                                    (ormap1 _lift-kw-lambda?223399_
                                            __tmp237128))
                                  (let ((_g237115_
                                         (let ((__tmp237117
                                                (let ((__tmp237118
                                                       (lambda (_g223525223528_
                                                                _g223526223530_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g223525223528_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g223526223530_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp237118
                                                          '()
                                                          _L223490_))))
                                           (declare (not safe))
                                           (_lift-kw-lambda-bindings223400_
                                            __tmp237117))))
                                    (begin
                                      (let ((_g237116_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g237115_)
                                                   (##vector-length _g237115_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g237116_ 3)))
                                            (error "Context expects 3 values"
                                                   _g237116_)))
                                      (let ((_lift1223533_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g237115_ 0)))
                                            (_lift2223534_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g237115_ 1)))
                                            (_hd223535_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g237115_ 2))))
                                        (let* ((_expr223537_
                                                (let ((__tmp237119
                                                       (let ((__tmp237120
                                                              (let ((__tmp237121
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L223489_ '()))))
                        (declare (not safe))
                        (cons _hd223535_ __tmp237121))))
                 (declare (not safe))
                 (cons '%#let-values __tmp237120))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp237119
                                                   _stx223395_)))
                                               (_expr223539_
                                                (let ((__tmp237122
                                                       (let ((__tmp237123
                                                              (let ((__tmp237124
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr223537_ '()))))
                        (declare (not safe))
                        (cons _lift2223534_ __tmp237124))))
                 (declare (not safe))
                 (cons '%#let-values __tmp237123))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp237122
                                                   _stx223395_)))
                                               (_expr223541_
                                                (let ((__tmp237125
                                                       (let ((__tmp237126
                                                              (let ((__tmp237127
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr223539_ '()))))
                        (declare (not safe))
                        (cons _lift1223533_ __tmp237127))))
                 (declare (not safe))
                 (cons '%#let-values __tmp237126))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp237125
                                                   _stx223395_))))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#lift-top-lambda-let-values%
                                             _expr223541_))))))
                                  (let ((_g237102_
                                         (let ((__tmp237104
                                                (let ((__tmp237105
                                                       (lambda (_g223543223546_
                                                                _g223544223548_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g223543223546_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g223544223548_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp237105
                                                          '()
                                                          _L223490_))))
                                           (declare (not safe))
                                           (_compile-bindings223398_
                                            __tmp237104))))
                                    (begin
                                      (let ((_g237103_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g237102_)
                                                   (##vector-length _g237102_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g237103_ 3)))
                                            (error "Context expects 3 values"
                                                   _g237103_)))
                                      (let ((_lift1223551_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g237102_ 0)))
                                            (_lift2223552_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g237102_ 1)))
                                            (_hd223553_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g237102_ 2))))
                                        (let* ((_body223555_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _L223489_)))
                                               (_expr223557_
                                                (let ((__tmp237106
                                                       (let ((__tmp237107
                                                              (let ((__tmp237108
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _body223555_ '()))))
                        (declare (not safe))
                        (cons _hd223553_ __tmp237108))))
                 (declare (not safe))
                 (cons '%#let-values __tmp237107))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp237106
                                                   _stx223395_)))
                                               (_expr223559_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift2223552_))
                                                    _expr223557_
                                                    (let ((__tmp237109
                                                           (let ((__tmp237110
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp237111
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr223557_ '()))))
                            (declare (not safe))
                            (cons _lift2223552_ __tmp237111))))
                     (declare (not safe))
                     (cons '%#let-values __tmp237110))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp237109 _stx223395_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_expr223561_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift1223551_))
                                                    _expr223559_
                                                    (let ((__tmp237112
                                                           (let ((__tmp237113
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp237114
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr223559_ '()))))
                            (declare (not safe))
                            (cons _lift1223551_ __tmp237114))))
                     (declare (not safe))
                     (cons '%#let-values __tmp237113))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp237112 _stx223395_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _expr223561_)))))))
                           (__tmp237100
                            (let ((__obj236804
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj236804)
                              __obj236804)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp237101
                        gx#current-expander-context
                        __tmp237100))))
                  (___kont236604236605_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx223395_)))))
              (let ((___match236625236626_
                     (lambda (_e223409223441_
                              _hd223408223444_
                              _tl223407223446_
                              _e223412223449_
                              _hd223411223452_
                              _tl223410223454_
                              ___splice236602236603_
                              _target223413223457_
                              _tl223415223459_)
                       (letrec ((_loop223416223462_
                                 (lambda (_hd223414223465_ _bind223420223467_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd223414223465_))
                                       (let ((_e223417223470_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd223414223465_))))
                                         (let ((_lp-tl223419223475_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e223417223470_)))
                                               (_lp-hd223418223473_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e223417223470_))))
                                           (let ((__tmp237132
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd223418223473_
                                                          _bind223420223467_))))
                                             (declare (not safe))
                                             (_loop223416223462_
                                              _lp-tl223419223475_
                                              __tmp237132))))
                                       (let ((_bind223421223478_
                                              (reverse _bind223420223467_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl223410223454_))
                                             (let ((_e223424223481_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl223410223454_))))
                                               (let ((_tl223422223486_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e223424223481_)))
                                                     (_hd223423223484_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e223424223481_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl223422223486_))
                                                     (let ((_L223489_
                                                            _hd223423223484_)
                                                           (_L223490_
                                                            _bind223421223478_))
                                                       (if (let ((__tmp237130
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp237131
                                 (lambda (_g223510223513_ _g223511223515_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g223510223513_ _g223511223515_)))))
                            (declare (not safe))
                            (foldr1 __tmp237131 '() _L223490_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp237130))
                   (___kont236600236601_ _L223489_ _L223490_)
                   (___kont236604236605_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont236604236605_))))
                                             (___kont236604236605_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop223416223462_ _target223413223457_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx236598236599_))
                    (let ((_e223409223441_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx236598236599_))))
                      (let ((_tl223407223446_
                             (let ()
                               (declare (not safe))
                               (##cdr _e223409223441_)))
                            (_hd223408223444_
                             (let ()
                               (declare (not safe))
                               (##car _e223409223441_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl223407223446_))
                            (let ((_e223412223449_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl223407223446_))))
                              (let ((_tl223410223454_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e223412223449_)))
                                    (_hd223411223452_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e223412223449_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd223411223452_))
                                    (let ((___splice236602236603_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd223411223452_
                                              '0))))
                                      (let ((_tl223415223459_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice236602236603_
                                                '1)))
                                            (_target223413223457_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice236602236603_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl223415223459_))
                                            (___match236625236626_
                                             _e223409223441_
                                             _hd223408223444_
                                             _tl223407223446_
                                             _e223412223449_
                                             _hd223411223452_
                                             _tl223410223454_
                                             ___splice236602236603_
                                             _target223413223457_
                                             _tl223415223459_)
                                            (___kont236604236605_))))
                                    (___kont236604236605_))))
                            (___kont236604236605_))))
                    (___kont236604236605_))))))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_stx222539_)
        (letrec* ((_bind-e__234721234722_
                   (lambda (_id223379_ _expr223380_ _compile?223381_)
                     (let ((__tmp237135
                            (let ()
                              (declare (not safe))
                              (cons _id223379_ '())))
                           (__tmp237133
                            (let ((__tmp237134
                                   (if _compile?223381_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr223380_))
                                       _expr223380_)))
                              (declare (not safe))
                              (cons __tmp237134 '()))))
                       (declare (not safe))
                       (cons __tmp237135 __tmp237133))))
                  (_bind-e__0__234723234724_
                   (lambda (_id223386_ _expr223387_)
                     (let ((_compile?223389_ '#t))
                       (declare (not safe))
                       (_bind-e__234721234722_
                        _id223386_
                        _expr223387_
                        _compile?223389_))))
                  (_bind-e222541_
                   (lambda _g237137_
                     (let ((_g237136_
                            (let ()
                              (declare (not safe))
                              (##length _g237137_))))
                       (cond ((let () (declare (not safe)) (##fx= _g237136_ 2))
                              (apply (lambda (_id223386_ _expr223387_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__234723234724_
                                          _id223386_
                                          _expr223387_)))
                                     _g237137_))
                             ((let () (declare (not safe)) (##fx= _g237136_ 3))
                              (apply (lambda (_id223391_
                                              _expr223392_
                                              _compile?223393_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__234721234722_
                                          _id223391_
                                          _expr223392_
                                          _compile?223393_)))
                                     _g237137_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g237137_))))))
                  (_compile-bindings222542_
                   (lambda (_rest222677_)
                     (let _lp222679_ ((_rest222681_ _rest222677_)
                                      (_bind222682_ '()))
                       (let* ((_rest222683222691_ _rest222681_)
                              (_else222685222699_
                               (lambda () (reverse _bind222682_)))
                              (_K222687223366_
                               (lambda (_rest222702_ _hd222703_)
                                 (let* ((___stx236648236649_ _hd222703_)
                                        (_g222708222755_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx236648236649_)))))
                                   (let ((___kont236650236651_
                                          (lambda (_L223273_ _L223274_)
                                            (let* ((___stx236628236629_
                                                    _L223273_)
                                                   (_g223289223303_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx236628236629_)))))
                                              (let ((___kont236630236631_
                                                     (lambda (_L223351_)
                                                       (let ((__tmp237138
                                                              (let ((__tmp237139
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__234721234722_
                                _L223274_
                                _L223273_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp237139 _bind222682_))))
                 (declare (not safe))
                 (_lp222679_ _rest222702_ __tmp237138))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont236632236633_
                                                     (lambda (_L223316_)
                                                       (let ((_g237140_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx222539_
                         _L223274_
                         _L223316_
                         '#t))))
                 (begin
                   (let ((_g237141_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g237140_)
                                (##vector-length _g237140_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g237141_ 3)))
                         (error "Context expects 3 values" _g237141_)))
                   (let ((_ids223326_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g237140_ 0)))
                         (_impls223327_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g237140_ 1)))
                         (_clauses223328_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g237140_ 2))))
                     (let* ((_g237142_
                             (for-each gx#core-bind-runtime! _ids223326_))
                            (_xbind223331_
                             (map _bind-e222541_ _ids223326_ _impls223327_))
                            (_expr*223333_
                             (let ((__tmp237144
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses223328_)))
                                   (__tmp237143
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp237144
                                __tmp237143)))
                            (_bind*223335_
                             (let ()
                               (declare (not safe))
                               (_bind-e__234721234722_
                                _L223274_
                                _expr*223333_
                                '#f))))
                       (let ((__tmp237146
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L223274_)))
                             (__tmp237145
                              (map gxc#identifier-symbol _ids223326_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp237146
                          '" => "
                          __tmp237145))
                       (let ((__tmp237147
                              (let ((__tmp237148
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _bind222682_
                                               _xbind223331_))))
                                (declare (not safe))
                                (cons _bind*223335_ __tmp237148))))
                         (declare (not safe))
                         (_lp222679_ _rest222702_ __tmp237147)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match236639236640_
                                                       (lambda (_e223294223343_
                                                                _hd223293223346_
                                                                _tl223292223348_)
                                                         (let ((_L223351_
                                                                _tl223292223348_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L223351_))
                       (___kont236630236631_ _L223351_)
                       (___kont236632236633_ _tl223292223348_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx236628236629_))
                                                      (let ((_e223294223343_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx236628236629_))))
                (let ((_tl223292223348_
                       (let () (declare (not safe)) (##cdr _e223294223343_)))
                      (_hd223293223346_
                       (let () (declare (not safe)) (##car _e223294223343_))))
                  (___match236639236640_
                   _e223294223343_
                   _hd223293223346_
                   _tl223292223348_)))
              (let () (declare (not safe)) (_g223289223303_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont236652236653_
                                          (lambda (_L223101_ _L223102_)
                                            (let* ((_g223116223146_
                                                    (lambda (_g223117223143_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g223117223143_))))
                                                   (_g223115223241_
                                                    (lambda (_g223117223149_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g223117223149_))
                                                          (let ((_e223123223151_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g223117223149_))))
                    (let ((_hd223122223154_
                           (let ()
                             (declare (not safe))
                             (##car _e223123223151_)))
                          (_tl223121223156_
                           (let ()
                             (declare (not safe))
                             (##cdr _e223123223151_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl223121223156_))
                          (let ((_e223126223159_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl223121223156_))))
                            (let ((_hd223125223162_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e223126223159_)))
                                  (_tl223124223164_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e223126223159_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd223125223162_))
                                  (let ((_e223129223167_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd223125223162_))))
                                    (let ((_hd223128223170_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e223129223167_)))
                                          (_tl223127223172_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e223129223167_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd223128223170_))
                                          (let ((_e223132223175_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd223128223170_))))
                                            (let ((_hd223131223178_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e223132223175_)))
                                                  (_tl223130223180_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e223132223175_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd223131223178_))
                                                  (let ((_e223135223183_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd223131223178_))))
                                                    (let ((_hd223134223186_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e223135223183_)))
                                                          (_tl223133223188_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e223135223183_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl223133223188_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl223130223180_))
                      (let ((_e223138223191_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl223130223180_))))
                        (let ((_hd223137223194_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223138223191_)))
                              (_tl223136223196_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223138223191_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl223136223196_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl223127223172_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl223124223164_))
                                      (let ((_e223141223199_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl223124223164_))))
                                        (let ((_hd223140223202_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e223141223199_)))
                                              (_tl223139223204_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e223141223199_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl223139223204_))
                                              ((lambda (_L223207_
                                                        _L223208_
                                                        _L223209_)
                                                 (let* ((_lambda-id223233_
                                                         (let ((__tmp237150
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L223102_)))
                       (__tmp237149 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp237150 __tmp237149)))
                (_lambda-id223235_
                 (let ((__tmp237151
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx222539_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id223233_ __tmp237151)))
                (_g237152_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id223235_)))
                (_new-case-lambda-expr223238_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L223207_
                    _L223209_
                    _lambda-id223235_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp237154
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L223102_)))
                                                         (__tmp237153
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id223235_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp237154
                                                      '" => "
                                                      __tmp237153))
                                                   (let ((__tmp237157
                                                          (let ((__tmp237158
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__234721234722_
                            _L223102_
                            _new-case-lambda-expr223238_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp237158 _rest222702_)))
                 (__tmp237155
                  (let ((__tmp237156
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__234723234724_
                            _lambda-id223235_
                            _L223208_))))
                    (declare (not safe))
                    (cons __tmp237156 _bind222682_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp222679_
                                                      __tmp237157
                                                      __tmp237155))))
                                               _hd223140223202_
                                               _hd223137223194_
                                               _hd223134223186_)
                                              (let ()
                                                (declare (not safe))
                                                (_g223116223146_
                                                 _g223117223149_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g223116223146_ _g223117223149_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g223116223146_ _g223117223149_)))
                              (let ()
                                (declare (not safe))
                                (_g223116223146_ _g223117223149_)))))
                      (let ()
                        (declare (not safe))
                        (_g223116223146_ _g223117223149_)))
                  (let ()
                    (declare (not safe))
                    (_g223116223146_ _g223117223149_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g223116223146_
                                                     _g223117223149_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g223116223146_
                                             _g223117223149_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g223116223146_ _g223117223149_)))))
                          (let ()
                            (declare (not safe))
                            (_g223116223146_ _g223117223149_)))))
                  (let ()
                    (declare (not safe))
                    (_g223116223146_ _g223117223149_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g223115223241_ _L223101_))))
                                         (___kont236654236655_
                                          (lambda (_L222825_ _L222826_)
                                            (let* ((_g222840222893_
                                                    (lambda (_g222841222890_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g222841222890_))))
                                                   (_g222839223069_
                                                    (lambda (_g222841222896_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g222841222896_))
                                                          (let ((_e222849222898_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g222841222896_))))
                    (let ((_hd222848222901_
                           (let ()
                             (declare (not safe))
                             (##car _e222849222898_)))
                          (_tl222847222903_
                           (let ()
                             (declare (not safe))
                             (##cdr _e222849222898_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl222847222903_))
                          (let ((_e222852222906_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl222847222903_))))
                            (let ((_hd222851222909_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e222852222906_)))
                                  (_tl222850222911_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e222852222906_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd222851222909_))
                                  (let ((_e222855222914_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd222851222909_))))
                                    (let ((_hd222854222917_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e222855222914_)))
                                          (_tl222853222919_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e222855222914_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd222854222917_))
                                          (let ((_e222858222922_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd222854222917_))))
                                            (let ((_hd222857222925_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e222858222922_)))
                                                  (_tl222856222927_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e222858222922_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd222857222925_))
                                                  (let ((_e222861222930_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd222857222925_))))
                                                    (let ((_hd222860222933_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e222861222930_)))
                                                          (_tl222859222935_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e222861222930_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl222859222935_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl222856222927_))
                      (let ((_e222864222938_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl222856222927_))))
                        (let ((_hd222863222941_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222864222938_)))
                              (_tl222862222943_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222864222938_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd222863222941_))
                              (let ((_e222867222946_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd222863222941_))))
                                (let ((_hd222866222949_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222867222946_)))
                                      (_tl222865222951_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222867222946_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl222865222951_))
                                      (let ((_e222870222954_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl222865222951_))))
                                        (let ((_hd222869222957_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e222870222954_)))
                                              (_tl222868222959_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e222870222954_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd222869222957_))
                                              (let ((_e222873222962_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd222869222957_))))
                                                (let ((_hd222872222965_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e222873222962_)))
                                                      (_tl222871222967_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e222873222962_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd222872222965_))
                                                      (let ((_e222876222970_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd222872222965_))))
                (let ((_hd222875222973_
                       (let () (declare (not safe)) (##car _e222876222970_)))
                      (_tl222874222975_
                       (let () (declare (not safe)) (##cdr _e222876222970_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd222875222973_))
                      (let ((_e222879222978_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd222875222973_))))
                        (let ((_hd222878222981_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222879222978_)))
                              (_tl222877222983_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222879222978_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl222877222983_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl222874222975_))
                                  (let ((_e222882222986_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl222874222975_))))
                                    (let ((_hd222881222989_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e222882222986_)))
                                          (_tl222880222991_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e222882222986_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl222880222991_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl222871222967_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl222868222959_))
                                                  (let ((_e222885222994_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl222868222959_))))
                                                    (let ((_hd222884222997_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e222885222994_)))
                                                          (_tl222883222999_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e222885222994_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl222883222999_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl222862222943_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl222853222919_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222850222911_))
                              (let ((_e222888223002_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222850222911_))))
                                (let ((_hd222887223005_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222888223002_)))
                                      (_tl222886223007_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222888223002_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl222886223007_))
                                      ((lambda (_L223010_
                                                _L223011_
                                                _L223012_
                                                _L223013_
                                                _L223014_)
                                         (let* ((_get-kws-id223054_
                                                 (let ((__tmp237160
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L222826_)))
                                                       (__tmp237159
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp237160
                                                    __tmp237159)))
                                                (_get-kws-id223056_
                                                 (let ((__tmp237161
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx222539_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id223054_
                                                    __tmp237161)))
                                                (_main-id223058_
                                                 (let ((__tmp237163
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L222826_)))
                                                       (__tmp237162
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp237163
                                                    __tmp237162)))
                                                (_main-id223060_
                                                 (let ((__tmp237164
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx222539_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id223058_
                                                    __tmp237164)))
                                                (_g237165_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id223056_)))
                                                (_g237166_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id223060_)))
                                                (_new-kw-dispatch223064_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L223010_
                                                    _L223014_
                                                    _get-kws-id223056_)))
                                                (_new-get-kws223066_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L223011_
                                                    _L223013_
                                                    _main-id223060_))))
                                           (let ((__tmp237169
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L222826_)))
                                                 (__tmp237168
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id223056_)))
                                                 (__tmp237167
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id223060_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp237169
                                              '" => "
                                              __tmp237168
                                              '" => "
                                              __tmp237167))
                                           (let ((__tmp237170
                                                  (let ((__tmp237175
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__234721234722_
                                                            _main-id223060_
                                                            _L223012_
                                                            '#f)))
                                                        (__tmp237171
                                                         (let ((__tmp237174
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_bind-e__234721234722_
                           _get-kws-id223056_
                           _new-get-kws223066_
                           '#f)))
                       (__tmp237172
                        (let ((__tmp237173
                               (let ()
                                 (declare (not safe))
                                 (_bind-e__234721234722_
                                  _L222826_
                                  _new-kw-dispatch223064_
                                  '#f))))
                          (declare (not safe))
                          (cons __tmp237173 _rest222702_))))
                   (declare (not safe))
                   (cons __tmp237174 __tmp237172))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp237175
                                                          __tmp237171))))
                                             (declare (not safe))
                                             (_lp222679_
                                              __tmp237170
                                              _bind222682_))))
                                       _hd222887223005_
                                       _hd222884222997_
                                       _hd222881222989_
                                       _hd222878222981_
                                       _hd222860222933_)
                                      (let ()
                                        (declare (not safe))
                                        (_g222840222893_ _g222841222896_)))))
                              (let ()
                                (declare (not safe))
                                (_g222840222893_ _g222841222896_)))
                          (let ()
                            (declare (not safe))
                            (_g222840222893_ _g222841222896_)))
                      (let ()
                        (declare (not safe))
                        (_g222840222893_ _g222841222896_)))
                  (let ()
                    (declare (not safe))
                    (_g222840222893_ _g222841222896_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g222840222893_
                                                     _g222841222896_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g222840222893_
                                                 _g222841222896_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g222840222893_
                                             _g222841222896_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g222840222893_ _g222841222896_)))
                              (let ()
                                (declare (not safe))
                                (_g222840222893_ _g222841222896_)))))
                      (let ()
                        (declare (not safe))
                        (_g222840222893_ _g222841222896_)))))
              (let ()
                (declare (not safe))
                (_g222840222893_ _g222841222896_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g222840222893_
                                                 _g222841222896_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g222840222893_ _g222841222896_)))))
                              (let ()
                                (declare (not safe))
                                (_g222840222893_ _g222841222896_)))))
                      (let ()
                        (declare (not safe))
                        (_g222840222893_ _g222841222896_)))
                  (let ()
                    (declare (not safe))
                    (_g222840222893_ _g222841222896_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g222840222893_
                                                     _g222841222896_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g222840222893_
                                             _g222841222896_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g222840222893_ _g222841222896_)))))
                          (let ()
                            (declare (not safe))
                            (_g222840222893_ _g222841222896_)))))
                  (let ()
                    (declare (not safe))
                    (_g222840222893_ _g222841222896_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g222839223069_ _L222825_))))
                                         (___kont236656236657_
                                          (lambda (_L222776_ _L222777_)
                                            (let ((__tmp237176
                                                   (let ((__tmp237177
                                                          (let ((__tmp237178
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp237179
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L222776_))))
                           (declare (not safe))
                           (cons __tmp237179 '()))))
                    (declare (not safe))
                    (cons _L222777_ __tmp237178))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp237177
                                                           _bind222682_))))
                                              (declare (not safe))
                                              (_lp222679_
                                               _rest222702_
                                               __tmp237176)))))
                                     (let* ((___match236723236724_
                                             (lambda (_e222736222801_
                                                      _hd222735222804_
                                                      _tl222734222806_
                                                      _e222739222809_
                                                      _hd222738222812_
                                                      _tl222737222814_
                                                      _e222742222817_
                                                      _hd222741222820_
                                                      _tl222740222822_)
                                               (let ((_L222825_
                                                      _hd222741222820_)
                                                     (_L222826_
                                                      _hd222738222812_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L222826_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#kw-lambda-expr?
                                                             _L222825_)))
                                                     (___kont236654236655_
                                                      _L222825_
                                                      _L222826_)
                                                     (___kont236656236657_
                                                      _hd222741222820_
                                                      _hd222735222804_)))))
                                            (___match236701236702_
                                             (lambda (_e222725223077_
                                                      _hd222724223080_
                                                      _tl222723223082_
                                                      _e222728223085_
                                                      _hd222727223088_
                                                      _tl222726223090_
                                                      _e222731223093_
                                                      _hd222730223096_
                                                      _tl222729223098_)
                                               (let ((_L223101_
                                                      _hd222730223096_)
                                                     (_L223102_
                                                      _hd222727223088_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L223102_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L223101_)))
                                                     (___kont236652236653_
                                                      _L223101_
                                                      _L223102_)
                                                     (___match236723236724_
                                                      _e222725223077_
                                                      _hd222724223080_
                                                      _tl222723223082_
                                                      _e222728223085_
                                                      _hd222727223088_
                                                      _tl222726223090_
                                                      _e222731223093_
                                                      _hd222730223096_
                                                      _tl222729223098_)))))
                                            (___match236679236680_
                                             (lambda (_e222714223249_
                                                      _hd222713223252_
                                                      _tl222712223254_
                                                      _e222717223257_
                                                      _hd222716223260_
                                                      _tl222715223262_
                                                      _e222720223265_
                                                      _hd222719223268_
                                                      _tl222718223270_)
                                               (let ((_L223273_
                                                      _hd222719223268_)
                                                     (_L223274_
                                                      _hd222716223260_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L223274_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L223273_)))
                                                     (___kont236650236651_
                                                      _L223273_
                                                      _L223274_)
                                                     (___match236701236702_
                                                      _e222714223249_
                                                      _hd222713223252_
                                                      _tl222712223254_
                                                      _e222717223257_
                                                      _hd222716223260_
                                                      _tl222715223262_
                                                      _e222720223265_
                                                      _hd222719223268_
                                                      _tl222718223270_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx236648236649_))
                                           (let ((_e222714223249_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx236648236649_))))
                                             (let ((_tl222712223254_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e222714223249_)))
                                                   (_hd222713223252_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e222714223249_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd222713223252_))
                                                   (let ((_e222717223257_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd222713223252_))))
                                                     (let ((_tl222715223262_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e222717223257_)))
                                                           (_hd222716223260_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e222717223257_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl222715223262_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl222712223254_))
                       (let ((_e222720223265_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl222712223254_))))
                         (let ((_tl222718223270_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e222720223265_)))
                               (_hd222719223268_
                                (let ()
                                  (declare (not safe))
                                  (##car _e222720223265_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl222718223270_))
                               (___match236679236680_
                                _e222714223249_
                                _hd222713223252_
                                _tl222712223254_
                                _e222717223257_
                                _hd222716223260_
                                _tl222715223262_
                                _e222720223265_
                                _hd222719223268_
                                _tl222718223270_)
                               (let ()
                                 (declare (not safe))
                                 (_g222708222755_)))))
                       (let () (declare (not safe)) (_g222708222755_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl222712223254_))
                       (let ((_e222750222768_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl222712223254_))))
                         (let ((_tl222748222773_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e222750222768_)))
                               (_hd222749222771_
                                (let ()
                                  (declare (not safe))
                                  (##car _e222750222768_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl222748222773_))
                               (___kont236656236657_
                                _hd222749222771_
                                _hd222713223252_)
                               (let ()
                                 (declare (not safe))
                                 (_g222708222755_)))))
                       (let () (declare (not safe)) (_g222708222755_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl222712223254_))
                                                       (let ((_e222750222768_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl222712223254_))))
                 (let ((_tl222748222773_
                        (let () (declare (not safe)) (##cdr _e222750222768_)))
                       (_hd222749222771_
                        (let () (declare (not safe)) (##car _e222750222768_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl222748222773_))
                       (___kont236656236657_ _hd222749222771_ _hd222713223252_)
                       (let () (declare (not safe)) (_g222708222755_)))))
               (let () (declare (not safe)) (_g222708222755_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g222708222755_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest222683222691_))
                             (let ((_hd222688223369_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest222683222691_)))
                                   (_tl222689223371_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest222683222691_))))
                               (let* ((_hd223374_ _hd222688223369_)
                                      (_rest223376_ _tl222689223371_))
                                 (declare (not safe))
                                 (_K222687223366_ _rest223376_ _hd223374_)))
                             (let ()
                               (declare (not safe))
                               (_else222685222699_))))))))
          (let* ((___stx236740236741_ _stx222539_)
                 (_g222545222572_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx236740236741_)))))
            (let ((___kont236742236743_
                   (lambda (_L222632_ _L222633_ _L222634_)
                     (let ((__tmp237181
                            (lambda ()
                              (let ((_hd222671_
                                     (let ((__tmp237182
                                            (let ((__tmp237183
                                                   (lambda (_g222663222666_
                                                            _g222664222668_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g222663222666_
                                                             _g222664222668_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp237183
                                                      '()
                                                      _L222633_))))
                                       (declare (not safe))
                                       (_compile-bindings222542_ __tmp237182)))
                                    (_body222672_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L222632_))))
                                (let ((__tmp237184
                                       (let ((__tmp237185
                                              (let ((__tmp237186
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body222672_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _hd222671_
                                                      __tmp237186))))
                                         (declare (not safe))
                                         (cons _L222634_ __tmp237185))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp237184
                                   _stx222539_)))))
                           (__tmp237180
                            (let ((__obj236805
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj236805)
                              __obj236805)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp237181
                        gx#current-expander-context
                        __tmp237180))))
                  (___kont236746236747_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx222539_)))))
              (let ((___match236767236768_
                     (lambda (_e222552222584_
                              _hd222551222587_
                              _tl222550222589_
                              _e222555222592_
                              _hd222554222595_
                              _tl222553222597_
                              ___splice236744236745_
                              _target222556222600_
                              _tl222558222602_)
                       (letrec ((_loop222559222605_
                                 (lambda (_hd222557222608_ _bind222563222610_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd222557222608_))
                                       (let ((_e222560222613_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd222557222608_))))
                                         (let ((_lp-tl222562222618_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e222560222613_)))
                                               (_lp-hd222561222616_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e222560222613_))))
                                           (let ((__tmp237189
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd222561222616_
                                                          _bind222563222610_))))
                                             (declare (not safe))
                                             (_loop222559222605_
                                              _lp-tl222562222618_
                                              __tmp237189))))
                                       (let ((_bind222564222621_
                                              (reverse _bind222563222610_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl222553222597_))
                                             (let ((_e222567222624_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl222553222597_))))
                                               (let ((_tl222565222629_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e222567222624_)))
                                                     (_hd222566222627_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e222567222624_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl222565222629_))
                                                     (let ((_L222632_
                                                            _hd222566222627_)
                                                           (_L222633_
                                                            _bind222564222621_)
                                                           (_L222634_
                                                            _hd222551222587_))
                                                       (if (let ((__tmp237187
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp237188
                                 (lambda (_g222655222658_ _g222656222660_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g222655222658_ _g222656222660_)))))
                            (declare (not safe))
                            (foldr1 __tmp237188 '() _L222633_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp237187))
                   (___kont236742236743_ _L222632_ _L222633_ _L222634_)
                   (___kont236746236747_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont236746236747_))))
                                             (___kont236746236747_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop222559222605_ _target222556222600_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx236740236741_))
                    (let ((_e222552222584_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx236740236741_))))
                      (let ((_tl222550222589_
                             (let ()
                               (declare (not safe))
                               (##cdr _e222552222584_)))
                            (_hd222551222587_
                             (let ()
                               (declare (not safe))
                               (##car _e222552222584_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl222550222589_))
                            (let ((_e222555222592_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl222550222589_))))
                              (let ((_tl222553222597_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e222555222592_)))
                                    (_hd222554222595_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e222555222592_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd222554222595_))
                                    (let ((___splice236744236745_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd222554222595_
                                              '0))))
                                      (let ((_tl222558222602_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice236744236745_
                                                '1)))
                                            (_target222556222600_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice236744236745_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl222558222602_))
                                            (___match236767236768_
                                             _e222552222584_
                                             _hd222551222587_
                                             _tl222550222589_
                                             _e222555222592_
                                             _hd222554222595_
                                             _tl222553222597_
                                             ___splice236744236745_
                                             _target222556222600_
                                             _tl222558222602_)
                                            (___kont236746236747_))))
                                    (___kont236746236747_))))
                            (___kont236746236747_))))
                    (___kont236746236747_))))))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_bind222457_)
        (let* ((___stx236770236771_ _bind222457_)
               (_g222460222477_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx236770236771_)))))
          (let ((___kont236772236773_
                 (lambda (_L222513_ _L222514_)
                   (if (let () (declare (not safe)) (gx#identifier? _L222514_))
                       (let ((_$e222530_
                              (let ()
                                (declare (not safe))
                                (gxc#case-lambda-expr? _L222513_))))
                         (if _$e222530_
                             _$e222530_
                             (let ((_$e222533_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#opt-lambda-expr? _L222513_))))
                               (if _$e222533_
                                   _$e222533_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L222513_))))))
                       '#f)))
                (___kont236774236775_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx236770236771_))
                (let ((_e222466222489_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx236770236771_))))
                  (let ((_tl222464222494_
                         (let () (declare (not safe)) (##cdr _e222466222489_)))
                        (_hd222465222492_
                         (let ()
                           (declare (not safe))
                           (##car _e222466222489_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd222465222492_))
                        (let ((_e222469222497_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd222465222492_))))
                          (let ((_tl222467222502_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e222469222497_)))
                                (_hd222468222500_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e222469222497_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl222467222502_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl222464222494_))
                                    (let ((_e222472222505_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl222464222494_))))
                                      (let ((_tl222470222510_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e222472222505_)))
                                            (_hd222471222508_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e222472222505_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl222470222510_))
                                            (___kont236772236773_
                                             _hd222471222508_
                                             _hd222468222500_)
                                            (___kont236774236775_))))
                                    (___kont236774236775_))
                                (___kont236774236775_))))
                        (___kont236774236775_))))
                (___kont236774236775_))))))))
