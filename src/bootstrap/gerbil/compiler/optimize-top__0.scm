(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1708202850)
  (begin
    (define gxc#&collect-top-level-type-info
      (make-promise
       (lambda ()
         (let ((_tbl230643_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp236803 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl230643_ __tmp236803))
           (let ()
             (declare (not safe))
             (table-set! _tbl230643_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl230643_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl230643_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl230643_
              '%#define-values
              gxc#collect-top-level-type-define-values%))
           _tbl230643_))))
    (define gxc#apply-collect-top-level-type-info
      (lambda (_stx230626_ . _args230628_)
        (let ((__tmp236805
               (lambda ()
                 (declare (not safe))
                 (if (null? _args230628_)
                     (gxc#compile-e__0 _stx230626_)
                     (let ((_arg1230633_ (car _args230628_))
                           (_rest230635_ (cdr _args230628_)))
                       (if (null? _rest230635_)
                           (gxc#compile-e__1 _stx230626_ _arg1230633_)
                           (let ((_arg2230638_ (car _rest230635_))
                                 (_rest230640_ (cdr _rest230635_)))
                             (if (null? _rest230640_)
                                 (gxc#compile-e__2
                                  _stx230626_
                                  _arg1230633_
                                  _arg2230638_)
                                 (apply gxc#compile-e
                                        _stx230626_
                                        _arg1230633_
                                        _arg2230638_
                                        _rest230640_))))))))
              (__tmp236804 (force gxc#&collect-top-level-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp236805
           gxc#current-compile-methods
           __tmp236804))))
    (define gxc#&basic-expression-top-level-type
      (make-promise
       (lambda ()
         (let ((_tbl230623_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp236806 (force gxc#&false)))
             (declare (not safe))
             (hash-copy! _tbl230623_ __tmp236806))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl230623_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl230623_ '%#call gxc#basic-expression-type-call%))
           _tbl230623_))))
    (define gxc#apply-basic-expression-top-level-type
      (lambda (_stx230606_ . _args230608_)
        (let ((__tmp236808
               (lambda ()
                 (declare (not safe))
                 (if (null? _args230608_)
                     (gxc#compile-e__0 _stx230606_)
                     (let ((_arg1230613_ (car _args230608_))
                           (_rest230615_ (cdr _args230608_)))
                       (if (null? _rest230615_)
                           (gxc#compile-e__1 _stx230606_ _arg1230613_)
                           (let ((_arg2230618_ (car _rest230615_))
                                 (_rest230620_ (cdr _rest230615_)))
                             (if (null? _rest230620_)
                                 (gxc#compile-e__2
                                  _stx230606_
                                  _arg1230613_
                                  _arg2230618_)
                                 (apply gxc#compile-e
                                        _stx230606_
                                        _arg1230613_
                                        _arg2230618_
                                        _rest230620_))))))))
              (__tmp236807 (force gxc#&basic-expression-top-level-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp236808
           gxc#current-compile-methods
           __tmp236807))))
    (define gxc#&collect-type-info
      (make-promise
       (lambda ()
         (let ((_tbl230603_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp236809 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl230603_ __tmp236809))
           (let ()
             (declare (not safe))
             (table-set! _tbl230603_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl230603_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl230603_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl230603_
              '%#define-values
              gxc#collect-type-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl230603_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl230603_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl230603_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl230603_
              '%#let-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl230603_
              '%#letrec-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl230603_
              '%#letrec*-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl230603_ '%#call gxc#collect-type-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl230603_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl230603_ '%#set! gxc#collect-body-setq%))
           _tbl230603_))))
    (define gxc#apply-collect-type-info
      (lambda (_stx230586_ . _args230588_)
        (let ((__tmp236811
               (lambda ()
                 (declare (not safe))
                 (if (null? _args230588_)
                     (gxc#compile-e__0 _stx230586_)
                     (let ((_arg1230593_ (car _args230588_))
                           (_rest230595_ (cdr _args230588_)))
                       (if (null? _rest230595_)
                           (gxc#compile-e__1 _stx230586_ _arg1230593_)
                           (let ((_arg2230598_ (car _rest230595_))
                                 (_rest230600_ (cdr _rest230595_)))
                             (if (null? _rest230600_)
                                 (gxc#compile-e__2
                                  _stx230586_
                                  _arg1230593_
                                  _arg2230598_)
                                 (apply gxc#compile-e
                                        _stx230586_
                                        _arg1230593_
                                        _arg2230598_
                                        _rest230600_))))))))
              (__tmp236810 (force gxc#&collect-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp236811
           gxc#current-compile-methods
           __tmp236810))))
    (define gxc#&basic-expression-type
      (make-promise
       (lambda ()
         (let ((_tbl230583_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp236812 (force gxc#&false)))
             (declare (not safe))
             (hash-copy! _tbl230583_ __tmp236812))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl230583_
              '%#begin
              gxc#basic-expression-type-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl230583_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl230583_
              '%#lambda
              gxc#basic-expression-type-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl230583_
              '%#case-lambda
              gxc#basic-expression-type-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl230583_
              '%#let-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl230583_
              '%#letrec-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl230583_
              '%#letrec*-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl230583_ '%#call gxc#basic-expression-type-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl230583_ '%#ref gxc#basic-expression-type-ref%))
           _tbl230583_))))
    (define gxc#apply-basic-expression-type
      (lambda (_stx230566_ . _args230568_)
        (let ((__tmp236814
               (lambda ()
                 (declare (not safe))
                 (if (null? _args230568_)
                     (gxc#compile-e__0 _stx230566_)
                     (let ((_arg1230573_ (car _args230568_))
                           (_rest230575_ (cdr _args230568_)))
                       (if (null? _rest230575_)
                           (gxc#compile-e__1 _stx230566_ _arg1230573_)
                           (let ((_arg2230578_ (car _rest230575_))
                                 (_rest230580_ (cdr _rest230575_)))
                             (if (null? _rest230580_)
                                 (gxc#compile-e__2
                                  _stx230566_
                                  _arg1230573_
                                  _arg2230578_)
                                 (apply gxc#compile-e
                                        _stx230566_
                                        _arg1230573_
                                        _arg2230578_
                                        _rest230580_))))))))
              (__tmp236813 (force gxc#&basic-expression-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp236814
           gxc#current-compile-methods
           __tmp236813))))
    (define gxc#&lift-top-lambdas
      (make-promise
       (lambda ()
         (let ((_tbl230563_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp236815 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-copy! _tbl230563_ __tmp236815))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl230563_
              '%#define-values
              gxc#lift-top-lambda-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl230563_
              '%#let-values
              gxc#lift-top-lambda-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl230563_
              '%#letrec-values
              gxc#lift-top-lambda-letrec-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl230563_
              '%#letrec*-values
              gxc#lift-top-lambda-letrec-values%))
           _tbl230563_))))
    (define gxc#apply-lift-top-lambdas
      (lambda (_stx230546_ . _args230548_)
        (let ((__tmp236817
               (lambda ()
                 (declare (not safe))
                 (if (null? _args230548_)
                     (gxc#compile-e__0 _stx230546_)
                     (let ((_arg1230553_ (car _args230548_))
                           (_rest230555_ (cdr _args230548_)))
                       (if (null? _rest230555_)
                           (gxc#compile-e__1 _stx230546_ _arg1230553_)
                           (let ((_arg2230558_ (car _rest230555_))
                                 (_rest230560_ (cdr _rest230555_)))
                             (if (null? _rest230560_)
                                 (gxc#compile-e__2
                                  _stx230546_
                                  _arg1230553_
                                  _arg2230558_)
                                 (apply gxc#compile-e
                                        _stx230546_
                                        _arg1230553_
                                        _arg2230558_
                                        _rest230560_))))))))
              (__tmp236816 (force gxc#&lift-top-lambdas)))
          (declare (not safe))
          (call-with-parameters
           __tmp236817
           gxc#current-compile-methods
           __tmp236816))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_stx230449_)
        (let* ((___stx234723234724_ _stx230449_)
               (_g230452230472_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx234723234724_)))))
          (let ((___kont234725234726_
                 (lambda (_L230516_ _L230517_)
                   (let ((_sym230535_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L230517_))))
                     (if (let ((__tmp236818 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp236818 _sym230535_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym230535_))
                         (let ((_type230536230538_
                                (let ()
                                  (declare (not safe))
                                  (gxc#apply-basic-expression-top-level-type
                                   _L230516_))))
                           (if _type230536230538_
                               (let ((_type230541_ _type230536230538_))
                                 (declare (not safe))
                                 (gxc#optimizer-declare-type!__0
                                  _sym230535_
                                  _type230541_))
                               '#f))))))
                (___kont234727234728_ (lambda () '#!void)))
            (let ((___match234756234757_
                   (lambda (_e230458230484_
                            _hd230457230487_
                            _tl230456230489_
                            _e230461230492_
                            _hd230460230495_
                            _tl230459230497_
                            _e230464230500_
                            _hd230463230503_
                            _tl230462230505_
                            _e230467230508_
                            _hd230466230511_
                            _tl230465230513_)
                     (let ((_L230516_ _hd230466230511_)
                           (_L230517_ _hd230463230503_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L230517_))
                           (___kont234725234726_ _L230516_ _L230517_)
                           (___kont234727234728_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx234723234724_))
                  (let ((_e230458230484_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx234723234724_))))
                    (let ((_tl230456230489_
                           (let ()
                             (declare (not safe))
                             (##cdr _e230458230484_)))
                          (_hd230457230487_
                           (let ()
                             (declare (not safe))
                             (##car _e230458230484_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl230456230489_))
                          (let ((_e230461230492_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl230456230489_))))
                            (let ((_tl230459230497_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e230461230492_)))
                                  (_hd230460230495_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e230461230492_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd230460230495_))
                                  (let ((_e230464230500_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd230460230495_))))
                                    (let ((_tl230462230505_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e230464230500_)))
                                          (_hd230463230503_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e230464230500_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl230462230505_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl230459230497_))
                                              (let ((_e230467230508_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl230459230497_))))
                                                (let ((_tl230465230513_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e230467230508_)))
                                                      (_hd230466230511_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e230467230508_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl230465230513_))
                                                      (___match234756234757_
                                                       _e230458230484_
                                                       _hd230457230487_
                                                       _tl230456230489_
                                                       _e230461230492_
                                                       _hd230460230495_
                                                       _tl230459230497_
                                                       _e230464230500_
                                                       _hd230463230503_
                                                       _tl230462230505_
                                                       _e230467230508_
                                                       _hd230466230511_
                                                       _tl230465230513_)
                                                      (___kont234727234728_))))
                                              (___kont234727234728_))
                                          (___kont234727234728_))))
                                  (___kont234727234728_))))
                          (___kont234727234728_))))
                  (___kont234727234728_)))))))
    (define gxc#collect-type-define-values%
      (lambda (_stx230305_)
        (let* ((___stx234759234760_ _stx230305_)
               (_g230308230339_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx234759234760_)))))
          (let ((___kont234761234762_
                 (lambda (_L230421_ _L230422_)
                   (let ((_sym230438_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L230422_))))
                     (if (let ((__tmp236819 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp236819 _sym230438_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym230438_))
                         (if (let ()
                               (declare (not safe))
                               (gxc#optimizer-lookup-type _sym230438_))
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"skipping type inference for already declared type "
                                _sym230438_))
                             (let ((_type230439230441_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#apply-basic-expression-type
                                       _L230421_))))
                               (if _type230439230441_
                                   (let ((_type230444_ _type230439230441_))
                                     (declare (not safe))
                                     (gxc#optimizer-declare-type!__0
                                      _sym230438_
                                      _type230444_))
                                   '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__0 _L230421_)))))
                (___kont234763234764_
                 (lambda (_L230368_ _L230369_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__0 _L230368_)))))
            (let ((___match234792234793_
                   (lambda (_e230314230389_
                            _hd230313230392_
                            _tl230312230394_
                            _e230317230397_
                            _hd230316230400_
                            _tl230315230402_
                            _e230320230405_
                            _hd230319230408_
                            _tl230318230410_
                            _e230323230413_
                            _hd230322230416_
                            _tl230321230418_)
                     (let ((_L230421_ _hd230322230416_)
                           (_L230422_ _hd230319230408_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L230422_))
                           (___kont234761234762_ _L230421_ _L230422_)
                           (___kont234763234764_
                            _hd230322230416_
                            _hd230316230400_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx234759234760_))
                  (let ((_e230314230389_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx234759234760_))))
                    (let ((_tl230312230394_
                           (let ()
                             (declare (not safe))
                             (##cdr _e230314230389_)))
                          (_hd230313230392_
                           (let ()
                             (declare (not safe))
                             (##car _e230314230389_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl230312230394_))
                          (let ((_e230317230397_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl230312230394_))))
                            (let ((_tl230315230402_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e230317230397_)))
                                  (_hd230316230400_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e230317230397_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd230316230400_))
                                  (let ((_e230320230405_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd230316230400_))))
                                    (let ((_tl230318230410_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e230320230405_)))
                                          (_hd230319230408_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e230320230405_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl230318230410_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl230315230402_))
                                              (let ((_e230323230413_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl230315230402_))))
                                                (let ((_tl230321230418_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e230323230413_)))
                                                      (_hd230322230416_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e230323230413_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl230321230418_))
                                                      (___match234792234793_
                                                       _e230314230389_
                                                       _hd230313230392_
                                                       _tl230312230394_
                                                       _e230317230397_
                                                       _hd230316230400_
                                                       _tl230315230402_
                                                       _e230320230405_
                                                       _hd230319230408_
                                                       _tl230318230410_
                                                       _e230323230413_
                                                       _hd230322230416_
                                                       _tl230321230418_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g230308230339_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g230308230339_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl230315230402_))
                                              (let ((_e230334230360_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl230315230402_))))
                                                (let ((_tl230332230365_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e230334230360_)))
                                                      (_hd230333230363_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e230334230360_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl230332230365_))
                                                      (___kont234763234764_
                                                       _hd230333230363_
                                                       _hd230316230400_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g230308230339_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g230308230339_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl230315230402_))
                                      (let ((_e230334230360_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl230315230402_))))
                                        (let ((_tl230332230365_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230334230360_)))
                                              (_hd230333230363_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230334230360_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl230332230365_))
                                              (___kont234763234764_
                                               _hd230333230363_
                                               _hd230316230400_)
                                              (let ()
                                                (declare (not safe))
                                                (_g230308230339_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g230308230339_))))))
                          (let () (declare (not safe)) (_g230308230339_)))))
                  (let () (declare (not safe)) (_g230308230339_))))))))
    (define gxc#collect-type-let-values%
      (lambda (_stx230090_)
        (letrec ((_collect-e230092_
                  (lambda (_hd230249_ _expr230250_)
                    (let* ((___stx234815234816_ _hd230249_)
                           (_g230253230263_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx234815234816_)))))
                      (let ((___kont234817234818_
                             (lambda (_L230283_)
                               (let ((_sym230294_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#identifier-symbol _L230283_))))
                                 (if (let ((__tmp236820
                                            (gxc#current-compile-mutators)))
                                       (declare (not safe))
                                       (hash-get __tmp236820 _sym230294_))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#verbose
                                        '"skipping type declaration for mutable binding "
                                        _sym230294_))
                                     (let ((_type230295230297_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-basic-expression-type
                                               _expr230250_))))
                                       (if _type230295230297_
                                           (let ((_type230300_
                                                  _type230295230297_))
                                             (declare (not safe))
                                             (gxc#optimizer-declare-type!__%
                                              _sym230294_
                                              _type230300_
                                              '#t))
                                           '#f))))))
                            (___kont234819234820_ (lambda () '#!void)))
                        (let ((___match234828234829_
                               (lambda (_e230258230275_
                                        _hd230257230278_
                                        _tl230256230280_)
                                 (let ((_L230283_ _hd230257230278_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _L230283_))
                                       (___kont234817234818_ _L230283_)
                                       (___kont234819234820_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx234815234816_))
                              (let ((_e230258230275_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx234815234816_))))
                                (let ((_tl230256230280_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230258230275_)))
                                      (_hd230257230278_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230258230275_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl230256230280_))
                                      (___match234828234829_
                                       _e230258230275_
                                       _hd230257230278_
                                       _tl230256230280_)
                                      (___kont234819234820_))))
                              (___kont234819234820_))))))))
          (let* ((_g230094230129_
                  (lambda (_g230095230126_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g230095230126_))))
                 (_g230093230246_
                  (lambda (_g230095230132_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g230095230132_))
                        (let ((_e230101230134_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g230095230132_))))
                          (let ((_hd230100230137_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e230101230134_)))
                                (_tl230099230139_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e230101230134_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl230099230139_))
                                (let ((_e230104230142_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl230099230139_))))
                                  (let ((_hd230103230145_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e230104230142_)))
                                        (_tl230102230147_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e230104230142_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd230103230145_))
                                        (let ((_g236821_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd230103230145_
                                                  '0))))
                                          (begin
                                            (let ((_g236822_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g236821_)
                                                         (##vector-length
                                                          _g236821_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g236822_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g236822_)))
                                            (let ((_target230105230150_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g236821_
                                                      0)))
                                                  (_tl230107230152_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g236821_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl230107230152_))
                                                  (letrec ((_loop230108230155_
                                                            (lambda (_hd230106230158_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr230112230160_
                             _hd230113230162_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd230106230158_))
                          (let ((_e230109230165_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd230106230158_))))
                            (let ((_lp-hd230110230168_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e230109230165_)))
                                  (_lp-tl230111230170_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e230109230165_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _lp-hd230110230168_))
                                  (let ((_e230118230173_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _lp-hd230110230168_))))
                                    (let ((_hd230117230176_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e230118230173_)))
                                          (_tl230116230178_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e230118230173_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl230116230178_))
                                          (let ((_e230121230181_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl230116230178_))))
                                            (let ((_hd230120230184_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e230121230181_)))
                                                  (_tl230119230186_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e230121230181_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl230119230186_))
                                                  (let ((__tmp236827
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _hd230120230184_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr230112230160_)))
                (__tmp236826
                 (let ()
                   (declare (not safe))
                   (cons _hd230117230176_ _hd230113230162_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_loop230108230155_
                                                     _lp-tl230111230170_
                                                     __tmp236827
                                                     __tmp236826))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g230094230129_
                                                     _g230095230132_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g230094230129_
                                             _g230095230132_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g230094230129_ _g230095230132_)))))
                          (let ((_expr230114230189_
                                 (reverse _expr230112230160_))
                                (_hd230115230191_ (reverse _hd230113230162_)))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl230102230147_))
                                (let ((_e230124230194_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl230102230147_))))
                                  (let ((_hd230123230197_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e230124230194_)))
                                        (_tl230122230199_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e230124230194_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl230122230199_))
                                        ((lambda (_L230202_
                                                  _L230203_
                                                  _L230204_)
                                           (for-each
                                            _collect-e230092_
                                            (let ((__tmp236823
                                                   (lambda (_g230224230227_
                                                            _g230225230229_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g230224230227_
                                                             _g230225230229_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp236823
                                                      '()
                                                      _L230204_))
                                            (let ((__tmp236824
                                                   (lambda (_g230231230234_
                                                            _g230232230236_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g230231230234_
                                                             _g230232230236_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp236824
                                                      '()
                                                      _L230203_)))
                                           (for-each
                                            gxc#compile-e
                                            (let ((__tmp236825
                                                   (lambda (_g230238230241_
                                                            _g230239230243_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g230238230241_
                                                             _g230239230243_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp236825
                                                      '()
                                                      _L230203_)))
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _L230202_)))
                                         _hd230123230197_
                                         _expr230114230189_
                                         _hd230115230191_)
                                        (let ()
                                          (declare (not safe))
                                          (_g230094230129_ _g230095230132_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g230094230129_ _g230095230132_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop230108230155_
                                                       _target230105230150_
                                                       '()
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g230094230129_
                                                     _g230095230132_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g230094230129_ _g230095230132_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g230094230129_ _g230095230132_)))))
                        (let ()
                          (declare (not safe))
                          (_g230094230129_ _g230095230132_))))))
            (declare (not safe))
            (_g230093230246_ _stx230090_)))))
    (define gxc#collect-type-call%
      (lambda (_stx229582_)
        (let* ((___stx234831234832_ _stx229582_)
               (_g229586229701_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx234831234832_)))))
          (let ((___kont234833234834_
                 (lambda (_L230040_ _L230041_ _L230042_ _L230043_ _L230044_)
                   (let ((__tmp236831
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L230043_)))
                         (__tmp236830
                          (let () (declare (not safe)) (gx#stx-e _L230042_)))
                         (__tmp236829
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L230041_)))
                         (__tmp236828
                          (let () (declare (not safe)) (gx#stx-e _L230040_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp236831
                      __tmp236830
                      __tmp236829
                      __tmp236828))))
                (___kont234835234836_
                 (lambda (_L229868_ _L229869_ _L229870_ _L229871_)
                   (let ((__tmp236834
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L229870_)))
                         (__tmp236833
                          (let () (declare (not safe)) (gx#stx-e _L229869_)))
                         (__tmp236832
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L229868_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp236834
                      __tmp236833
                      __tmp236832
                      '#f))))
                (___kont234837234838_
                 (lambda (_L229738_)
                   (for-each
                    gxc#compile-e
                    (let ((__tmp236835
                           (lambda (_g229751229754_ _g229752229756_)
                             (let ()
                               (declare (not safe))
                               (cons _g229751229754_ _g229752229756_)))))
                      (declare (not safe))
                      (foldr1 __tmp236835 '() _L229738_))))))
            (let* ((___match235088235089_
                    (lambda (_e229687229706_
                             _hd229686229709_
                             _tl229685229711_
                             ___splice234839234840_
                             _target229688229714_
                             _tl229690229716_)
                      (letrec ((_loop229691229719_
                                (lambda (_hd229689229722_ _expr229695229724_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd229689229722_))
                                      (let ((_e229692229727_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd229689229722_))))
                                        (let ((_lp-tl229694229732_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229692229727_)))
                                              (_lp-hd229693229730_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229692229727_))))
                                          (let ((__tmp236836
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd229693229730_
                                                         _expr229695229724_))))
                                            (declare (not safe))
                                            (_loop229691229719_
                                             _lp-tl229694229732_
                                             __tmp236836))))
                                      (let ((_expr229696229735_
                                             (reverse _expr229695229724_)))
                                        (___kont234837234838_
                                         _expr229696229735_))))))
                        (let ()
                          (declare (not safe))
                          (_loop229691229719_ _target229688229714_ '())))))
                   (___match234968234969_
                    (lambda (_e229595229912_
                             _hd229594229915_
                             _tl229593229917_
                             _e229598229920_
                             _hd229597229923_
                             _tl229596229925_
                             _e229601229928_
                             _hd229600229931_
                             _tl229599229933_
                             _e229604229936_
                             _hd229603229939_
                             _tl229602229941_
                             _e229607229944_
                             _hd229606229947_
                             _tl229605229949_
                             _e229610229952_
                             _hd229609229955_
                             _tl229608229957_
                             _e229613229960_
                             _hd229612229963_
                             _tl229611229965_
                             _e229616229968_
                             _hd229615229971_
                             _tl229614229973_
                             _e229619229976_
                             _hd229618229979_
                             _tl229617229981_
                             _e229622229984_
                             _hd229621229987_
                             _tl229620229989_
                             _e229625229992_
                             _hd229624229995_
                             _tl229623229997_
                             _e229628230000_
                             _hd229627230003_
                             _tl229626230005_
                             _e229631230008_
                             _hd229630230011_
                             _tl229629230013_
                             _e229634230016_
                             _hd229633230019_
                             _tl229632230021_
                             _e229637230024_
                             _hd229636230027_
                             _tl229635230029_
                             _e229640230032_
                             _hd229639230035_
                             _tl229638230037_)
                      (let ((_L230040_ _hd229639230035_)
                            (_L230041_ _hd229630230011_)
                            (_L230042_ _hd229621229987_)
                            (_L230043_ _hd229612229963_)
                            (_L230044_ _hd229603229939_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _L230044_
                               'bind-method!))
                            (___kont234833234834_
                             _L230040_
                             _L230041_
                             _L230042_
                             _L230043_
                             _L230044_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl229593229917_))
                                (let ((___splice234839234840_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl229593229917_
                                          '0))))
                                  (let ((_tl229690229716_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice234839234840_
                                            '1)))
                                        (_target229688229714_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice234839234840_
                                            '0))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl229690229716_))
                                        (___match235088235089_
                                         _e229595229912_
                                         _hd229594229915_
                                         _tl229593229917_
                                         ___splice234839234840_
                                         _target229688229714_
                                         _tl229690229716_)
                                        (let ()
                                          (declare (not safe))
                                          (_g229586229701_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g229586229701_))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx234831234832_))
                  (let ((_e229595229912_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx234831234832_))))
                    (let ((_tl229593229917_
                           (let ()
                             (declare (not safe))
                             (##cdr _e229595229912_)))
                          (_hd229594229915_
                           (let ()
                             (declare (not safe))
                             (##car _e229595229912_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl229593229917_))
                          (let ((_e229598229920_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl229593229917_))))
                            (let ((_tl229596229925_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e229598229920_)))
                                  (_hd229597229923_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e229598229920_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd229597229923_))
                                  (let ((_e229601229928_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd229597229923_))))
                                    (let ((_tl229599229933_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e229601229928_)))
                                          (_hd229600229931_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e229601229928_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd229600229931_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd229600229931_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl229599229933_))
                                                  (let ((_e229604229936_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl229599229933_))))
                                                    (let ((_tl229602229941_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e229604229936_)))
                                                          (_hd229603229939_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e229604229936_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl229602229941_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl229596229925_))
                      (let ((_e229607229944_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl229596229925_))))
                        (let ((_tl229605229949_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229607229944_)))
                              (_hd229606229947_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229607229944_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd229606229947_))
                              (let ((_e229610229952_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd229606229947_))))
                                (let ((_tl229608229957_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229610229952_)))
                                      (_hd229609229955_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229610229952_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd229609229955_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd229609229955_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl229608229957_))
                                              (let ((_e229613229960_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl229608229957_))))
                                                (let ((_tl229611229965_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e229613229960_)))
                                                      (_hd229612229963_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e229613229960_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl229611229965_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl229605229949_))
                                                          (let ((_e229616229968_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl229605229949_))))
                    (let ((_tl229614229973_
                           (let ()
                             (declare (not safe))
                             (##cdr _e229616229968_)))
                          (_hd229615229971_
                           (let ()
                             (declare (not safe))
                             (##car _e229616229968_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd229615229971_))
                          (let ((_e229619229976_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd229615229971_))))
                            (let ((_tl229617229981_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e229619229976_)))
                                  (_hd229618229979_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e229619229976_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd229618229979_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd229618229979_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl229617229981_))
                                          (let ((_e229622229984_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl229617229981_))))
                                            (let ((_tl229620229989_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e229622229984_)))
                                                  (_hd229621229987_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e229622229984_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl229620229989_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl229614229973_))
                                                      (let ((_e229625229992_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl229614229973_))))
                (let ((_tl229623229997_
                       (let () (declare (not safe)) (##cdr _e229625229992_)))
                      (_hd229624229995_
                       (let () (declare (not safe)) (##car _e229625229992_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd229624229995_))
                      (let ((_e229628230000_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd229624229995_))))
                        (let ((_tl229626230005_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229628230000_)))
                              (_hd229627230003_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229628230000_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd229627230003_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd229627230003_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl229626230005_))
                                      (let ((_e229631230008_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl229626230005_))))
                                        (let ((_tl229629230013_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229631230008_)))
                                              (_hd229630230011_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229631230008_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229629230013_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl229623229997_))
                                                  (let ((_e229634230016_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl229623229997_))))
                                                    (let ((_tl229632230021_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e229634230016_)))
                                                          (_hd229633230019_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e229634230016_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd229633230019_))
                                                          (let ((_e229637230024_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd229633230019_))))
                    (let ((_tl229635230029_
                           (let ()
                             (declare (not safe))
                             (##cdr _e229637230024_)))
                          (_hd229636230027_
                           (let ()
                             (declare (not safe))
                             (##car _e229637230024_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd229636230027_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd229636230027_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl229635230029_))
                                  (let ((_e229640230032_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl229635230029_))))
                                    (let ((_tl229638230037_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e229640230032_)))
                                          (_hd229639230035_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e229640230032_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl229638230037_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229632230021_))
                                              (___match234968234969_
                                               _e229595229912_
                                               _hd229594229915_
                                               _tl229593229917_
                                               _e229598229920_
                                               _hd229597229923_
                                               _tl229596229925_
                                               _e229601229928_
                                               _hd229600229931_
                                               _tl229599229933_
                                               _e229604229936_
                                               _hd229603229939_
                                               _tl229602229941_
                                               _e229607229944_
                                               _hd229606229947_
                                               _tl229605229949_
                                               _e229610229952_
                                               _hd229609229955_
                                               _tl229608229957_
                                               _e229613229960_
                                               _hd229612229963_
                                               _tl229611229965_
                                               _e229616229968_
                                               _hd229615229971_
                                               _tl229614229973_
                                               _e229619229976_
                                               _hd229618229979_
                                               _tl229617229981_
                                               _e229622229984_
                                               _hd229621229987_
                                               _tl229620229989_
                                               _e229625229992_
                                               _hd229624229995_
                                               _tl229623229997_
                                               _e229628230000_
                                               _hd229627230003_
                                               _tl229626230005_
                                               _e229631230008_
                                               _hd229630230011_
                                               _tl229629230013_
                                               _e229634230016_
                                               _hd229633230019_
                                               _tl229632230021_
                                               _e229637230024_
                                               _hd229636230027_
                                               _tl229635230029_
                                               _e229640230032_
                                               _hd229639230035_
                                               _tl229638230037_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl229593229917_))
                                                  (let ((___splice234839234840_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl229593229917_
                                                            '0))))
                                                    (let ((_tl229690229716_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice234839234840_
                                                              '1)))
                                                          (_target229688229714_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice234839234840_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl229690229716_))
                                                          (___match235088235089_
                                                           _e229595229912_
                                                           _hd229594229915_
                                                           _tl229593229917_
                                                           ___splice234839234840_
                                                           _target229688229714_
                                                           _tl229690229716_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g229586229701_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g229586229701_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl229593229917_))
                                              (let ((___splice234839234840_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl229593229917_
                                                        '0))))
                                                (let ((_tl229690229716_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice234839234840_
                                                          '1)))
                                                      (_target229688229714_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice234839234840_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl229690229716_))
                                                      (___match235088235089_
                                                       _e229595229912_
                                                       _hd229594229915_
                                                       _tl229593229917_
                                                       ___splice234839234840_
                                                       _target229688229714_
                                                       _tl229690229716_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g229586229701_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g229586229701_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl229593229917_))
                                      (let ((___splice234839234840_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl229593229917_
                                                '0))))
                                        (let ((_tl229690229716_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice234839234840_
                                                  '1)))
                                              (_target229688229714_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice234839234840_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229690229716_))
                                              (___match235088235089_
                                               _e229595229912_
                                               _hd229594229915_
                                               _tl229593229917_
                                               ___splice234839234840_
                                               _target229688229714_
                                               _tl229690229716_)
                                              (let ()
                                                (declare (not safe))
                                                (_g229586229701_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229586229701_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl229593229917_))
                                  (let ((___splice234839234840_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl229593229917_
                                            '0))))
                                    (let ((_tl229690229716_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice234839234840_
                                              '1)))
                                          (_target229688229714_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice234839234840_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl229690229716_))
                                          (___match235088235089_
                                           _e229595229912_
                                           _hd229594229915_
                                           _tl229593229917_
                                           ___splice234839234840_
                                           _target229688229714_
                                           _tl229690229716_)
                                          (let ()
                                            (declare (not safe))
                                            (_g229586229701_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g229586229701_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl229593229917_))
                              (let ((___splice234839234840_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl229593229917_
                                        '0))))
                                (let ((_tl229690229716_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice234839234840_
                                          '1)))
                                      (_target229688229714_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice234839234840_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl229690229716_))
                                      (___match235088235089_
                                       _e229595229912_
                                       _hd229594229915_
                                       _tl229593229917_
                                       ___splice234839234840_
                                       _target229688229714_
                                       _tl229690229716_)
                                      (let ()
                                        (declare (not safe))
                                        (_g229586229701_)))))
                              (let ()
                                (declare (not safe))
                                (_g229586229701_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl229593229917_))
                      (let ((___splice234839234840_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl229593229917_ '0))))
                        (let ((_tl229690229716_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice234839234840_ '1)))
                              (_target229688229714_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice234839234840_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl229690229716_))
                              (___match235088235089_
                               _e229595229912_
                               _hd229594229915_
                               _tl229593229917_
                               ___splice234839234840_
                               _target229688229714_
                               _tl229690229716_)
                              (let ()
                                (declare (not safe))
                                (_g229586229701_)))))
                      (let () (declare (not safe)) (_g229586229701_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl229623229997_))
                                                      (if (let ((__tmp236837
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp236837 'bind-method!))
                  (let ((_L229868_ _hd229630230011_)
                        (_L229869_ _hd229621229987_)
                        (_L229870_ _hd229612229963_)
                        (_L229871_ _hd229603229939_))
                    (___kont234835234836_
                     _L229868_
                     _L229869_
                     _L229870_
                     _L229871_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl229593229917_))
                      (let ((___splice234839234840_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl229593229917_ '0))))
                        (let ((_tl229690229716_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice234839234840_ '1)))
                              (_target229688229714_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice234839234840_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl229690229716_))
                              (___match235088235089_
                               _e229595229912_
                               _hd229594229915_
                               _tl229593229917_
                               ___splice234839234840_
                               _target229688229714_
                               _tl229690229716_)
                              (let ()
                                (declare (not safe))
                                (_g229586229701_)))))
                      (let () (declare (not safe)) (_g229586229701_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl229593229917_))
                  (let ((___splice234839234840_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl229593229917_ '0))))
                    (let ((_tl229690229716_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice234839234840_ '1)))
                          (_target229688229714_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice234839234840_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl229690229716_))
                          (___match235088235089_
                           _e229595229912_
                           _hd229594229915_
                           _tl229593229917_
                           ___splice234839234840_
                           _target229688229714_
                           _tl229690229716_)
                          (let () (declare (not safe)) (_g229586229701_)))))
                  (let () (declare (not safe)) (_g229586229701_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl229593229917_))
                                                  (let ((___splice234839234840_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl229593229917_
                                                            '0))))
                                                    (let ((_tl229690229716_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice234839234840_
                                                              '1)))
                                                          (_target229688229714_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice234839234840_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl229690229716_))
                                                          (___match235088235089_
                                                           _e229595229912_
                                                           _hd229594229915_
                                                           _tl229593229917_
                                                           ___splice234839234840_
                                                           _target229688229714_
                                                           _tl229690229716_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g229586229701_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g229586229701_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl229593229917_))
                                          (let ((___splice234839234840_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl229593229917_
                                                    '0))))
                                            (let ((_tl229690229716_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice234839234840_
                                                      '1)))
                                                  (_target229688229714_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice234839234840_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl229690229716_))
                                                  (___match235088235089_
                                                   _e229595229912_
                                                   _hd229594229915_
                                                   _tl229593229917_
                                                   ___splice234839234840_
                                                   _target229688229714_
                                                   _tl229690229716_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g229586229701_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g229586229701_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl229593229917_))
                                      (let ((___splice234839234840_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl229593229917_
                                                '0))))
                                        (let ((_tl229690229716_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice234839234840_
                                                  '1)))
                                              (_target229688229714_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice234839234840_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229690229716_))
                                              (___match235088235089_
                                               _e229595229912_
                                               _hd229594229915_
                                               _tl229593229917_
                                               ___splice234839234840_
                                               _target229688229714_
                                               _tl229690229716_)
                                              (let ()
                                                (declare (not safe))
                                                (_g229586229701_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229586229701_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl229593229917_))
                                  (let ((___splice234839234840_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl229593229917_
                                            '0))))
                                    (let ((_tl229690229716_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice234839234840_
                                              '1)))
                                          (_target229688229714_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice234839234840_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl229690229716_))
                                          (___match235088235089_
                                           _e229595229912_
                                           _hd229594229915_
                                           _tl229593229917_
                                           ___splice234839234840_
                                           _target229688229714_
                                           _tl229690229716_)
                                          (let ()
                                            (declare (not safe))
                                            (_g229586229701_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g229586229701_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl229593229917_))
                          (let ((___splice234839234840_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl229593229917_
                                    '0))))
                            (let ((_tl229690229716_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice234839234840_ '1)))
                                  (_target229688229714_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice234839234840_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl229690229716_))
                                  (___match235088235089_
                                   _e229595229912_
                                   _hd229594229915_
                                   _tl229593229917_
                                   ___splice234839234840_
                                   _target229688229714_
                                   _tl229690229716_)
                                  (let ()
                                    (declare (not safe))
                                    (_g229586229701_)))))
                          (let () (declare (not safe)) (_g229586229701_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl229593229917_))
                  (let ((___splice234839234840_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl229593229917_ '0))))
                    (let ((_tl229690229716_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice234839234840_ '1)))
                          (_target229688229714_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice234839234840_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl229690229716_))
                          (___match235088235089_
                           _e229595229912_
                           _hd229594229915_
                           _tl229593229917_
                           ___splice234839234840_
                           _target229688229714_
                           _tl229690229716_)
                          (let () (declare (not safe)) (_g229586229701_)))))
                  (let () (declare (not safe)) (_g229586229701_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl229593229917_))
                                                      (let ((___splice234839234840_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl229593229917_ '0))))
                (let ((_tl229690229716_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice234839234840_ '1)))
                      (_target229688229714_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice234839234840_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl229690229716_))
                      (___match235088235089_
                       _e229595229912_
                       _hd229594229915_
                       _tl229593229917_
                       ___splice234839234840_
                       _target229688229714_
                       _tl229690229716_)
                      (let () (declare (not safe)) (_g229586229701_)))))
              (let () (declare (not safe)) (_g229586229701_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl229593229917_))
                                              (let ((___splice234839234840_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl229593229917_
                                                        '0))))
                                                (let ((_tl229690229716_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice234839234840_
                                                          '1)))
                                                      (_target229688229714_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice234839234840_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl229690229716_))
                                                      (___match235088235089_
                                                       _e229595229912_
                                                       _hd229594229915_
                                                       _tl229593229917_
                                                       ___splice234839234840_
                                                       _target229688229714_
                                                       _tl229690229716_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g229586229701_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g229586229701_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl229593229917_))
                                          (let ((___splice234839234840_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl229593229917_
                                                    '0))))
                                            (let ((_tl229690229716_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice234839234840_
                                                      '1)))
                                                  (_target229688229714_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice234839234840_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl229690229716_))
                                                  (___match235088235089_
                                                   _e229595229912_
                                                   _hd229594229915_
                                                   _tl229593229917_
                                                   ___splice234839234840_
                                                   _target229688229714_
                                                   _tl229690229716_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g229586229701_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g229586229701_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl229593229917_))
                                      (let ((___splice234839234840_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl229593229917_
                                                '0))))
                                        (let ((_tl229690229716_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice234839234840_
                                                  '1)))
                                              (_target229688229714_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice234839234840_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229690229716_))
                                              (___match235088235089_
                                               _e229595229912_
                                               _hd229594229915_
                                               _tl229593229917_
                                               ___splice234839234840_
                                               _target229688229714_
                                               _tl229690229716_)
                                              (let ()
                                                (declare (not safe))
                                                (_g229586229701_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229586229701_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl229593229917_))
                              (let ((___splice234839234840_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl229593229917_
                                        '0))))
                                (let ((_tl229690229716_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice234839234840_
                                          '1)))
                                      (_target229688229714_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice234839234840_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl229690229716_))
                                      (___match235088235089_
                                       _e229595229912_
                                       _hd229594229915_
                                       _tl229593229917_
                                       ___splice234839234840_
                                       _target229688229714_
                                       _tl229690229716_)
                                      (let ()
                                        (declare (not safe))
                                        (_g229586229701_)))))
                              (let ()
                                (declare (not safe))
                                (_g229586229701_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl229593229917_))
                      (let ((___splice234839234840_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl229593229917_ '0))))
                        (let ((_tl229690229716_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice234839234840_ '1)))
                              (_target229688229714_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice234839234840_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl229690229716_))
                              (___match235088235089_
                               _e229595229912_
                               _hd229594229915_
                               _tl229593229917_
                               ___splice234839234840_
                               _target229688229714_
                               _tl229690229716_)
                              (let ()
                                (declare (not safe))
                                (_g229586229701_)))))
                      (let () (declare (not safe)) (_g229586229701_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl229593229917_))
                  (let ((___splice234839234840_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl229593229917_ '0))))
                    (let ((_tl229690229716_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice234839234840_ '1)))
                          (_target229688229714_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice234839234840_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl229690229716_))
                          (___match235088235089_
                           _e229595229912_
                           _hd229594229915_
                           _tl229593229917_
                           ___splice234839234840_
                           _target229688229714_
                           _tl229690229716_)
                          (let () (declare (not safe)) (_g229586229701_)))))
                  (let () (declare (not safe)) (_g229586229701_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl229593229917_))
                                                  (let ((___splice234839234840_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl229593229917_
                                                            '0))))
                                                    (let ((_tl229690229716_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice234839234840_
                                                              '1)))
                                                          (_target229688229714_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice234839234840_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl229690229716_))
                                                          (___match235088235089_
                                                           _e229595229912_
                                                           _hd229594229915_
                                                           _tl229593229917_
                                                           ___splice234839234840_
                                                           _target229688229714_
                                                           _tl229690229716_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g229586229701_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g229586229701_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl229593229917_))
                                              (let ((___splice234839234840_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl229593229917_
                                                        '0))))
                                                (let ((_tl229690229716_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice234839234840_
                                                          '1)))
                                                      (_target229688229714_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice234839234840_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl229690229716_))
                                                      (___match235088235089_
                                                       _e229595229912_
                                                       _hd229594229915_
                                                       _tl229593229917_
                                                       ___splice234839234840_
                                                       _target229688229714_
                                                       _tl229690229716_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g229586229701_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g229586229701_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl229593229917_))
                                          (let ((___splice234839234840_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl229593229917_
                                                    '0))))
                                            (let ((_tl229690229716_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice234839234840_
                                                      '1)))
                                                  (_target229688229714_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice234839234840_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl229690229716_))
                                                  (___match235088235089_
                                                   _e229595229912_
                                                   _hd229594229915_
                                                   _tl229593229917_
                                                   ___splice234839234840_
                                                   _target229688229714_
                                                   _tl229690229716_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g229586229701_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g229586229701_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl229593229917_))
                                  (let ((___splice234839234840_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl229593229917_
                                            '0))))
                                    (let ((_tl229690229716_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice234839234840_
                                              '1)))
                                          (_target229688229714_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice234839234840_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl229690229716_))
                                          (___match235088235089_
                                           _e229595229912_
                                           _hd229594229915_
                                           _tl229593229917_
                                           ___splice234839234840_
                                           _target229688229714_
                                           _tl229690229716_)
                                          (let ()
                                            (declare (not safe))
                                            (_g229586229701_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g229586229701_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl229593229917_))
                          (let ((___splice234839234840_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl229593229917_
                                    '0))))
                            (let ((_tl229690229716_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice234839234840_ '1)))
                                  (_target229688229714_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice234839234840_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl229690229716_))
                                  (___match235088235089_
                                   _e229595229912_
                                   _hd229594229915_
                                   _tl229593229917_
                                   ___splice234839234840_
                                   _target229688229714_
                                   _tl229690229716_)
                                  (let ()
                                    (declare (not safe))
                                    (_g229586229701_)))))
                          (let () (declare (not safe)) (_g229586229701_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl229593229917_))
                      (let ((___splice234839234840_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl229593229917_ '0))))
                        (let ((_tl229690229716_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice234839234840_ '1)))
                              (_target229688229714_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice234839234840_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl229690229716_))
                              (___match235088235089_
                               _e229595229912_
                               _hd229594229915_
                               _tl229593229917_
                               ___splice234839234840_
                               _target229688229714_
                               _tl229690229716_)
                              (let ()
                                (declare (not safe))
                                (_g229586229701_)))))
                      (let () (declare (not safe)) (_g229586229701_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl229593229917_))
                                                      (let ((___splice234839234840_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl229593229917_ '0))))
                (let ((_tl229690229716_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice234839234840_ '1)))
                      (_target229688229714_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice234839234840_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl229690229716_))
                      (___match235088235089_
                       _e229595229912_
                       _hd229594229915_
                       _tl229593229917_
                       ___splice234839234840_
                       _target229688229714_
                       _tl229690229716_)
                      (let () (declare (not safe)) (_g229586229701_)))))
              (let () (declare (not safe)) (_g229586229701_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl229593229917_))
                                                  (let ((___splice234839234840_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl229593229917_
                                                            '0))))
                                                    (let ((_tl229690229716_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice234839234840_
                                                              '1)))
                                                          (_target229688229714_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice234839234840_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl229690229716_))
                                                          (___match235088235089_
                                                           _e229595229912_
                                                           _hd229594229915_
                                                           _tl229593229917_
                                                           ___splice234839234840_
                                                           _target229688229714_
                                                           _tl229690229716_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g229586229701_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g229586229701_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl229593229917_))
                                              (let ((___splice234839234840_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl229593229917_
                                                        '0))))
                                                (let ((_tl229690229716_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice234839234840_
                                                          '1)))
                                                      (_target229688229714_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice234839234840_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl229690229716_))
                                                      (___match235088235089_
                                                       _e229595229912_
                                                       _hd229594229915_
                                                       _tl229593229917_
                                                       ___splice234839234840_
                                                       _target229688229714_
                                                       _tl229690229716_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g229586229701_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g229586229701_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl229593229917_))
                                      (let ((___splice234839234840_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl229593229917_
                                                '0))))
                                        (let ((_tl229690229716_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice234839234840_
                                                  '1)))
                                              (_target229688229714_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice234839234840_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229690229716_))
                                              (___match235088235089_
                                               _e229595229912_
                                               _hd229594229915_
                                               _tl229593229917_
                                               ___splice234839234840_
                                               _target229688229714_
                                               _tl229690229716_)
                                              (let ()
                                                (declare (not safe))
                                                (_g229586229701_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229586229701_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl229593229917_))
                              (let ((___splice234839234840_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl229593229917_
                                        '0))))
                                (let ((_tl229690229716_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice234839234840_
                                          '1)))
                                      (_target229688229714_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice234839234840_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl229690229716_))
                                      (___match235088235089_
                                       _e229595229912_
                                       _hd229594229915_
                                       _tl229593229917_
                                       ___splice234839234840_
                                       _target229688229714_
                                       _tl229690229716_)
                                      (let ()
                                        (declare (not safe))
                                        (_g229586229701_)))))
                              (let ()
                                (declare (not safe))
                                (_g229586229701_))))))
                  (let () (declare (not safe)) (_g229586229701_))))))))
    (define gxc#current-compile-type-closure (make-parameter '#f))
    (define gxc#basic-expression-type-begin%
      (lambda (_stx229522_)
        (let* ((___stx235091235092_ _stx229522_)
               (_g229525229538_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx235091235092_)))))
          (let ((___kont235093235094_
                 (lambda (_L229566_)
                   (let () (declare (not safe)) (gxc#compile-e__0 _L229566_))))
                (___kont235095235096_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx235091235092_))
                (let ((_e229530229550_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx235091235092_))))
                  (let ((_tl229528229555_
                         (let () (declare (not safe)) (##cdr _e229530229550_)))
                        (_hd229529229553_
                         (let ()
                           (declare (not safe))
                           (##car _e229530229550_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl229528229555_))
                        (let ((_e229533229558_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl229528229555_))))
                          (let ((_tl229531229563_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e229533229558_)))
                                (_hd229532229561_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e229533229558_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl229531229563_))
                                (___kont235093235094_ _hd229532229561_)
                                (___kont235095235096_))))
                        (___kont235095235096_))))
                (___kont235095235096_))))))
    (define gxc#basic-expression-type-annotations
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_stx229402_)
        (let* ((_g229404229421_
                (lambda (_g229405229418_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229405229418_))))
               (_g229403229519_
                (lambda (_g229405229424_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229405229424_))
                      (let ((_e229410229426_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229405229424_))))
                        (let ((_hd229409229429_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229410229426_)))
                              (_tl229408229431_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229410229426_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229408229431_))
                              (let ((_e229413229434_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229408229431_))))
                                (let ((_hd229412229437_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229413229434_)))
                                      (_tl229411229439_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229413229434_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl229411229439_))
                                      (let ((_e229416229442_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl229411229439_))))
                                        (let ((_hd229415229445_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229416229442_)))
                                              (_tl229414229447_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229416229442_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229414229447_))
                                              ((lambda (_L229450_ _L229451_)
                                                 (let* ((___stx235113235114_
                                                         _L229451_)
                                                        (_g229467229478_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx235113235114_)))))
                                                   (let ((___kont235115235116_
                                                          (lambda (_L229498_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L229499_)
                    (let ((_$e229511_
                           (let ((__tmp236838
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _L229499_))))
                             (declare (not safe))
                             (hash-get
                              gxc#basic-expression-type-annotations
                              __tmp236838))))
                      (if _$e229511_
                          ((lambda (_type-e229514_)
                             (_type-e229514_ _stx229402_ _L229451_))
                           _$e229511_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _L229450_))))))
                 (___kont235117235118_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__0 _L229450_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((___match235124235125_
                                                            (lambda (_e229473229490_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd229472229493_
                             _tl229471229495_)
                      (let ((_L229498_ _tl229471229495_)
                            (_L229499_ _hd229472229493_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L229499_))
                            (___kont235115235116_ _L229498_ _L229499_)
                            (___kont235117235118_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? ___stx235113235114_))
                   (let ((_e229473229490_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e ___stx235113235114_))))
                     (let ((_tl229471229495_
                            (let ()
                              (declare (not safe))
                              (##cdr _e229473229490_)))
                           (_hd229472229493_
                            (let ()
                              (declare (not safe))
                              (##car _e229473229490_))))
                       (___match235124235125_
                        _e229473229490_
                        _hd229472229493_
                        _tl229471229495_)))
                   (___kont235117235118_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd229415229445_
                                               _hd229412229437_)
                                              (let ()
                                                (declare (not safe))
                                                (_g229404229421_
                                                 _g229405229424_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229404229421_ _g229405229424_)))))
                              (let ()
                                (declare (not safe))
                                (_g229404229421_ _g229405229424_)))))
                      (let ()
                        (declare (not safe))
                        (_g229404229421_ _g229405229424_))))))
          (declare (not safe))
          (_g229403229519_ _stx229402_))))
    (define gxc#basic-expression-type-annotation-mop.class
      (lambda (_stx229246_ _ann229247_)
        (let* ((_g229249229286_
                (lambda (_g229250229283_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229250229283_))))
               (_g229248229399_
                (lambda (_g229250229289_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229250229289_))
                      (let ((_e229260229291_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229250229289_))))
                        (let ((_hd229259229294_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229260229291_)))
                              (_tl229258229296_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229260229291_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229258229296_))
                              (let ((_e229263229299_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229258229296_))))
                                (let ((_hd229262229302_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229263229299_)))
                                      (_tl229261229304_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229263229299_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl229261229304_))
                                      (let ((_e229266229307_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl229261229304_))))
                                        (let ((_hd229265229310_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229266229307_)))
                                              (_tl229264229312_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229266229307_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl229264229312_))
                                              (let ((_e229269229315_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl229264229312_))))
                                                (let ((_hd229268229318_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e229269229315_)))
                                                      (_tl229267229320_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e229269229315_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl229267229320_))
                                                      (let ((_e229272229323_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl229267229320_))))
                (let ((_hd229271229326_
                       (let () (declare (not safe)) (##car _e229272229323_)))
                      (_tl229270229328_
                       (let () (declare (not safe)) (##cdr _e229272229323_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl229270229328_))
                      (let ((_e229275229331_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl229270229328_))))
                        (let ((_hd229274229334_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229275229331_)))
                              (_tl229273229336_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229275229331_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229273229336_))
                              (let ((_e229278229339_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229273229336_))))
                                (let ((_hd229277229342_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229278229339_)))
                                      (_tl229276229344_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229278229339_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl229276229344_))
                                      (let ((_e229281229347_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl229276229344_))))
                                        (let ((_hd229280229350_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229281229347_)))
                                              (_tl229279229352_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229281229347_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229279229352_))
                                              ((lambda (_L229355_
                                                        _L229356_
                                                        _L229357_
                                                        _L229358_
                                                        _L229359_
                                                        _L229360_
                                                        _L229361_)
                                                 (let ((_type-id229391_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L229361_)))
                                                       (_super229392_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gxc#identifier-symbol
                                                           _L229360_)))
                                                       (_slots229393_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gx#stx-e
                                                           _L229359_)))
                                                       (_ctor-method229394_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L229358_)))
                                                       (_struct?229395_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L229357_)))
                                                       (_final?229396_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L229356_)))
                                                       (_metaclass229397_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _L229355_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#identifier-symbol
                                                               _L229355_))
                                                            '#f)))
                                                   (let ((__obj236796
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
                                                      __obj236796
                                                      _type-id229391_
                                                      _super229392_
                                                      _slots229393_
                                                      _ctor-method229394_
                                                      _struct?229395_
                                                      _final?229396_
                                                      _metaclass229397_)
                                                     __obj236796)))
                                               _hd229280229350_
                                               _hd229277229342_
                                               _hd229274229334_
                                               _hd229271229326_
                                               _hd229268229318_
                                               _hd229265229310_
                                               _hd229262229302_)
                                              (let ()
                                                (declare (not safe))
                                                (_g229249229286_
                                                 _g229250229289_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229249229286_ _g229250229289_)))))
                              (let ()
                                (declare (not safe))
                                (_g229249229286_ _g229250229289_)))))
                      (let ()
                        (declare (not safe))
                        (_g229249229286_ _g229250229289_)))))
              (let ()
                (declare (not safe))
                (_g229249229286_ _g229250229289_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g229249229286_
                                                 _g229250229289_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229249229286_ _g229250229289_)))))
                              (let ()
                                (declare (not safe))
                                (_g229249229286_ _g229250229289_)))))
                      (let ()
                        (declare (not safe))
                        (_g229249229286_ _g229250229289_))))))
          (declare (not safe))
          (_g229248229399_ _ann229247_))))
    (define gxc#basic-expression-type-annotation-mop.constructor
      (lambda (_stx229194_ _ann229195_)
        (let* ((_g229197229210_
                (lambda (_g229198229207_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229198229207_))))
               (_g229196229243_
                (lambda (_g229198229213_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229198229213_))
                      (let ((_e229202229215_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229198229213_))))
                        (let ((_hd229201229218_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229202229215_)))
                              (_tl229200229220_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229202229215_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229200229220_))
                              (let ((_e229205229223_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229200229220_))))
                                (let ((_hd229204229226_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229205229223_)))
                                      (_tl229203229228_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229205229223_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl229203229228_))
                                      ((lambda (_L229231_)
                                         (let ((__tmp236839
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L229231_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!constructor::t
                                            __tmp236839)))
                                       _hd229204229226_)
                                      (let ()
                                        (declare (not safe))
                                        (_g229197229210_ _g229198229213_)))))
                              (let ()
                                (declare (not safe))
                                (_g229197229210_ _g229198229213_)))))
                      (let ()
                        (declare (not safe))
                        (_g229197229210_ _g229198229213_))))))
          (declare (not safe))
          (_g229196229243_ _ann229195_))))
    (define gxc#basic-expression-type-annotation-mop.predicate
      (lambda (_stx229142_ _ann229143_)
        (let* ((_g229145229158_
                (lambda (_g229146229155_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229146229155_))))
               (_g229144229191_
                (lambda (_g229146229161_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229146229161_))
                      (let ((_e229150229163_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229146229161_))))
                        (let ((_hd229149229166_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229150229163_)))
                              (_tl229148229168_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229150229163_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229148229168_))
                              (let ((_e229153229171_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229148229168_))))
                                (let ((_hd229152229174_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229153229171_)))
                                      (_tl229151229176_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229153229171_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl229151229176_))
                                      ((lambda (_L229179_)
                                         (let ((__tmp236840
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L229179_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!predicate::t
                                            __tmp236840)))
                                       _hd229152229174_)
                                      (let ()
                                        (declare (not safe))
                                        (_g229145229158_ _g229146229161_)))))
                              (let ()
                                (declare (not safe))
                                (_g229145229158_ _g229146229161_)))))
                      (let ()
                        (declare (not safe))
                        (_g229145229158_ _g229146229161_))))))
          (declare (not safe))
          (_g229144229191_ _ann229143_))))
    (define gxc#basic-expression-type-annotation-mop.accessor
      (lambda (_stx229058_ _ann229059_)
        (let* ((_g229061229082_
                (lambda (_g229062229079_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229062229079_))))
               (_g229060229139_
                (lambda (_g229062229085_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229062229085_))
                      (let ((_e229068229087_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229062229085_))))
                        (let ((_hd229067229090_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229068229087_)))
                              (_tl229066229092_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229068229087_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229066229092_))
                              (let ((_e229071229095_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229066229092_))))
                                (let ((_hd229070229098_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229071229095_)))
                                      (_tl229069229100_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229071229095_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl229069229100_))
                                      (let ((_e229074229103_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl229069229100_))))
                                        (let ((_hd229073229106_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229074229103_)))
                                              (_tl229072229108_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229074229103_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl229072229108_))
                                              (let ((_e229077229111_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl229072229108_))))
                                                (let ((_hd229076229114_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e229077229111_)))
                                                      (_tl229075229116_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e229077229111_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl229075229116_))
                                                      ((lambda (_L229119_
                                                                _L229120_
                                                                _L229121_)
                                                         (let ((__tmp236843
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L229121_)))
                       (__tmp236842
                        (let () (declare (not safe)) (gx#stx-e _L229120_)))
                       (__tmp236841
                        (let () (declare (not safe)) (gx#stx-e _L229119_))))
                   (declare (not safe))
                   (##structure
                    gxc#!accessor::t
                    __tmp236843
                    __tmp236842
                    __tmp236841)))
               _hd229076229114_
               _hd229073229106_
               _hd229070229098_)
              (let ()
                (declare (not safe))
                (_g229061229082_ _g229062229085_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g229061229082_
                                                 _g229062229085_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229061229082_ _g229062229085_)))))
                              (let ()
                                (declare (not safe))
                                (_g229061229082_ _g229062229085_)))))
                      (let ()
                        (declare (not safe))
                        (_g229061229082_ _g229062229085_))))))
          (declare (not safe))
          (_g229060229139_ _ann229059_))))
    (define gxc#basic-expression-type-annotation-mop.mutator
      (lambda (_stx228974_ _ann228975_)
        (let* ((_g228977228998_
                (lambda (_g228978228995_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g228978228995_))))
               (_g228976229055_
                (lambda (_g228978229001_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g228978229001_))
                      (let ((_e228984229003_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g228978229001_))))
                        (let ((_hd228983229006_
                               (let ()
                                 (declare (not safe))
                                 (##car _e228984229003_)))
                              (_tl228982229008_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e228984229003_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl228982229008_))
                              (let ((_e228987229011_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl228982229008_))))
                                (let ((_hd228986229014_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e228987229011_)))
                                      (_tl228985229016_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e228987229011_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl228985229016_))
                                      (let ((_e228990229019_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl228985229016_))))
                                        (let ((_hd228989229022_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e228990229019_)))
                                              (_tl228988229024_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e228990229019_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl228988229024_))
                                              (let ((_e228993229027_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl228988229024_))))
                                                (let ((_hd228992229030_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e228993229027_)))
                                                      (_tl228991229032_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e228993229027_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl228991229032_))
                                                      ((lambda (_L229035_
                                                                _L229036_
                                                                _L229037_)
                                                         (let ((__tmp236846
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L229037_)))
                       (__tmp236845
                        (let () (declare (not safe)) (gx#stx-e _L229036_)))
                       (__tmp236844
                        (let () (declare (not safe)) (gx#stx-e _L229035_))))
                   (declare (not safe))
                   (##structure
                    gxc#!mutator::t
                    __tmp236846
                    __tmp236845
                    __tmp236844)))
               _hd228992229030_
               _hd228989229022_
               _hd228986229014_)
              (let ()
                (declare (not safe))
                (_g228977228998_ _g228978229001_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g228977228998_
                                                 _g228978229001_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g228977228998_ _g228978229001_)))))
                              (let ()
                                (declare (not safe))
                                (_g228977228998_ _g228978229001_)))))
                      (let ()
                        (declare (not safe))
                        (_g228977228998_ _g228978229001_))))))
          (declare (not safe))
          (_g228976229055_ _ann228975_))))
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
      (lambda (_stx228094_)
        (let* ((___stx235127235128_ _stx228094_)
               (_g228100228296_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx235127235128_)))))
          (let ((___kont235129235130_
                 (lambda (_L228962_)
                   (let ((__obj236797
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj236797
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L228962_))
                      '#f)
                     __obj236797)))
                (___kont235131235132_
                 (lambda (_L228889_
                          _L228890_
                          _L228891_
                          _L228892_
                          _L228893_
                          _L228894_)
                   (let* ((_tab228944_
                           (let () (declare (not safe)) (gx#stx-e _L228891_)))
                          (_keys228946_
                           (if _tab228944_
                               (let ((__tmp236847 (vector->list _tab228944_)))
                                 (declare (not safe))
                                 (filter values __tmp236847))
                               '#f)))
                     (let ((__tmp236848
                            (let ()
                              (declare (not safe))
                              (gxc#identifier-symbol _L228890_))))
                       (declare (not safe))
                       (##structure
                        gxc#!kw-lambda::t
                        'kw-lambda
                        _keys228946_
                        __tmp236848)))))
                (___kont235133235134_
                 (lambda (_L228622_
                          _L228623_
                          _L228624_
                          _L228625_
                          _L228626_
                          _L228627_
                          _L228628_
                          _L228629_
                          _L228630_
                          _L228631_)
                   (let ((__tmp236850
                          (map gx#stx-e
                               (let ((__tmp236851
                                      (lambda (_g228724228727_ _g228725228729_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g228724228727_
                                                _g228725228729_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp236851 '() _L228624_))))
                         (__tmp236849
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L228628_))))
                     (declare (not safe))
                     (##structure
                      gxc#!kw-lambda-primary::t
                      'kw-lambda-dispatch
                      __tmp236850
                      __tmp236849))))
                (___kont235137235138_
                 (lambda (_L228332_)
                   (let ((__obj236798
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj236798
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L228332_))
                      (let ()
                        (declare (not safe))
                        (gxc#dispatch-lambda-form-delegate _L228332_)))
                     __obj236798)))
                (___kont235139235140_
                 (lambda (_L228309_)
                   (let ((__obj236799
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj236799
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L228309_))
                      '#f)
                     __obj236799))))
            (let* ((___match235446235447_
                    (lambda (_e228287228324_ _hd228286228327_ _tl228285228329_)
                      (let ((_L228332_ _tl228285228329_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#dispatch-lambda-form? _L228332_))
                            (___kont235137235138_ _L228332_)
                            (___kont235139235140_ _tl228285228329_)))))
                   (___match235440235441_
                    (lambda (_e228181228346_
                             _hd228180228349_
                             _tl228179228351_
                             _e228184228354_
                             _hd228183228357_
                             _tl228182228359_
                             _e228187228362_
                             _hd228186228365_
                             _tl228185228367_
                             _e228190228370_
                             _hd228189228373_
                             _tl228188228375_
                             _e228193228378_
                             _hd228192228381_
                             _tl228191228383_
                             _e228196228386_
                             _hd228195228389_
                             _tl228194228391_
                             _e228199228394_
                             _hd228198228397_
                             _tl228197228399_
                             _e228202228402_
                             _hd228201228405_
                             _tl228200228407_
                             _e228205228410_
                             _hd228204228413_
                             _tl228203228415_
                             _e228208228418_
                             _hd228207228421_
                             _tl228206228423_
                             _e228211228426_
                             _hd228210228429_
                             _tl228209228431_
                             _e228214228434_
                             _hd228213228437_
                             _tl228212228439_
                             _e228217228442_
                             _hd228216228445_
                             _tl228215228447_
                             _e228220228450_
                             _hd228219228453_
                             _tl228218228455_
                             ___splice235135235136_
                             _target228221228458_
                             _tl228223228460_
                             _e228238228463_
                             _hd228237228466_
                             _tl228236228468_
                             _e228241228471_
                             _hd228240228474_
                             _tl228239228476_
                             _e228244228479_
                             _hd228243228482_
                             _tl228242228484_)
                      (letrec ((_loop228224228487_
                                (lambda (_hd228222228490_
                                         _-absent-value228228228492_
                                         _key228229228494_
                                         _-xkwvar228230228496_
                                         _-hash-ref228231228498_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd228222228490_))
                                      (let ((_e228225228501_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd228222228490_))))
                                        (let ((_lp-tl228227228506_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e228225228501_)))
                                              (_lp-hd228226228504_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e228225228501_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _lp-hd228226228504_))
                                              (let ((_e228247228509_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _lp-hd228226228504_))))
                                                (let ((_tl228245228514_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e228247228509_)))
                                                      (_hd228246228512_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e228247228509_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd228246228512_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#call
                                                             _hd228246228512_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl228245228514_))
                      (let ((_e228250228517_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl228245228514_))))
                        (let ((_tl228248228522_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e228250228517_)))
                              (_hd228249228520_
                               (let ()
                                 (declare (not safe))
                                 (##car _e228250228517_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd228249228520_))
                              (let ((_e228253228525_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd228249228520_))))
                                (let ((_tl228251228530_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e228253228525_)))
                                      (_hd228252228528_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e228253228525_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd228252228528_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd228252228528_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl228251228530_))
                                              (let ((_e228256228533_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl228251228530_))))
                                                (let ((_tl228254228538_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e228256228533_)))
                                                      (_hd228255228536_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e228256228533_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl228254228538_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl228248228522_))
                                                          (let ((_e228259228541_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl228248228522_))))
                    (let ((_tl228257228546_
                           (let ()
                             (declare (not safe))
                             (##cdr _e228259228541_)))
                          (_hd228258228544_
                           (let ()
                             (declare (not safe))
                             (##car _e228259228541_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd228258228544_))
                          (let ((_e228262228549_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd228258228544_))))
                            (let ((_tl228260228554_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e228262228549_)))
                                  (_hd228261228552_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e228262228549_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd228261228552_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd228261228552_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl228260228554_))
                                          (let ((_e228265228557_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl228260228554_))))
                                            (let ((_tl228263228562_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e228265228557_)))
                                                  (_hd228264228560_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e228265228557_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl228263228562_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl228257228546_))
                                                      (let ((_e228268228565_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl228257228546_))))
                (let ((_tl228266228570_
                       (let () (declare (not safe)) (##cdr _e228268228565_)))
                      (_hd228267228568_
                       (let () (declare (not safe)) (##car _e228268228565_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd228267228568_))
                      (let ((_e228271228573_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd228267228568_))))
                        (let ((_tl228269228578_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e228271228573_)))
                              (_hd228270228576_
                               (let ()
                                 (declare (not safe))
                                 (##car _e228271228573_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd228270228576_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#quote _hd228270228576_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl228269228578_))
                                      (let ((_e228274228581_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl228269228578_))))
                                        (let ((_tl228272228586_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e228274228581_)))
                                              (_hd228273228584_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e228274228581_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl228272228586_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl228266228570_))
                                                  (let ((_e228277228589_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl228266228570_))))
                                                    (let ((_tl228275228594_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e228277228589_)))
                                                          (_hd228276228592_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e228277228589_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd228276228592_))
                                                          (let ((_e228280228597_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd228276228592_))))
                    (let ((_tl228278228602_
                           (let ()
                             (declare (not safe))
                             (##cdr _e228280228597_)))
                          (_hd228279228600_
                           (let ()
                             (declare (not safe))
                             (##car _e228280228597_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd228279228600_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd228279228600_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl228278228602_))
                                  (let ((_e228283228605_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl228278228602_))))
                                    (let ((_tl228281228610_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e228283228605_)))
                                          (_hd228282228608_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e228283228605_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl228281228610_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl228275228594_))
                                              (let ((__tmp236866
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd228282228608_
                                                             _-absent-value228228228492_)))
                                                    (__tmp236865
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd228273228584_
                                                             _key228229228494_)))
                                                    (__tmp236864
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd228264228560_
                                                             _-xkwvar228230228496_)))
                                                    (__tmp236863
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd228255228536_
                                                             _-hash-ref228231228498_))))
                                                (declare (not safe))
                                                (_loop228224228487_
                                                 _lp-tl228227228506_
                                                 __tmp236866
                                                 __tmp236865
                                                 __tmp236864
                                                 __tmp236863))
                                              (___match235446235447_
                                               _e228181228346_
                                               _hd228180228349_
                                               _tl228179228351_))
                                          (___match235446235447_
                                           _e228181228346_
                                           _hd228180228349_
                                           _tl228179228351_))))
                                  (___match235446235447_
                                   _e228181228346_
                                   _hd228180228349_
                                   _tl228179228351_))
                              (___match235446235447_
                               _e228181228346_
                               _hd228180228349_
                               _tl228179228351_))
                          (___match235446235447_
                           _e228181228346_
                           _hd228180228349_
                           _tl228179228351_))))
                  (___match235446235447_
                   _e228181228346_
                   _hd228180228349_
                   _tl228179228351_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match235446235447_
                                                   _e228181228346_
                                                   _hd228180228349_
                                                   _tl228179228351_))
                                              (___match235446235447_
                                               _e228181228346_
                                               _hd228180228349_
                                               _tl228179228351_))))
                                      (___match235446235447_
                                       _e228181228346_
                                       _hd228180228349_
                                       _tl228179228351_))
                                  (___match235446235447_
                                   _e228181228346_
                                   _hd228180228349_
                                   _tl228179228351_))
                              (___match235446235447_
                               _e228181228346_
                               _hd228180228349_
                               _tl228179228351_))))
                      (___match235446235447_
                       _e228181228346_
                       _hd228180228349_
                       _tl228179228351_))))
              (___match235446235447_
               _e228181228346_
               _hd228180228349_
               _tl228179228351_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match235446235447_
                                                   _e228181228346_
                                                   _hd228180228349_
                                                   _tl228179228351_))))
                                          (___match235446235447_
                                           _e228181228346_
                                           _hd228180228349_
                                           _tl228179228351_))
                                      (___match235446235447_
                                       _e228181228346_
                                       _hd228180228349_
                                       _tl228179228351_))
                                  (___match235446235447_
                                   _e228181228346_
                                   _hd228180228349_
                                   _tl228179228351_))))
                          (___match235446235447_
                           _e228181228346_
                           _hd228180228349_
                           _tl228179228351_))))
                  (___match235446235447_
                   _e228181228346_
                   _hd228180228349_
                   _tl228179228351_))
              (___match235446235447_
               _e228181228346_
               _hd228180228349_
               _tl228179228351_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match235446235447_
                                               _e228181228346_
                                               _hd228180228349_
                                               _tl228179228351_))
                                          (___match235446235447_
                                           _e228181228346_
                                           _hd228180228349_
                                           _tl228179228351_))
                                      (___match235446235447_
                                       _e228181228346_
                                       _hd228180228349_
                                       _tl228179228351_))))
                              (___match235446235447_
                               _e228181228346_
                               _hd228180228349_
                               _tl228179228351_))))
                      (___match235446235447_
                       _e228181228346_
                       _hd228180228349_
                       _tl228179228351_))
                  (___match235446235447_
                   _e228181228346_
                   _hd228180228349_
                   _tl228179228351_))
              (___match235446235447_
               _e228181228346_
               _hd228180228349_
               _tl228179228351_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match235446235447_
                                               _e228181228346_
                                               _hd228180228349_
                                               _tl228179228351_))))
                                      (let ((_-hash-ref228235228619_
                                             (reverse _-hash-ref228231228498_))
                                            (_-xkwvar228234228617_
                                             (reverse _-xkwvar228230228496_))
                                            (_key228233228615_
                                             (reverse _key228229228494_))
                                            (_-absent-value228232228613_
                                             (reverse _-absent-value228228228492_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl228188228375_))
                                            (let ((_L228622_ _hd228243228482_)
                                                  (_L228623_
                                                   _-absent-value228232228613_)
                                                  (_L228624_ _key228233228615_)
                                                  (_L228625_
                                                   _-xkwvar228234228617_)
                                                  (_L228626_
                                                   _-hash-ref228235228619_)
                                                  (_L228627_ _hd228219228453_)
                                                  (_L228628_ _hd228210228429_)
                                                  (_L228629_ _hd228201228405_)
                                                  (_L228630_ _tl228185228367_)
                                                  (_L228631_ _hd228186228365_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L228631_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L228630_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#runtime-identifier=?
                                                          _L228629_
                                                          'apply))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#free-identifier=?
                                                          _L228631_
                                                          _L228627_))
                                                       (let ((__tmp236861
                                                              (let ((__tmp236862
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g228684228687_ _g228685228689_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g228684228687_ _g228685228689_)))))
                        (declare (not safe))
                        (foldr1 __tmp236862 '() _L228624_))))
                 (declare (not safe))
                 (andmap1 gx#stx-keyword? __tmp236861))
               (let ((__tmp236860
                      (lambda (_g228691228693_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g228691228693_
                           'hash-ref))))
                     (__tmp236858
                      (let ((__tmp236859
                             (lambda (_g228695228698_ _g228696228700_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g228695228698_ _g228696228700_)))))
                        (declare (not safe))
                        (foldr1 __tmp236859 '() _L228626_))))
                 (declare (not safe))
                 (andmap1 __tmp236860 __tmp236858))
               (let ((__tmp236857
                      (lambda (_g228702228704_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g228702228704_
                           'absent-value))))
                     (__tmp236855
                      (let ((__tmp236856
                             (lambda (_g228706228709_ _g228707228711_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g228706228709_ _g228707228711_)))))
                        (declare (not safe))
                        (foldr1 __tmp236856 '() _L228623_))))
                 (declare (not safe))
                 (andmap1 __tmp236857 __tmp236855))
               (let ((__tmp236854
                      (lambda (_g228713228715_)
                        (let ()
                          (declare (not safe))
                          (gx#free-identifier=? _g228713228715_ _L228631_))))
                     (__tmp236852
                      (let ((__tmp236853
                             (lambda (_g228717228720_ _g228718228722_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g228717228720_ _g228718228722_)))))
                        (declare (not safe))
                        (foldr1 __tmp236853 '() _L228625_))))
                 (declare (not safe))
                 (andmap1 __tmp236854 __tmp236852)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont235133235134_
                                                   _L228622_
                                                   _L228623_
                                                   _L228624_
                                                   _L228625_
                                                   _L228626_
                                                   _L228627_
                                                   _L228628_
                                                   _L228629_
                                                   _L228630_
                                                   _L228631_)
                                                  (___match235446235447_
                                                   _e228181228346_
                                                   _hd228180228349_
                                                   _tl228179228351_)))
                                            (___match235446235447_
                                             _e228181228346_
                                             _hd228180228349_
                                             _tl228179228351_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop228224228487_
                           _target228221228458_
                           '()
                           '()
                           '()
                           '())))))
                   (___match235312235313_
                    (lambda (_e228181228346_
                             _hd228180228349_
                             _tl228179228351_
                             _e228184228354_
                             _hd228183228357_
                             _tl228182228359_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd228183228357_))
                          (let ((_e228187228362_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd228183228357_))))
                            (let ((_tl228185228367_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e228187228362_)))
                                  (_hd228186228365_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e228187228362_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl228182228359_))
                                  (let ((_e228190228370_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl228182228359_))))
                                    (let ((_tl228188228375_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e228190228370_)))
                                          (_hd228189228373_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e228190228370_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd228189228373_))
                                          (let ((_e228193228378_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd228189228373_))))
                                            (let ((_tl228191228383_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e228193228378_)))
                                                  (_hd228192228381_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e228193228378_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd228192228381_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd228192228381_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl228191228383_))
                                                          (let ((_e228196228386_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl228191228383_))))
                    (let ((_tl228194228391_
                           (let ()
                             (declare (not safe))
                             (##cdr _e228196228386_)))
                          (_hd228195228389_
                           (let ()
                             (declare (not safe))
                             (##car _e228196228386_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd228195228389_))
                          (let ((_e228199228394_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd228195228389_))))
                            (let ((_tl228197228399_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e228199228394_)))
                                  (_hd228198228397_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e228199228394_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd228198228397_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd228198228397_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl228197228399_))
                                          (let ((_e228202228402_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl228197228399_))))
                                            (let ((_tl228200228407_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e228202228402_)))
                                                  (_hd228201228405_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e228202228402_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl228200228407_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl228194228391_))
                                                      (let ((_e228205228410_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl228194228391_))))
                (let ((_tl228203228415_
                       (let () (declare (not safe)) (##cdr _e228205228410_)))
                      (_hd228204228413_
                       (let () (declare (not safe)) (##car _e228205228410_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd228204228413_))
                      (let ((_e228208228418_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd228204228413_))))
                        (let ((_tl228206228423_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e228208228418_)))
                              (_hd228207228421_
                               (let ()
                                 (declare (not safe))
                                 (##car _e228208228418_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd228207228421_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd228207228421_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl228206228423_))
                                      (let ((_e228211228426_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl228206228423_))))
                                        (let ((_tl228209228431_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e228211228426_)))
                                              (_hd228210228429_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e228211228426_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl228209228431_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl228203228415_))
                                                  (let ((_e228214228434_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl228203228415_))))
                                                    (let ((_tl228212228439_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e228214228434_)))
                                                          (_hd228213228437_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e228214228434_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd228213228437_))
                                                          (let ((_e228217228442_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd228213228437_))))
                    (let ((_tl228215228447_
                           (let ()
                             (declare (not safe))
                             (##cdr _e228217228442_)))
                          (_hd228216228445_
                           (let ()
                             (declare (not safe))
                             (##car _e228217228442_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd228216228445_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd228216228445_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl228215228447_))
                                  (let ((_e228220228450_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl228215228447_))))
                                    (let ((_tl228218228455_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e228220228450_)))
                                          (_hd228219228453_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e228220228450_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl228218228455_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl228212228439_))
                                              (if (fx>= (let ()
                                                          (declare (not safe))
                                                          (gx#stx-length
                                                           _tl228212228439_))
                                                        '1)
                                                  (let ((___splice235135235136_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl228212228439_
                                                            '1))))
                                                    (let ((_tl228223228460_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice235135235136_
                                                              '1)))
                                                          (_target228221228458_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice235135235136_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl228223228460_))
                                                          (let ((_e228238228463_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl228223228460_))))
                    (let ((_tl228236228468_
                           (let ()
                             (declare (not safe))
                             (##cdr _e228238228463_)))
                          (_hd228237228466_
                           (let ()
                             (declare (not safe))
                             (##car _e228238228463_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd228237228466_))
                          (let ((_e228241228471_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd228237228466_))))
                            (let ((_tl228239228476_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e228241228471_)))
                                  (_hd228240228474_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e228241228471_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd228240228474_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd228240228474_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl228239228476_))
                                          (let ((_e228244228479_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl228239228476_))))
                                            (let ((_tl228242228484_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e228244228479_)))
                                                  (_hd228243228482_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e228244228479_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl228242228484_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl228236228468_))
                                                      (___match235440235441_
                                                       _e228181228346_
                                                       _hd228180228349_
                                                       _tl228179228351_
                                                       _e228184228354_
                                                       _hd228183228357_
                                                       _tl228182228359_
                                                       _e228187228362_
                                                       _hd228186228365_
                                                       _tl228185228367_
                                                       _e228190228370_
                                                       _hd228189228373_
                                                       _tl228188228375_
                                                       _e228193228378_
                                                       _hd228192228381_
                                                       _tl228191228383_
                                                       _e228196228386_
                                                       _hd228195228389_
                                                       _tl228194228391_
                                                       _e228199228394_
                                                       _hd228198228397_
                                                       _tl228197228399_
                                                       _e228202228402_
                                                       _hd228201228405_
                                                       _tl228200228407_
                                                       _e228205228410_
                                                       _hd228204228413_
                                                       _tl228203228415_
                                                       _e228208228418_
                                                       _hd228207228421_
                                                       _tl228206228423_
                                                       _e228211228426_
                                                       _hd228210228429_
                                                       _tl228209228431_
                                                       _e228214228434_
                                                       _hd228213228437_
                                                       _tl228212228439_
                                                       _e228217228442_
                                                       _hd228216228445_
                                                       _tl228215228447_
                                                       _e228220228450_
                                                       _hd228219228453_
                                                       _tl228218228455_
                                                       ___splice235135235136_
                                                       _target228221228458_
                                                       _tl228223228460_
                                                       _e228238228463_
                                                       _hd228237228466_
                                                       _tl228236228468_
                                                       _e228241228471_
                                                       _hd228240228474_
                                                       _tl228239228476_
                                                       _e228244228479_
                                                       _hd228243228482_
                                                       _tl228242228484_)
                                                      (___match235446235447_
                                                       _e228181228346_
                                                       _hd228180228349_
                                                       _tl228179228351_))
                                                  (___match235446235447_
                                                   _e228181228346_
                                                   _hd228180228349_
                                                   _tl228179228351_))))
                                          (___match235446235447_
                                           _e228181228346_
                                           _hd228180228349_
                                           _tl228179228351_))
                                      (___match235446235447_
                                       _e228181228346_
                                       _hd228180228349_
                                       _tl228179228351_))
                                  (___match235446235447_
                                   _e228181228346_
                                   _hd228180228349_
                                   _tl228179228351_))))
                          (___match235446235447_
                           _e228181228346_
                           _hd228180228349_
                           _tl228179228351_))))
                  (___match235446235447_
                   _e228181228346_
                   _hd228180228349_
                   _tl228179228351_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match235446235447_
                                                   _e228181228346_
                                                   _hd228180228349_
                                                   _tl228179228351_))
                                              (___match235446235447_
                                               _e228181228346_
                                               _hd228180228349_
                                               _tl228179228351_))
                                          (___match235446235447_
                                           _e228181228346_
                                           _hd228180228349_
                                           _tl228179228351_))))
                                  (___match235446235447_
                                   _e228181228346_
                                   _hd228180228349_
                                   _tl228179228351_))
                              (___match235446235447_
                               _e228181228346_
                               _hd228180228349_
                               _tl228179228351_))
                          (___match235446235447_
                           _e228181228346_
                           _hd228180228349_
                           _tl228179228351_))))
                  (___match235446235447_
                   _e228181228346_
                   _hd228180228349_
                   _tl228179228351_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match235446235447_
                                                   _e228181228346_
                                                   _hd228180228349_
                                                   _tl228179228351_))
                                              (___match235446235447_
                                               _e228181228346_
                                               _hd228180228349_
                                               _tl228179228351_))))
                                      (___match235446235447_
                                       _e228181228346_
                                       _hd228180228349_
                                       _tl228179228351_))
                                  (___match235446235447_
                                   _e228181228346_
                                   _hd228180228349_
                                   _tl228179228351_))
                              (___match235446235447_
                               _e228181228346_
                               _hd228180228349_
                               _tl228179228351_))))
                      (___match235446235447_
                       _e228181228346_
                       _hd228180228349_
                       _tl228179228351_))))
              (___match235446235447_
               _e228181228346_
               _hd228180228349_
               _tl228179228351_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match235446235447_
                                                   _e228181228346_
                                                   _hd228180228349_
                                                   _tl228179228351_))))
                                          (___match235446235447_
                                           _e228181228346_
                                           _hd228180228349_
                                           _tl228179228351_))
                                      (___match235446235447_
                                       _e228181228346_
                                       _hd228180228349_
                                       _tl228179228351_))
                                  (___match235446235447_
                                   _e228181228346_
                                   _hd228180228349_
                                   _tl228179228351_))))
                          (___match235446235447_
                           _e228181228346_
                           _hd228180228349_
                           _tl228179228351_))))
                  (___match235446235447_
                   _e228181228346_
                   _hd228180228349_
                   _tl228179228351_))
              (___match235446235447_
               _e228181228346_
               _hd228180228349_
               _tl228179228351_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match235446235447_
                                                   _e228181228346_
                                                   _hd228180228349_
                                                   _tl228179228351_))))
                                          (___match235446235447_
                                           _e228181228346_
                                           _hd228180228349_
                                           _tl228179228351_))))
                                  (___match235446235447_
                                   _e228181228346_
                                   _hd228180228349_
                                   _tl228179228351_))))
                          (___match235446235447_
                           _e228181228346_
                           _hd228180228349_
                           _tl228179228351_))))
                   (___match235300235301_
                    (lambda (_e228114228737_
                             _hd228113228740_
                             _tl228112228742_
                             _e228117228745_
                             _hd228116228748_
                             _tl228115228750_
                             _e228120228753_
                             _hd228119228756_
                             _tl228118228758_
                             _e228123228761_
                             _hd228122228764_
                             _tl228121228766_
                             _e228126228769_
                             _hd228125228772_
                             _tl228124228774_
                             _e228129228777_
                             _hd228128228780_
                             _tl228127228782_
                             _e228132228785_
                             _hd228131228788_
                             _tl228130228790_
                             _e228135228793_
                             _hd228134228796_
                             _tl228133228798_
                             _e228138228801_
                             _hd228137228804_
                             _tl228136228806_
                             _e228141228809_
                             _hd228140228812_
                             _tl228139228814_
                             _e228144228817_
                             _hd228143228820_
                             _tl228142228822_
                             _e228147228825_
                             _hd228146228828_
                             _tl228145228830_
                             _e228150228833_
                             _hd228149228836_
                             _tl228148228838_
                             _e228153228841_
                             _hd228152228844_
                             _tl228151228846_
                             _e228156228849_
                             _hd228155228852_
                             _tl228154228854_
                             _e228159228857_
                             _hd228158228860_
                             _tl228157228862_
                             _e228162228865_
                             _hd228161228868_
                             _tl228160228870_
                             _e228165228873_
                             _hd228164228876_
                             _tl228163228878_
                             _e228168228881_
                             _hd228167228884_
                             _tl228166228886_)
                      (let ((_L228889_ _hd228167228884_)
                            (_L228890_ _hd228158228860_)
                            (_L228891_ _hd228149228836_)
                            (_L228892_ _hd228140228812_)
                            (_L228893_ _hd228131228788_)
                            (_L228894_ _hd228116228748_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L228894_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L228893_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _L228892_
                                    'keyword-dispatch))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L228894_ _L228889_)))
                            (___kont235131235132_
                             _L228889_
                             _L228890_
                             _L228891_
                             _L228892_
                             _L228893_
                             _L228894_)
                            (___match235312235313_
                             _e228114228737_
                             _hd228113228740_
                             _tl228112228742_
                             _e228117228745_
                             _hd228116228748_
                             _tl228115228750_)))))
                   (___match235154235155_
                    (lambda (_e228114228737_ _hd228113228740_ _tl228112228742_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl228112228742_))
                          (let ((_e228117228745_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl228112228742_))))
                            (let ((_tl228115228750_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e228117228745_)))
                                  (_hd228116228748_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e228117228745_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl228115228750_))
                                  (let ((_e228120228753_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl228115228750_))))
                                    (let ((_tl228118228758_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e228120228753_)))
                                          (_hd228119228756_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e228120228753_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd228119228756_))
                                          (let ((_e228123228761_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd228119228756_))))
                                            (let ((_tl228121228766_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e228123228761_)))
                                                  (_hd228122228764_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e228123228761_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd228122228764_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd228122228764_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl228121228766_))
                                                          (let ((_e228126228769_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl228121228766_))))
                    (let ((_tl228124228774_
                           (let ()
                             (declare (not safe))
                             (##cdr _e228126228769_)))
                          (_hd228125228772_
                           (let ()
                             (declare (not safe))
                             (##car _e228126228769_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd228125228772_))
                          (let ((_e228129228777_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd228125228772_))))
                            (let ((_tl228127228782_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e228129228777_)))
                                  (_hd228128228780_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e228129228777_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd228128228780_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd228128228780_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl228127228782_))
                                          (let ((_e228132228785_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl228127228782_))))
                                            (let ((_tl228130228790_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e228132228785_)))
                                                  (_hd228131228788_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e228132228785_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl228130228790_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl228124228774_))
                                                      (let ((_e228135228793_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl228124228774_))))
                (let ((_tl228133228798_
                       (let () (declare (not safe)) (##cdr _e228135228793_)))
                      (_hd228134228796_
                       (let () (declare (not safe)) (##car _e228135228793_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd228134228796_))
                      (let ((_e228138228801_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd228134228796_))))
                        (let ((_tl228136228806_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e228138228801_)))
                              (_hd228137228804_
                               (let ()
                                 (declare (not safe))
                                 (##car _e228138228801_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd228137228804_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd228137228804_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl228136228806_))
                                      (let ((_e228141228809_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl228136228806_))))
                                        (let ((_tl228139228814_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e228141228809_)))
                                              (_hd228140228812_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e228141228809_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl228139228814_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl228133228798_))
                                                  (let ((_e228144228817_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl228133228798_))))
                                                    (let ((_tl228142228822_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e228144228817_)))
                                                          (_hd228143228820_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e228144228817_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd228143228820_))
                                                          (let ((_e228147228825_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd228143228820_))))
                    (let ((_tl228145228830_
                           (let ()
                             (declare (not safe))
                             (##cdr _e228147228825_)))
                          (_hd228146228828_
                           (let ()
                             (declare (not safe))
                             (##car _e228147228825_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd228146228828_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd228146228828_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl228145228830_))
                                  (let ((_e228150228833_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl228145228830_))))
                                    (let ((_tl228148228838_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e228150228833_)))
                                          (_hd228149228836_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e228150228833_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl228148228838_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl228142228822_))
                                              (let ((_e228153228841_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl228142228822_))))
                                                (let ((_tl228151228846_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e228153228841_)))
                                                      (_hd228152228844_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e228153228841_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd228152228844_))
                                                      (let ((_e228156228849_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd228152228844_))))
                (let ((_tl228154228854_
                       (let () (declare (not safe)) (##cdr _e228156228849_)))
                      (_hd228155228852_
                       (let () (declare (not safe)) (##car _e228156228849_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd228155228852_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd228155228852_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl228154228854_))
                              (let ((_e228159228857_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl228154228854_))))
                                (let ((_tl228157228862_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e228159228857_)))
                                      (_hd228158228860_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e228159228857_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl228157228862_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl228151228846_))
                                          (let ((_e228162228865_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl228151228846_))))
                                            (let ((_tl228160228870_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e228162228865_)))
                                                  (_hd228161228868_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e228162228865_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd228161228868_))
                                                  (let ((_e228165228873_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd228161228868_))))
                                                    (let ((_tl228163228878_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e228165228873_)))
                                                          (_hd228164228876_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e228165228873_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd228164228876_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _hd228164228876_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl228163228878_))
                          (let ((_e228168228881_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl228163228878_))))
                            (let ((_tl228166228886_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e228168228881_)))
                                  (_hd228167228884_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e228168228881_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl228166228886_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl228160228870_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl228118228758_))
                                          (___match235300235301_
                                           _e228114228737_
                                           _hd228113228740_
                                           _tl228112228742_
                                           _e228117228745_
                                           _hd228116228748_
                                           _tl228115228750_
                                           _e228120228753_
                                           _hd228119228756_
                                           _tl228118228758_
                                           _e228123228761_
                                           _hd228122228764_
                                           _tl228121228766_
                                           _e228126228769_
                                           _hd228125228772_
                                           _tl228124228774_
                                           _e228129228777_
                                           _hd228128228780_
                                           _tl228127228782_
                                           _e228132228785_
                                           _hd228131228788_
                                           _tl228130228790_
                                           _e228135228793_
                                           _hd228134228796_
                                           _tl228133228798_
                                           _e228138228801_
                                           _hd228137228804_
                                           _tl228136228806_
                                           _e228141228809_
                                           _hd228140228812_
                                           _tl228139228814_
                                           _e228144228817_
                                           _hd228143228820_
                                           _tl228142228822_
                                           _e228147228825_
                                           _hd228146228828_
                                           _tl228145228830_
                                           _e228150228833_
                                           _hd228149228836_
                                           _tl228148228838_
                                           _e228153228841_
                                           _hd228152228844_
                                           _tl228151228846_
                                           _e228156228849_
                                           _hd228155228852_
                                           _tl228154228854_
                                           _e228159228857_
                                           _hd228158228860_
                                           _tl228157228862_
                                           _e228162228865_
                                           _hd228161228868_
                                           _tl228160228870_
                                           _e228165228873_
                                           _hd228164228876_
                                           _tl228163228878_
                                           _e228168228881_
                                           _hd228167228884_
                                           _tl228166228886_)
                                          (___match235312235313_
                                           _e228114228737_
                                           _hd228113228740_
                                           _tl228112228742_
                                           _e228117228745_
                                           _hd228116228748_
                                           _tl228115228750_))
                                      (___match235312235313_
                                       _e228114228737_
                                       _hd228113228740_
                                       _tl228112228742_
                                       _e228117228745_
                                       _hd228116228748_
                                       _tl228115228750_))
                                  (___match235312235313_
                                   _e228114228737_
                                   _hd228113228740_
                                   _tl228112228742_
                                   _e228117228745_
                                   _hd228116228748_
                                   _tl228115228750_))))
                          (___match235312235313_
                           _e228114228737_
                           _hd228113228740_
                           _tl228112228742_
                           _e228117228745_
                           _hd228116228748_
                           _tl228115228750_))
                      (___match235312235313_
                       _e228114228737_
                       _hd228113228740_
                       _tl228112228742_
                       _e228117228745_
                       _hd228116228748_
                       _tl228115228750_))
                  (___match235312235313_
                   _e228114228737_
                   _hd228113228740_
                   _tl228112228742_
                   _e228117228745_
                   _hd228116228748_
                   _tl228115228750_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match235312235313_
                                                   _e228114228737_
                                                   _hd228113228740_
                                                   _tl228112228742_
                                                   _e228117228745_
                                                   _hd228116228748_
                                                   _tl228115228750_))))
                                          (___match235312235313_
                                           _e228114228737_
                                           _hd228113228740_
                                           _tl228112228742_
                                           _e228117228745_
                                           _hd228116228748_
                                           _tl228115228750_))
                                      (___match235312235313_
                                       _e228114228737_
                                       _hd228113228740_
                                       _tl228112228742_
                                       _e228117228745_
                                       _hd228116228748_
                                       _tl228115228750_))))
                              (___match235312235313_
                               _e228114228737_
                               _hd228113228740_
                               _tl228112228742_
                               _e228117228745_
                               _hd228116228748_
                               _tl228115228750_))
                          (___match235312235313_
                           _e228114228737_
                           _hd228113228740_
                           _tl228112228742_
                           _e228117228745_
                           _hd228116228748_
                           _tl228115228750_))
                      (___match235312235313_
                       _e228114228737_
                       _hd228113228740_
                       _tl228112228742_
                       _e228117228745_
                       _hd228116228748_
                       _tl228115228750_))))
              (___match235312235313_
               _e228114228737_
               _hd228113228740_
               _tl228112228742_
               _e228117228745_
               _hd228116228748_
               _tl228115228750_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match235312235313_
                                               _e228114228737_
                                               _hd228113228740_
                                               _tl228112228742_
                                               _e228117228745_
                                               _hd228116228748_
                                               _tl228115228750_))
                                          (___match235312235313_
                                           _e228114228737_
                                           _hd228113228740_
                                           _tl228112228742_
                                           _e228117228745_
                                           _hd228116228748_
                                           _tl228115228750_))))
                                  (___match235312235313_
                                   _e228114228737_
                                   _hd228113228740_
                                   _tl228112228742_
                                   _e228117228745_
                                   _hd228116228748_
                                   _tl228115228750_))
                              (___match235312235313_
                               _e228114228737_
                               _hd228113228740_
                               _tl228112228742_
                               _e228117228745_
                               _hd228116228748_
                               _tl228115228750_))
                          (___match235312235313_
                           _e228114228737_
                           _hd228113228740_
                           _tl228112228742_
                           _e228117228745_
                           _hd228116228748_
                           _tl228115228750_))))
                  (___match235312235313_
                   _e228114228737_
                   _hd228113228740_
                   _tl228112228742_
                   _e228117228745_
                   _hd228116228748_
                   _tl228115228750_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match235312235313_
                                                   _e228114228737_
                                                   _hd228113228740_
                                                   _tl228112228742_
                                                   _e228117228745_
                                                   _hd228116228748_
                                                   _tl228115228750_))
                                              (___match235312235313_
                                               _e228114228737_
                                               _hd228113228740_
                                               _tl228112228742_
                                               _e228117228745_
                                               _hd228116228748_
                                               _tl228115228750_))))
                                      (___match235312235313_
                                       _e228114228737_
                                       _hd228113228740_
                                       _tl228112228742_
                                       _e228117228745_
                                       _hd228116228748_
                                       _tl228115228750_))
                                  (___match235312235313_
                                   _e228114228737_
                                   _hd228113228740_
                                   _tl228112228742_
                                   _e228117228745_
                                   _hd228116228748_
                                   _tl228115228750_))
                              (___match235312235313_
                               _e228114228737_
                               _hd228113228740_
                               _tl228112228742_
                               _e228117228745_
                               _hd228116228748_
                               _tl228115228750_))))
                      (___match235312235313_
                       _e228114228737_
                       _hd228113228740_
                       _tl228112228742_
                       _e228117228745_
                       _hd228116228748_
                       _tl228115228750_))))
              (___match235312235313_
               _e228114228737_
               _hd228113228740_
               _tl228112228742_
               _e228117228745_
               _hd228116228748_
               _tl228115228750_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match235312235313_
                                                   _e228114228737_
                                                   _hd228113228740_
                                                   _tl228112228742_
                                                   _e228117228745_
                                                   _hd228116228748_
                                                   _tl228115228750_))))
                                          (___match235312235313_
                                           _e228114228737_
                                           _hd228113228740_
                                           _tl228112228742_
                                           _e228117228745_
                                           _hd228116228748_
                                           _tl228115228750_))
                                      (___match235312235313_
                                       _e228114228737_
                                       _hd228113228740_
                                       _tl228112228742_
                                       _e228117228745_
                                       _hd228116228748_
                                       _tl228115228750_))
                                  (___match235312235313_
                                   _e228114228737_
                                   _hd228113228740_
                                   _tl228112228742_
                                   _e228117228745_
                                   _hd228116228748_
                                   _tl228115228750_))))
                          (___match235312235313_
                           _e228114228737_
                           _hd228113228740_
                           _tl228112228742_
                           _e228117228745_
                           _hd228116228748_
                           _tl228115228750_))))
                  (___match235312235313_
                   _e228114228737_
                   _hd228113228740_
                   _tl228112228742_
                   _e228117228745_
                   _hd228116228748_
                   _tl228115228750_))
              (___match235312235313_
               _e228114228737_
               _hd228113228740_
               _tl228112228742_
               _e228117228745_
               _hd228116228748_
               _tl228115228750_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match235312235313_
                                                   _e228114228737_
                                                   _hd228113228740_
                                                   _tl228112228742_
                                                   _e228117228745_
                                                   _hd228116228748_
                                                   _tl228115228750_))))
                                          (___match235312235313_
                                           _e228114228737_
                                           _hd228113228740_
                                           _tl228112228742_
                                           _e228117228745_
                                           _hd228116228748_
                                           _tl228115228750_))))
                                  (___match235312235313_
                                   _e228114228737_
                                   _hd228113228740_
                                   _tl228112228742_
                                   _e228117228745_
                                   _hd228116228748_
                                   _tl228115228750_))))
                          (___match235446235447_
                           _e228114228737_
                           _hd228113228740_
                           _tl228112228742_)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx235127235128_))
                  (let ((_e228105228954_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx235127235128_))))
                    (let ((_tl228103228959_
                           (let ()
                             (declare (not safe))
                             (##cdr _e228105228954_)))
                          (_hd228104228957_
                           (let ()
                             (declare (not safe))
                             (##car _e228105228954_))))
                      (if (gxc#current-compile-type-closure)
                          (let ((_L228962_ _tl228103228959_))
                            (___kont235129235130_ _L228962_))
                          (___match235154235155_
                           _e228105228954_
                           _hd228104228957_
                           _tl228103228959_))))
                  (let () (declare (not safe)) (_g228100228296_))))))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_stx228049_)
        (letrec ((_clause-e228051_
                  (lambda (_form228092_)
                    (let ((__obj236800
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
                       __obj236800
                       'case-lambda-clause
                       (let ()
                         (declare (not safe))
                         (gxc#lambda-form-arity _form228092_))
                       (if (let ((__tmp236867
                                  (gxc#current-compile-type-closure)))
                             (declare (not safe))
                             (not __tmp236867))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form? _form228092_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form-delegate
                                  _form228092_))
                               '#f)
                           '#f))
                      __obj236800))))
          (let* ((_g228053228063_
                  (lambda (_g228054228060_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g228054228060_))))
                 (_g228052228089_
                  (lambda (_g228054228066_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g228054228066_))
                        (let ((_e228058228068_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g228054228066_))))
                          (let ((_hd228057228071_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e228058228068_)))
                                (_tl228056228073_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e228058228068_))))
                            ((lambda (_L228076_)
                               (let ((_clauses228087_
                                      (map _clause-e228051_ _L228076_)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#!case-lambda::t
                                  'case-lambda
                                  _clauses228087_)))
                             _tl228056228073_)))
                        (let ()
                          (declare (not safe))
                          (_g228053228063_ _g228054228066_))))))
            (declare (not safe))
            (_g228052228089_ _stx228049_)))))
    (define gxc#basic-expression-type-let-values%
      (lambda (_stx227981_)
        (let* ((_g227983228000_
                (lambda (_g227984227997_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g227984227997_))))
               (_g227982228046_
                (lambda (_g227984228003_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g227984228003_))
                      (let ((_e227989228005_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g227984228003_))))
                        (let ((_hd227988228008_
                               (let ()
                                 (declare (not safe))
                                 (##car _e227989228005_)))
                              (_tl227987228010_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e227989228005_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl227987228010_))
                              (let ((_e227992228013_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl227987228010_))))
                                (let ((_hd227991228016_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e227992228013_)))
                                      (_tl227990228018_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e227992228013_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl227990228018_))
                                      (let ((_e227995228021_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl227990228018_))))
                                        (let ((_hd227994228024_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e227995228021_)))
                                              (_tl227993228026_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e227995228021_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl227993228026_))
                                              ((lambda (_L228029_ _L228030_)
                                                 (let ((__tmp236868
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _L228029_)))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp236868
                                                    gxc#current-compile-type-closure
                                                    '#t)))
                                               _hd227994228024_
                                               _hd227991228016_)
                                              (let ()
                                                (declare (not safe))
                                                (_g227983228000_
                                                 _g227984228003_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g227983228000_ _g227984228003_)))))
                              (let ()
                                (declare (not safe))
                                (_g227983228000_ _g227984228003_)))))
                      (let ()
                        (declare (not safe))
                        (_g227983228000_ _g227984228003_))))))
          (declare (not safe))
          (_g227982228046_ _stx227981_))))
    (define gxc#basic-expression-type-builtin
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-call%
      (lambda (_stx227886_)
        (let* ((___stx235455235456_ _stx227886_)
               (_g227889227909_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx235455235456_)))))
          (let ((___kont235457235458_
                 (lambda (_L227953_ _L227954_)
                   (let ((_type-e227971227973_
                          (let ((__tmp236869
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L227954_))))
                            (declare (not safe))
                            (hash-get
                             gxc#basic-expression-type-builtin
                             __tmp236869))))
                     (if _type-e227971227973_
                         (let ((_type-e227976_ _type-e227971227973_))
                           (_type-e227976_ _stx227886_ _L227953_))
                         '#f))))
                (___kont235459235460_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx235455235456_))
                (let ((_e227895227921_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx235455235456_))))
                  (let ((_tl227893227926_
                         (let () (declare (not safe)) (##cdr _e227895227921_)))
                        (_hd227894227924_
                         (let ()
                           (declare (not safe))
                           (##car _e227895227921_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl227893227926_))
                        (let ((_e227898227929_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl227893227926_))))
                          (let ((_tl227896227934_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e227898227929_)))
                                (_hd227897227932_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e227898227929_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd227897227932_))
                                (let ((_e227901227937_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd227897227932_))))
                                  (let ((_tl227899227942_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e227901227937_)))
                                        (_hd227900227940_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e227901227937_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd227900227940_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd227900227940_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl227899227942_))
                                                (let ((_e227904227945_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl227899227942_))))
                                                  (let ((_tl227902227950_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e227904227945_)))
                                                        (_hd227903227948_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e227904227945_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl227902227950_))
                                                        (___kont235457235458_
                                                         _tl227896227934_
                                                         _hd227903227948_)
                                                        (___kont235459235460_))))
                                                (___kont235459235460_))
                                            (___kont235459235460_))
                                        (___kont235459235460_))))
                                (___kont235459235460_))))
                        (___kont235459235460_))))
                (___kont235459235460_))))))
    (define gxc#basic-expression-type-ref%
      (lambda (_stx227835_)
        (let* ((_g227837227850_
                (lambda (_g227838227847_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g227838227847_))))
               (_g227836227883_
                (lambda (_g227838227853_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g227838227853_))
                      (let ((_e227842227855_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g227838227853_))))
                        (let ((_hd227841227858_
                               (let ()
                                 (declare (not safe))
                                 (##car _e227842227855_)))
                              (_tl227840227860_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e227842227855_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl227840227860_))
                              (let ((_e227845227863_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl227840227860_))))
                                (let ((_hd227844227866_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e227845227863_)))
                                      (_tl227843227868_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e227845227863_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl227843227868_))
                                      ((lambda (_L227871_)
                                         (let ((__tmp236870
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L227871_))))
                                           (declare (not safe))
                                           (gxc#optimizer-lookup-type
                                            __tmp236870)))
                                       _hd227844227866_)
                                      (let ()
                                        (declare (not safe))
                                        (_g227837227850_ _g227838227853_)))))
                              (let ()
                                (declare (not safe))
                                (_g227837227850_ _g227838227853_)))))
                      (let ()
                        (declare (not safe))
                        (_g227837227850_ _g227838227853_))))))
          (declare (not safe))
          (_g227836227883_ _stx227835_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_form227069_)
        (let* ((___stx235493235494_ _form227069_)
               (_g227074227231_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx235493235494_)))))
          (let ((___kont235495235496_
                 (lambda (_L227755_ _L227756_ _L227757_) '#t))
                (___kont235501235502_
                 (lambda (_L227543_
                          _L227544_
                          _L227545_
                          _L227546_
                          _L227547_
                          _L227548_)
                   '#t))
                (___kont235507235508_
                 (lambda (_L227339_ _L227340_ _L227341_ _L227342_) '#t))
                (___kont235509235510_ (lambda () '#f)))
            (let* ((___match235634235635_
                    (lambda (_e227193227243_
                             _hd227192227246_
                             _tl227191227248_
                             _e227196227251_
                             _hd227195227254_
                             _tl227194227256_
                             _e227199227259_
                             _hd227198227262_
                             _tl227197227264_
                             _e227202227267_
                             _hd227201227270_
                             _tl227200227272_
                             _e227205227275_
                             _hd227204227278_
                             _tl227203227280_
                             _e227208227283_
                             _hd227207227286_
                             _tl227206227288_
                             _e227211227291_
                             _hd227210227294_
                             _tl227209227296_
                             _e227214227299_
                             _hd227213227302_
                             _tl227212227304_
                             _e227217227307_
                             _hd227216227310_
                             _tl227215227312_
                             _e227220227315_
                             _hd227219227318_
                             _tl227218227320_
                             _e227223227323_
                             _hd227222227326_
                             _tl227221227328_
                             _e227226227331_
                             _hd227225227334_
                             _tl227224227336_)
                      (let ((_L227339_ _hd227225227334_)
                            (_L227340_ _hd227216227310_)
                            (_L227341_ _hd227207227286_)
                            (_L227342_ _hd227192227246_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L227342_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L227341_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L227342_ _L227339_))
                                 (let ((__tmp236871
                                        (let ()
                                          (declare (not safe))
                                          (gx#free-identifier=?
                                           _L227340_
                                           _L227342_))))
                                   (declare (not safe))
                                   (not __tmp236871)))
                            (___kont235507235508_
                             _L227339_
                             _L227340_
                             _L227341_
                             _L227342_)
                            (___kont235509235510_)))))
                   (___match235606235607_
                    (lambda (_e227193227243_
                             _hd227192227246_
                             _tl227191227248_
                             _e227196227251_
                             _hd227195227254_
                             _tl227194227256_
                             _e227199227259_
                             _hd227198227262_
                             _tl227197227264_
                             _e227202227267_
                             _hd227201227270_
                             _tl227200227272_
                             _e227205227275_
                             _hd227204227278_
                             _tl227203227280_
                             _e227208227283_
                             _hd227207227286_
                             _tl227206227288_
                             _e227211227291_
                             _hd227210227294_
                             _tl227209227296_
                             _e227214227299_
                             _hd227213227302_
                             _tl227212227304_
                             _e227217227307_
                             _hd227216227310_
                             _tl227215227312_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl227209227296_))
                          (let ((_e227220227315_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl227209227296_))))
                            (let ((_tl227218227320_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e227220227315_)))
                                  (_hd227219227318_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e227220227315_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd227219227318_))
                                  (let ((_e227223227323_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd227219227318_))))
                                    (let ((_tl227221227328_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e227223227323_)))
                                          (_hd227222227326_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e227223227323_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd227222227326_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd227222227326_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl227221227328_))
                                                  (let ((_e227226227331_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl227221227328_))))
                                                    (let ((_tl227224227336_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e227226227331_)))
                                                          (_hd227225227334_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e227226227331_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl227224227336_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl227218227320_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl227194227256_))
                          (___match235634235635_
                           _e227193227243_
                           _hd227192227246_
                           _tl227191227248_
                           _e227196227251_
                           _hd227195227254_
                           _tl227194227256_
                           _e227199227259_
                           _hd227198227262_
                           _tl227197227264_
                           _e227202227267_
                           _hd227201227270_
                           _tl227200227272_
                           _e227205227275_
                           _hd227204227278_
                           _tl227203227280_
                           _e227208227283_
                           _hd227207227286_
                           _tl227206227288_
                           _e227211227291_
                           _hd227210227294_
                           _tl227209227296_
                           _e227214227299_
                           _hd227213227302_
                           _tl227212227304_
                           _e227217227307_
                           _hd227216227310_
                           _tl227215227312_
                           _e227220227315_
                           _hd227219227318_
                           _tl227218227320_
                           _e227223227323_
                           _hd227222227326_
                           _tl227221227328_
                           _e227226227331_
                           _hd227225227334_
                           _tl227224227336_)
                          (___kont235509235510_))
                      (___kont235509235510_))
                  (___kont235509235510_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont235509235510_))
                                              (___kont235509235510_))
                                          (___kont235509235510_))))
                                  (___kont235509235510_))))
                          (___kont235509235510_))))
                   (___match235536235537_
                    (lambda (_e227129227383_
                             _hd227128227386_
                             _tl227127227388_
                             ___splice235503235504_
                             _target227130227391_
                             _tl227132227393_)
                      (letrec ((_loop227133227396_
                                (lambda (_hd227131227399_ _arg227137227401_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd227131227399_))
                                      (let ((_e227134227404_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd227131227399_))))
                                        (let ((_lp-tl227136227409_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e227134227404_)))
                                              (_lp-hd227135227407_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e227134227404_))))
                                          (let ((__tmp236886
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd227135227407_
                                                         _arg227137227401_))))
                                            (declare (not safe))
                                            (_loop227133227396_
                                             _lp-tl227136227409_
                                             __tmp236886))))
                                      (let ((_arg227138227412_
                                             (reverse _arg227137227401_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl227127227388_))
                                            (let ((_e227141227415_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl227127227388_))))
                                              (let ((_tl227139227420_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e227141227415_)))
                                                    (_hd227140227418_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e227141227415_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd227140227418_))
                                                    (let ((_e227144227423_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd227140227418_))))
                                                      (let ((_tl227142227428_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e227144227423_)))
                    (_hd227143227426_
                     (let () (declare (not safe)) (##car _e227144227423_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd227143227426_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd227143227426_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl227142227428_))
                            (let ((_e227147227431_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl227142227428_))))
                              (let ((_tl227145227436_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e227147227431_)))
                                    (_hd227146227434_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e227147227431_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd227146227434_))
                                    (let ((_e227150227439_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd227146227434_))))
                                      (let ((_tl227148227444_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e227150227439_)))
                                            (_hd227149227442_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e227150227439_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd227149227442_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd227149227442_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl227148227444_))
                                                    (let ((_e227153227447_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl227148227444_))))
                                                      (let ((_tl227151227452_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e227153227447_)))
                    (_hd227152227450_
                     (let () (declare (not safe)) (##car _e227153227447_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl227151227452_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl227145227436_))
                        (let ((_e227156227455_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl227145227436_))))
                          (let ((_tl227154227460_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e227156227455_)))
                                (_hd227155227458_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e227156227455_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd227155227458_))
                                (let ((_e227159227463_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd227155227458_))))
                                  (let ((_tl227157227468_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e227159227463_)))
                                        (_hd227158227466_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e227159227463_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd227158227466_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd227158227466_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl227157227468_))
                                                (let ((_e227162227471_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl227157227468_))))
                                                  (let ((_tl227160227476_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e227162227471_)))
                                                        (_hd227161227474_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e227162227471_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl227160227476_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _tl227154227460_))
                                                            (if (fx>= (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#stx-length _tl227154227460_))
                              '1)
                        (let ((___splice235505235506_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl227154227460_
                                  '1))))
                          (let ((_tl227165227481_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice235505235506_ '1)))
                                (_target227163227479_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice235505235506_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl227165227481_))
                                (let ((_e227174227484_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl227165227481_))))
                                  (let ((_tl227172227489_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e227174227484_)))
                                        (_hd227173227487_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e227174227484_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd227173227487_))
                                        (let ((_e227177227492_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd227173227487_))))
                                          (let ((_tl227175227497_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e227177227492_)))
                                                (_hd227176227495_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e227177227492_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd227176227495_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd227176227495_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl227175227497_))
                                                        (let ((_e227180227500_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl227175227497_))))
                  (let ((_tl227178227505_
                         (let () (declare (not safe)) (##cdr _e227180227500_)))
                        (_hd227179227503_
                         (let ()
                           (declare (not safe))
                           (##car _e227180227500_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl227178227505_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl227172227489_))
                            (letrec ((_loop227166227508_
                                      (lambda (_hd227164227511_
                                               _xarg227170227513_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd227164227511_))
                                            (let ((_e227167227516_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd227164227511_))))
                                              (let ((_lp-tl227169227521_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e227167227516_)))
                                                    (_lp-hd227168227519_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e227167227516_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _lp-hd227168227519_))
                                                    (let ((_e227183227524_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _lp-hd227168227519_))))
                                                      (let ((_tl227181227529_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e227183227524_)))
                    (_hd227182227527_
                     (let () (declare (not safe)) (##car _e227183227524_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd227182227527_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd227182227527_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl227181227529_))
                            (let ((_e227186227532_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl227181227529_))))
                              (let ((_tl227184227537_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e227186227532_)))
                                    (_hd227185227535_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e227186227532_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl227184227537_))
                                    (let ((__tmp236885
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd227185227535_
                                                   _xarg227170227513_))))
                                      (declare (not safe))
                                      (_loop227166227508_
                                       _lp-tl227169227521_
                                       __tmp236885))
                                    (___match235606235607_
                                     _e227129227383_
                                     _hd227128227386_
                                     _tl227127227388_
                                     _e227141227415_
                                     _hd227140227418_
                                     _tl227139227420_
                                     _e227144227423_
                                     _hd227143227426_
                                     _tl227142227428_
                                     _e227147227431_
                                     _hd227146227434_
                                     _tl227145227436_
                                     _e227150227439_
                                     _hd227149227442_
                                     _tl227148227444_
                                     _e227153227447_
                                     _hd227152227450_
                                     _tl227151227452_
                                     _e227156227455_
                                     _hd227155227458_
                                     _tl227154227460_
                                     _e227159227463_
                                     _hd227158227466_
                                     _tl227157227468_
                                     _e227162227471_
                                     _hd227161227474_
                                     _tl227160227476_))))
                            (___match235606235607_
                             _e227129227383_
                             _hd227128227386_
                             _tl227127227388_
                             _e227141227415_
                             _hd227140227418_
                             _tl227139227420_
                             _e227144227423_
                             _hd227143227426_
                             _tl227142227428_
                             _e227147227431_
                             _hd227146227434_
                             _tl227145227436_
                             _e227150227439_
                             _hd227149227442_
                             _tl227148227444_
                             _e227153227447_
                             _hd227152227450_
                             _tl227151227452_
                             _e227156227455_
                             _hd227155227458_
                             _tl227154227460_
                             _e227159227463_
                             _hd227158227466_
                             _tl227157227468_
                             _e227162227471_
                             _hd227161227474_
                             _tl227160227476_))
                        (___match235606235607_
                         _e227129227383_
                         _hd227128227386_
                         _tl227127227388_
                         _e227141227415_
                         _hd227140227418_
                         _tl227139227420_
                         _e227144227423_
                         _hd227143227426_
                         _tl227142227428_
                         _e227147227431_
                         _hd227146227434_
                         _tl227145227436_
                         _e227150227439_
                         _hd227149227442_
                         _tl227148227444_
                         _e227153227447_
                         _hd227152227450_
                         _tl227151227452_
                         _e227156227455_
                         _hd227155227458_
                         _tl227154227460_
                         _e227159227463_
                         _hd227158227466_
                         _tl227157227468_
                         _e227162227471_
                         _hd227161227474_
                         _tl227160227476_))
                    (___match235606235607_
                     _e227129227383_
                     _hd227128227386_
                     _tl227127227388_
                     _e227141227415_
                     _hd227140227418_
                     _tl227139227420_
                     _e227144227423_
                     _hd227143227426_
                     _tl227142227428_
                     _e227147227431_
                     _hd227146227434_
                     _tl227145227436_
                     _e227150227439_
                     _hd227149227442_
                     _tl227148227444_
                     _e227153227447_
                     _hd227152227450_
                     _tl227151227452_
                     _e227156227455_
                     _hd227155227458_
                     _tl227154227460_
                     _e227159227463_
                     _hd227158227466_
                     _tl227157227468_
                     _e227162227471_
                     _hd227161227474_
                     _tl227160227476_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match235606235607_
                                                     _e227129227383_
                                                     _hd227128227386_
                                                     _tl227127227388_
                                                     _e227141227415_
                                                     _hd227140227418_
                                                     _tl227139227420_
                                                     _e227144227423_
                                                     _hd227143227426_
                                                     _tl227142227428_
                                                     _e227147227431_
                                                     _hd227146227434_
                                                     _tl227145227436_
                                                     _e227150227439_
                                                     _hd227149227442_
                                                     _tl227148227444_
                                                     _e227153227447_
                                                     _hd227152227450_
                                                     _tl227151227452_
                                                     _e227156227455_
                                                     _hd227155227458_
                                                     _tl227154227460_
                                                     _e227159227463_
                                                     _hd227158227466_
                                                     _tl227157227468_
                                                     _e227162227471_
                                                     _hd227161227474_
                                                     _tl227160227476_))))
                                            (let ((_xarg227171227540_
                                                   (reverse _xarg227170227513_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl227139227420_))
                                                  (let ((_L227543_
                                                         _hd227179227503_)
                                                        (_L227544_
                                                         _xarg227171227540_)
                                                        (_L227545_
                                                         _hd227161227474_)
                                                        (_L227546_
                                                         _hd227152227450_)
                                                        (_L227547_
                                                         _tl227132227393_)
                                                        (_L227548_
                                                         _arg227138227412_))
                                                    (if (and (let ((__tmp236883
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp236884
                                   (lambda (_g227591227594_ _g227592227596_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g227591227594_
                                             _g227592227596_)))))
                              (declare (not safe))
                              (foldr1 __tmp236884 '() _L227548_))))
                       (declare (not safe))
                       (gx#identifier-list? __tmp236883))
                     (let () (declare (not safe)) (gx#identifier? _L227547_))
                     (let ()
                       (declare (not safe))
                       (gxc#runtime-identifier=? _L227546_ 'apply))
                     (fx= (length (let ((__tmp236881
                                         (lambda (_g227598227601_
                                                  _g227599227603_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g227598227601_
                                                   _g227599227603_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp236881 '() _L227548_)))
                          (length (let ((__tmp236882
                                         (lambda (_g227605227608_
                                                  _g227606227610_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g227605227608_
                                                   _g227606227610_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp236882 '() _L227544_))))
                     (let ((__tmp236879
                            (let ((__tmp236880
                                   (lambda (_g227612227615_ _g227613227617_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g227612227615_
                                             _g227613227617_)))))
                              (declare (not safe))
                              (foldr1 __tmp236880 '() _L227548_)))
                           (__tmp236877
                            (let ((__tmp236878
                                   (lambda (_g227619227622_ _g227620227624_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g227619227622_
                                             _g227620227624_)))))
                              (declare (not safe))
                              (foldr1 __tmp236878 '() _L227544_))))
                       (declare (not safe))
                       (andmap2 gx#free-identifier=? __tmp236879 __tmp236877))
                     (let ()
                       (declare (not safe))
                       (gx#free-identifier=? _L227547_ _L227543_))
                     (let ((__tmp236872
                            (let ((__tmp236876
                                   (lambda (_g227626227628_)
                                     (let ()
                                       (declare (not safe))
                                       (gx#free-identifier=?
                                        _g227626227628_
                                        _L227545_))))
                                  (__tmp236873
                                   (let ((__tmp236875
                                          (lambda (_g227630227633_
                                                   _g227631227635_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g227630227633_
                                                    _g227631227635_))))
                                         (__tmp236874
                                          (let ()
                                            (declare (not safe))
                                            (cons _L227547_ '()))))
                                     (declare (not safe))
                                     (foldr1 __tmp236875
                                             __tmp236874
                                             _L227548_))))
                              (declare (not safe))
                              (find __tmp236876 __tmp236873))))
                       (declare (not safe))
                       (not __tmp236872)))
                (___kont235501235502_
                 _L227543_
                 _L227544_
                 _L227545_
                 _L227546_
                 _L227547_
                 _L227548_)
                (___match235606235607_
                 _e227129227383_
                 _hd227128227386_
                 _tl227127227388_
                 _e227141227415_
                 _hd227140227418_
                 _tl227139227420_
                 _e227144227423_
                 _hd227143227426_
                 _tl227142227428_
                 _e227147227431_
                 _hd227146227434_
                 _tl227145227436_
                 _e227150227439_
                 _hd227149227442_
                 _tl227148227444_
                 _e227153227447_
                 _hd227152227450_
                 _tl227151227452_
                 _e227156227455_
                 _hd227155227458_
                 _tl227154227460_
                 _e227159227463_
                 _hd227158227466_
                 _tl227157227468_
                 _e227162227471_
                 _hd227161227474_
                 _tl227160227476_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match235606235607_
                                                   _e227129227383_
                                                   _hd227128227386_
                                                   _tl227127227388_
                                                   _e227141227415_
                                                   _hd227140227418_
                                                   _tl227139227420_
                                                   _e227144227423_
                                                   _hd227143227426_
                                                   _tl227142227428_
                                                   _e227147227431_
                                                   _hd227146227434_
                                                   _tl227145227436_
                                                   _e227150227439_
                                                   _hd227149227442_
                                                   _tl227148227444_
                                                   _e227153227447_
                                                   _hd227152227450_
                                                   _tl227151227452_
                                                   _e227156227455_
                                                   _hd227155227458_
                                                   _tl227154227460_
                                                   _e227159227463_
                                                   _hd227158227466_
                                                   _tl227157227468_
                                                   _e227162227471_
                                                   _hd227161227474_
                                                   _tl227160227476_)))))))
                              (let ()
                                (declare (not safe))
                                (_loop227166227508_ _target227163227479_ '())))
                            (___match235606235607_
                             _e227129227383_
                             _hd227128227386_
                             _tl227127227388_
                             _e227141227415_
                             _hd227140227418_
                             _tl227139227420_
                             _e227144227423_
                             _hd227143227426_
                             _tl227142227428_
                             _e227147227431_
                             _hd227146227434_
                             _tl227145227436_
                             _e227150227439_
                             _hd227149227442_
                             _tl227148227444_
                             _e227153227447_
                             _hd227152227450_
                             _tl227151227452_
                             _e227156227455_
                             _hd227155227458_
                             _tl227154227460_
                             _e227159227463_
                             _hd227158227466_
                             _tl227157227468_
                             _e227162227471_
                             _hd227161227474_
                             _tl227160227476_))
                        (___match235606235607_
                         _e227129227383_
                         _hd227128227386_
                         _tl227127227388_
                         _e227141227415_
                         _hd227140227418_
                         _tl227139227420_
                         _e227144227423_
                         _hd227143227426_
                         _tl227142227428_
                         _e227147227431_
                         _hd227146227434_
                         _tl227145227436_
                         _e227150227439_
                         _hd227149227442_
                         _tl227148227444_
                         _e227153227447_
                         _hd227152227450_
                         _tl227151227452_
                         _e227156227455_
                         _hd227155227458_
                         _tl227154227460_
                         _e227159227463_
                         _hd227158227466_
                         _tl227157227468_
                         _e227162227471_
                         _hd227161227474_
                         _tl227160227476_))))
                (___match235606235607_
                 _e227129227383_
                 _hd227128227386_
                 _tl227127227388_
                 _e227141227415_
                 _hd227140227418_
                 _tl227139227420_
                 _e227144227423_
                 _hd227143227426_
                 _tl227142227428_
                 _e227147227431_
                 _hd227146227434_
                 _tl227145227436_
                 _e227150227439_
                 _hd227149227442_
                 _tl227148227444_
                 _e227153227447_
                 _hd227152227450_
                 _tl227151227452_
                 _e227156227455_
                 _hd227155227458_
                 _tl227154227460_
                 _e227159227463_
                 _hd227158227466_
                 _tl227157227468_
                 _e227162227471_
                 _hd227161227474_
                 _tl227160227476_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match235606235607_
                                                     _e227129227383_
                                                     _hd227128227386_
                                                     _tl227127227388_
                                                     _e227141227415_
                                                     _hd227140227418_
                                                     _tl227139227420_
                                                     _e227144227423_
                                                     _hd227143227426_
                                                     _tl227142227428_
                                                     _e227147227431_
                                                     _hd227146227434_
                                                     _tl227145227436_
                                                     _e227150227439_
                                                     _hd227149227442_
                                                     _tl227148227444_
                                                     _e227153227447_
                                                     _hd227152227450_
                                                     _tl227151227452_
                                                     _e227156227455_
                                                     _hd227155227458_
                                                     _tl227154227460_
                                                     _e227159227463_
                                                     _hd227158227466_
                                                     _tl227157227468_
                                                     _e227162227471_
                                                     _hd227161227474_
                                                     _tl227160227476_))
                                                (___match235606235607_
                                                 _e227129227383_
                                                 _hd227128227386_
                                                 _tl227127227388_
                                                 _e227141227415_
                                                 _hd227140227418_
                                                 _tl227139227420_
                                                 _e227144227423_
                                                 _hd227143227426_
                                                 _tl227142227428_
                                                 _e227147227431_
                                                 _hd227146227434_
                                                 _tl227145227436_
                                                 _e227150227439_
                                                 _hd227149227442_
                                                 _tl227148227444_
                                                 _e227153227447_
                                                 _hd227152227450_
                                                 _tl227151227452_
                                                 _e227156227455_
                                                 _hd227155227458_
                                                 _tl227154227460_
                                                 _e227159227463_
                                                 _hd227158227466_
                                                 _tl227157227468_
                                                 _e227162227471_
                                                 _hd227161227474_
                                                 _tl227160227476_))))
                                        (___match235606235607_
                                         _e227129227383_
                                         _hd227128227386_
                                         _tl227127227388_
                                         _e227141227415_
                                         _hd227140227418_
                                         _tl227139227420_
                                         _e227144227423_
                                         _hd227143227426_
                                         _tl227142227428_
                                         _e227147227431_
                                         _hd227146227434_
                                         _tl227145227436_
                                         _e227150227439_
                                         _hd227149227442_
                                         _tl227148227444_
                                         _e227153227447_
                                         _hd227152227450_
                                         _tl227151227452_
                                         _e227156227455_
                                         _hd227155227458_
                                         _tl227154227460_
                                         _e227159227463_
                                         _hd227158227466_
                                         _tl227157227468_
                                         _e227162227471_
                                         _hd227161227474_
                                         _tl227160227476_))))
                                (___match235606235607_
                                 _e227129227383_
                                 _hd227128227386_
                                 _tl227127227388_
                                 _e227141227415_
                                 _hd227140227418_
                                 _tl227139227420_
                                 _e227144227423_
                                 _hd227143227426_
                                 _tl227142227428_
                                 _e227147227431_
                                 _hd227146227434_
                                 _tl227145227436_
                                 _e227150227439_
                                 _hd227149227442_
                                 _tl227148227444_
                                 _e227153227447_
                                 _hd227152227450_
                                 _tl227151227452_
                                 _e227156227455_
                                 _hd227155227458_
                                 _tl227154227460_
                                 _e227159227463_
                                 _hd227158227466_
                                 _tl227157227468_
                                 _e227162227471_
                                 _hd227161227474_
                                 _tl227160227476_))))
                        (___match235606235607_
                         _e227129227383_
                         _hd227128227386_
                         _tl227127227388_
                         _e227141227415_
                         _hd227140227418_
                         _tl227139227420_
                         _e227144227423_
                         _hd227143227426_
                         _tl227142227428_
                         _e227147227431_
                         _hd227146227434_
                         _tl227145227436_
                         _e227150227439_
                         _hd227149227442_
                         _tl227148227444_
                         _e227153227447_
                         _hd227152227450_
                         _tl227151227452_
                         _e227156227455_
                         _hd227155227458_
                         _tl227154227460_
                         _e227159227463_
                         _hd227158227466_
                         _tl227157227468_
                         _e227162227471_
                         _hd227161227474_
                         _tl227160227476_))
                    (___match235606235607_
                     _e227129227383_
                     _hd227128227386_
                     _tl227127227388_
                     _e227141227415_
                     _hd227140227418_
                     _tl227139227420_
                     _e227144227423_
                     _hd227143227426_
                     _tl227142227428_
                     _e227147227431_
                     _hd227146227434_
                     _tl227145227436_
                     _e227150227439_
                     _hd227149227442_
                     _tl227148227444_
                     _e227153227447_
                     _hd227152227450_
                     _tl227151227452_
                     _e227156227455_
                     _hd227155227458_
                     _tl227154227460_
                     _e227159227463_
                     _hd227158227466_
                     _tl227157227468_
                     _e227162227471_
                     _hd227161227474_
                     _tl227160227476_))
                (___kont235509235510_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont235509235510_))
                                            (___kont235509235510_))
                                        (___kont235509235510_))))
                                (___kont235509235510_))))
                        (___kont235509235510_))
                    (___kont235509235510_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont235509235510_))
                                                (___kont235509235510_))
                                            (___kont235509235510_))))
                                    (___kont235509235510_))))
                            (___kont235509235510_))
                        (___kont235509235510_))
                    (___kont235509235510_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont235509235510_))))
                                            (___kont235509235510_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop227133227396_ _target227130227391_ '())))))
                   (___match235524235525_
                    (lambda (_e227081227643_
                             _hd227080227646_
                             _tl227079227648_
                             ___splice235497235498_
                             _target227082227651_
                             _tl227084227653_)
                      (letrec ((_loop227085227656_
                                (lambda (_hd227083227659_ _arg227089227661_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd227083227659_))
                                      (let ((_e227086227664_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd227083227659_))))
                                        (let ((_lp-tl227088227669_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e227086227664_)))
                                              (_lp-hd227087227667_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e227086227664_))))
                                          (let ((__tmp236900
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd227087227667_
                                                         _arg227089227661_))))
                                            (declare (not safe))
                                            (_loop227085227656_
                                             _lp-tl227088227669_
                                             __tmp236900))))
                                      (let ((_arg227090227672_
                                             (reverse _arg227089227661_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl227079227648_))
                                            (let ((_e227093227675_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl227079227648_))))
                                              (let ((_tl227091227680_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e227093227675_)))
                                                    (_hd227092227678_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e227093227675_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd227092227678_))
                                                    (let ((_e227096227683_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd227092227678_))))
                                                      (let ((_tl227094227688_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e227096227683_)))
                    (_hd227095227686_
                     (let () (declare (not safe)) (##car _e227096227683_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd227095227686_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd227095227686_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl227094227688_))
                            (let ((_e227099227691_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl227094227688_))))
                              (let ((_tl227097227696_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e227099227691_)))
                                    (_hd227098227694_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e227099227691_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd227098227694_))
                                    (let ((_e227102227699_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd227098227694_))))
                                      (let ((_tl227100227704_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e227102227699_)))
                                            (_hd227101227702_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e227102227699_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd227101227702_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd227101227702_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl227100227704_))
                                                    (let ((_e227105227707_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl227100227704_))))
                                                      (let ((_tl227103227712_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e227105227707_)))
                    (_hd227104227710_
                     (let () (declare (not safe)) (##car _e227105227707_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl227103227712_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl227097227696_))
                        (let ((___splice235499235500_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl227097227696_
                                  '0))))
                          (let ((_tl227108227717_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice235499235500_ '1)))
                                (_target227106227715_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice235499235500_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl227108227717_))
                                (letrec ((_loop227109227720_
                                          (lambda (_hd227107227723_
                                                   _xarg227113227725_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd227107227723_))
                                                (let ((_e227110227728_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd227107227723_))))
                                                  (let ((_lp-tl227112227733_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e227110227728_)))
                                                        (_lp-hd227111227731_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e227110227728_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd227111227731_))
                                                        (let ((_e227117227736_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd227111227731_))))
                  (let ((_tl227115227741_
                         (let () (declare (not safe)) (##cdr _e227117227736_)))
                        (_hd227116227739_
                         (let ()
                           (declare (not safe))
                           (##car _e227117227736_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd227116227739_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd227116227739_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl227115227741_))
                                (let ((_e227120227744_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl227115227741_))))
                                  (let ((_tl227118227749_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e227120227744_)))
                                        (_hd227119227747_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e227120227744_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl227118227749_))
                                        (let ((__tmp236899
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd227119227747_
                                                       _xarg227113227725_))))
                                          (declare (not safe))
                                          (_loop227109227720_
                                           _lp-tl227112227733_
                                           __tmp236899))
                                        (___match235536235537_
                                         _e227081227643_
                                         _hd227080227646_
                                         _tl227079227648_
                                         ___splice235497235498_
                                         _target227082227651_
                                         _tl227084227653_))))
                                (___match235536235537_
                                 _e227081227643_
                                 _hd227080227646_
                                 _tl227079227648_
                                 ___splice235497235498_
                                 _target227082227651_
                                 _tl227084227653_))
                            (___match235536235537_
                             _e227081227643_
                             _hd227080227646_
                             _tl227079227648_
                             ___splice235497235498_
                             _target227082227651_
                             _tl227084227653_))
                        (___match235536235537_
                         _e227081227643_
                         _hd227080227646_
                         _tl227079227648_
                         ___splice235497235498_
                         _target227082227651_
                         _tl227084227653_))))
                (___match235536235537_
                 _e227081227643_
                 _hd227080227646_
                 _tl227079227648_
                 ___splice235497235498_
                 _target227082227651_
                 _tl227084227653_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg227114227752_
                                                       (reverse _xarg227113227725_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl227091227680_))
                                                      (let ((_L227755_
                                                             _xarg227114227752_)
                                                            (_L227756_
                                                             _hd227104227710_)
                                                            (_L227757_
                                                             _arg227090227672_))
                                                        (if (and (let ((__tmp236897
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp236898
                                       (lambda (_g227785227788_
                                                _g227786227790_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g227785227788_
                                                 _g227786227790_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp236898 '() _L227757_))))
                           (declare (not safe))
                           (gx#identifier-list? __tmp236897))
                         (fx= (length (let ((__tmp236895
                                             (lambda (_g227792227795_
                                                      _g227793227797_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g227792227795_
                                                       _g227793227797_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp236895 '() _L227757_)))
                              (length (let ((__tmp236896
                                             (lambda (_g227799227802_
                                                      _g227800227804_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g227799227802_
                                                       _g227800227804_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp236896 '() _L227755_))))
                         (let ((__tmp236893
                                (let ((__tmp236894
                                       (lambda (_g227806227809_
                                                _g227807227811_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g227806227809_
                                                 _g227807227811_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp236894 '() _L227757_)))
                               (__tmp236891
                                (let ((__tmp236892
                                       (lambda (_g227813227816_
                                                _g227814227818_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g227813227816_
                                                 _g227814227818_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp236892 '() _L227755_))))
                           (declare (not safe))
                           (andmap2 gx#free-identifier=?
                                    __tmp236893
                                    __tmp236891))
                         (let ((__tmp236887
                                (let ((__tmp236890
                                       (lambda (_g227820227822_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _g227820227822_
                                            _L227756_))))
                                      (__tmp236888
                                       (let ((__tmp236889
                                              (lambda (_g227824227827_
                                                       _g227825227829_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g227824227827_
                                                        _g227825227829_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp236889 '() _L227757_))))
                                  (declare (not safe))
                                  (find __tmp236890 __tmp236888))))
                           (declare (not safe))
                           (not __tmp236887)))
                    (___kont235495235496_ _L227755_ _L227756_ _L227757_)
                    (___match235536235537_
                     _e227081227643_
                     _hd227080227646_
                     _tl227079227648_
                     ___splice235497235498_
                     _target227082227651_
                     _tl227084227653_)))
              (___match235536235537_
               _e227081227643_
               _hd227080227646_
               _tl227079227648_
               ___splice235497235498_
               _target227082227651_
               _tl227084227653_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (let ()
                                    (declare (not safe))
                                    (_loop227109227720_
                                     _target227106227715_
                                     '())))
                                (___match235536235537_
                                 _e227081227643_
                                 _hd227080227646_
                                 _tl227079227648_
                                 ___splice235497235498_
                                 _target227082227651_
                                 _tl227084227653_))))
                        (___match235536235537_
                         _e227081227643_
                         _hd227080227646_
                         _tl227079227648_
                         ___splice235497235498_
                         _target227082227651_
                         _tl227084227653_))
                    (___match235536235537_
                     _e227081227643_
                     _hd227080227646_
                     _tl227079227648_
                     ___splice235497235498_
                     _target227082227651_
                     _tl227084227653_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match235536235537_
                                                     _e227081227643_
                                                     _hd227080227646_
                                                     _tl227079227648_
                                                     ___splice235497235498_
                                                     _target227082227651_
                                                     _tl227084227653_))
                                                (___match235536235537_
                                                 _e227081227643_
                                                 _hd227080227646_
                                                 _tl227079227648_
                                                 ___splice235497235498_
                                                 _target227082227651_
                                                 _tl227084227653_))
                                            (___match235536235537_
                                             _e227081227643_
                                             _hd227080227646_
                                             _tl227079227648_
                                             ___splice235497235498_
                                             _target227082227651_
                                             _tl227084227653_))))
                                    (___match235536235537_
                                     _e227081227643_
                                     _hd227080227646_
                                     _tl227079227648_
                                     ___splice235497235498_
                                     _target227082227651_
                                     _tl227084227653_))))
                            (___match235536235537_
                             _e227081227643_
                             _hd227080227646_
                             _tl227079227648_
                             ___splice235497235498_
                             _target227082227651_
                             _tl227084227653_))
                        (___match235536235537_
                         _e227081227643_
                         _hd227080227646_
                         _tl227079227648_
                         ___splice235497235498_
                         _target227082227651_
                         _tl227084227653_))
                    (___match235536235537_
                     _e227081227643_
                     _hd227080227646_
                     _tl227079227648_
                     ___splice235497235498_
                     _target227082227651_
                     _tl227084227653_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match235536235537_
                                                     _e227081227643_
                                                     _hd227080227646_
                                                     _tl227079227648_
                                                     ___splice235497235498_
                                                     _target227082227651_
                                                     _tl227084227653_))))
                                            (___match235536235537_
                                             _e227081227643_
                                             _hd227080227646_
                                             _tl227079227648_
                                             ___splice235497235498_
                                             _target227082227651_
                                             _tl227084227653_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop227085227656_ _target227082227651_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx235493235494_))
                  (let ((_e227081227643_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx235493235494_))))
                    (let ((_tl227079227648_
                           (let ()
                             (declare (not safe))
                             (##cdr _e227081227643_)))
                          (_hd227080227646_
                           (let ()
                             (declare (not safe))
                             (##car _e227081227643_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd227080227646_))
                          (let ((___splice235497235498_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd227080227646_
                                    '0))))
                            (let ((_tl227084227653_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice235497235498_ '1)))
                                  (_target227082227651_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice235497235498_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl227084227653_))
                                  (___match235524235525_
                                   _e227081227643_
                                   _hd227080227646_
                                   _tl227079227648_
                                   ___splice235497235498_
                                   _target227082227651_
                                   _tl227084227653_)
                                  (___match235536235537_
                                   _e227081227643_
                                   _hd227080227646_
                                   _tl227079227648_
                                   ___splice235497235498_
                                   _target227082227651_
                                   _tl227084227653_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl227079227648_))
                              (let ((_e227196227251_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl227079227648_))))
                                (let ((_tl227194227256_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e227196227251_)))
                                      (_hd227195227254_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e227196227251_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd227195227254_))
                                      (let ((_e227199227259_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd227195227254_))))
                                        (let ((_tl227197227264_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e227199227259_)))
                                              (_hd227198227262_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e227199227259_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd227198227262_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd227198227262_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl227197227264_))
                                                      (let ((_e227202227267_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl227197227264_))))
                (let ((_tl227200227272_
                       (let () (declare (not safe)) (##cdr _e227202227267_)))
                      (_hd227201227270_
                       (let () (declare (not safe)) (##car _e227202227267_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd227201227270_))
                      (let ((_e227205227275_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd227201227270_))))
                        (let ((_tl227203227280_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e227205227275_)))
                              (_hd227204227278_
                               (let ()
                                 (declare (not safe))
                                 (##car _e227205227275_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd227204227278_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd227204227278_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl227203227280_))
                                      (let ((_e227208227283_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl227203227280_))))
                                        (let ((_tl227206227288_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e227208227283_)))
                                              (_hd227207227286_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e227208227283_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl227206227288_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl227200227272_))
                                                  (let ((_e227211227291_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl227200227272_))))
                                                    (let ((_tl227209227296_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e227211227291_)))
                                                          (_hd227210227294_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e227211227291_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd227210227294_))
                                                          (let ((_e227214227299_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd227210227294_))))
                    (let ((_tl227212227304_
                           (let ()
                             (declare (not safe))
                             (##cdr _e227214227299_)))
                          (_hd227213227302_
                           (let ()
                             (declare (not safe))
                             (##car _e227214227299_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd227213227302_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd227213227302_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl227212227304_))
                                  (let ((_e227217227307_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl227212227304_))))
                                    (let ((_tl227215227312_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e227217227307_)))
                                          (_hd227216227310_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e227217227307_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl227215227312_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl227209227296_))
                                              (let ((_e227220227315_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl227209227296_))))
                                                (let ((_tl227218227320_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e227220227315_)))
                                                      (_hd227219227318_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e227220227315_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd227219227318_))
                                                      (let ((_e227223227323_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd227219227318_))))
                (let ((_tl227221227328_
                       (let () (declare (not safe)) (##cdr _e227223227323_)))
                      (_hd227222227326_
                       (let () (declare (not safe)) (##car _e227223227323_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd227222227326_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd227222227326_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl227221227328_))
                              (let ((_e227226227331_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl227221227328_))))
                                (let ((_tl227224227336_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e227226227331_)))
                                      (_hd227225227334_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e227226227331_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl227224227336_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl227218227320_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl227194227256_))
                                              (___match235634235635_
                                               _e227081227643_
                                               _hd227080227646_
                                               _tl227079227648_
                                               _e227196227251_
                                               _hd227195227254_
                                               _tl227194227256_
                                               _e227199227259_
                                               _hd227198227262_
                                               _tl227197227264_
                                               _e227202227267_
                                               _hd227201227270_
                                               _tl227200227272_
                                               _e227205227275_
                                               _hd227204227278_
                                               _tl227203227280_
                                               _e227208227283_
                                               _hd227207227286_
                                               _tl227206227288_
                                               _e227211227291_
                                               _hd227210227294_
                                               _tl227209227296_
                                               _e227214227299_
                                               _hd227213227302_
                                               _tl227212227304_
                                               _e227217227307_
                                               _hd227216227310_
                                               _tl227215227312_
                                               _e227220227315_
                                               _hd227219227318_
                                               _tl227218227320_
                                               _e227223227323_
                                               _hd227222227326_
                                               _tl227221227328_
                                               _e227226227331_
                                               _hd227225227334_
                                               _tl227224227336_)
                                              (___kont235509235510_))
                                          (___kont235509235510_))
                                      (___kont235509235510_))))
                              (___kont235509235510_))
                          (___kont235509235510_))
                      (___kont235509235510_))))
              (___kont235509235510_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont235509235510_))
                                          (___kont235509235510_))))
                                  (___kont235509235510_))
                              (___kont235509235510_))
                          (___kont235509235510_))))
                  (___kont235509235510_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont235509235510_))
                                              (___kont235509235510_))))
                                      (___kont235509235510_))
                                  (___kont235509235510_))
                              (___kont235509235510_))))
                      (___kont235509235510_))))
              (___kont235509235510_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont235509235510_))
                                              (___kont235509235510_))))
                                      (___kont235509235510_))))
                              (___kont235509235510_)))))
                  (___kont235509235510_)))))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_form226537_)
        (let* ((___stx235637235638_ _form226537_)
               (_g226541226665_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx235637235638_)))))
          (let ((___kont235639235640_
                 (lambda (_L227035_ _L227036_ _L227037_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L227036_))))
                (___kont235645235646_
                 (lambda (_L226883_ _L226884_ _L226885_ _L226886_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L226883_))))
                (___kont235649235650_
                 (lambda (_L226750_ _L226751_ _L226752_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L226750_)))))
            (let* ((___match235746235747_
                    (lambda (_e226633226670_
                             _hd226632226673_
                             _tl226631226675_
                             _e226636226678_
                             _hd226635226681_
                             _tl226634226683_
                             _e226639226686_
                             _hd226638226689_
                             _tl226637226691_
                             _e226642226694_
                             _hd226641226697_
                             _tl226640226699_
                             _e226645226702_
                             _hd226644226705_
                             _tl226643226707_
                             _e226648226710_
                             _hd226647226713_
                             _tl226646226715_
                             _e226651226718_
                             _hd226650226721_
                             _tl226649226723_
                             _e226654226726_
                             _hd226653226729_
                             _tl226652226731_
                             _e226657226734_
                             _hd226656226737_
                             _tl226655226739_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl226649226723_))
                          (let ((_e226660226742_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl226649226723_))))
                            (let ((_tl226658226747_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e226660226742_)))
                                  (_hd226659226745_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e226660226742_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl226658226747_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl226634226683_))
                                      (___kont235649235650_
                                       _hd226656226737_
                                       _hd226647226713_
                                       _hd226632226673_)
                                      (let ()
                                        (declare (not safe))
                                        (_g226541226665_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g226541226665_)))))
                          (let () (declare (not safe)) (_g226541226665_)))))
                   (___match235676235677_
                    (lambda (_e226594226787_
                             _hd226593226790_
                             _tl226592226792_
                             ___splice235647235648_
                             _target226595226795_
                             _tl226597226797_)
                      (letrec ((_loop226598226800_
                                (lambda (_hd226596226803_ _arg226602226805_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd226596226803_))
                                      (let ((_e226599226808_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd226596226803_))))
                                        (let ((_lp-tl226601226813_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e226599226808_)))
                                              (_lp-hd226600226811_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e226599226808_))))
                                          (let ((__tmp236901
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd226600226811_
                                                         _arg226602226805_))))
                                            (declare (not safe))
                                            (_loop226598226800_
                                             _lp-tl226601226813_
                                             __tmp236901))))
                                      (let ((_arg226603226816_
                                             (reverse _arg226602226805_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl226592226792_))
                                            (let ((_e226606226819_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl226592226792_))))
                                              (let ((_tl226604226824_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e226606226819_)))
                                                    (_hd226605226822_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e226606226819_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd226605226822_))
                                                    (let ((_e226609226827_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd226605226822_))))
                                                      (let ((_tl226607226832_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e226609226827_)))
                    (_hd226608226830_
                     (let () (declare (not safe)) (##car _e226609226827_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd226608226830_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd226608226830_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl226607226832_))
                            (let ((_e226612226835_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl226607226832_))))
                              (let ((_tl226610226840_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e226612226835_)))
                                    (_hd226611226838_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e226612226835_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd226611226838_))
                                    (let ((_e226615226843_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd226611226838_))))
                                      (let ((_tl226613226848_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e226615226843_)))
                                            (_hd226614226846_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e226615226843_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd226614226846_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd226614226846_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl226613226848_))
                                                    (let ((_e226618226851_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl226613226848_))))
                                                      (let ((_tl226616226856_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e226618226851_)))
                    (_hd226617226854_
                     (let () (declare (not safe)) (##car _e226618226851_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl226616226856_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl226610226840_))
                        (let ((_e226621226859_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl226610226840_))))
                          (let ((_tl226619226864_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e226621226859_)))
                                (_hd226620226862_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e226621226859_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd226620226862_))
                                (let ((_e226624226867_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd226620226862_))))
                                  (let ((_tl226622226872_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e226624226867_)))
                                        (_hd226623226870_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e226624226867_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd226623226870_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd226623226870_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl226622226872_))
                                                (let ((_e226627226875_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl226622226872_))))
                                                  (let ((_tl226625226880_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e226627226875_)))
                                                        (_hd226626226878_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e226627226875_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl226625226880_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl226604226824_))
                                                            (___kont235645235646_
                                                             _hd226626226878_
                                                             _hd226617226854_
                                                             _tl226597226797_
                                                             _arg226603226816_)
                                                            (___match235746235747_
                                                             _e226594226787_
                                                             _hd226593226790_
                                                             _tl226592226792_
                                                             _e226606226819_
                                                             _hd226605226822_
                                                             _tl226604226824_
                                                             _e226609226827_
                                                             _hd226608226830_
                                                             _tl226607226832_
                                                             _e226612226835_
                                                             _hd226611226838_
                                                             _tl226610226840_
                                                             _e226615226843_
                                                             _hd226614226846_
                                                             _tl226613226848_
                                                             _e226618226851_
                                                             _hd226617226854_
                                                             _tl226616226856_
                                                             _e226621226859_
                                                             _hd226620226862_
                                                             _tl226619226864_
                                                             _e226624226867_
                                                             _hd226623226870_
                                                             _tl226622226872_
                                                             _e226627226875_
                                                             _hd226626226878_
                                                             _tl226625226880_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g226541226665_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g226541226665_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g226541226665_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g226541226665_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g226541226665_)))))
                        (let () (declare (not safe)) (_g226541226665_)))
                    (let () (declare (not safe)) (_g226541226665_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g226541226665_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g226541226665_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g226541226665_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g226541226665_)))))
                            (let () (declare (not safe)) (_g226541226665_)))
                        (let () (declare (not safe)) (_g226541226665_)))
                    (let () (declare (not safe)) (_g226541226665_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g226541226665_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g226541226665_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop226598226800_ _target226595226795_ '())))))
                   (___match235664235665_
                    (lambda (_e226548226923_
                             _hd226547226926_
                             _tl226546226928_
                             ___splice235641235642_
                             _target226549226931_
                             _tl226551226933_)
                      (letrec ((_loop226552226936_
                                (lambda (_hd226550226939_ _arg226556226941_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd226550226939_))
                                      (let ((_e226553226944_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd226550226939_))))
                                        (let ((_lp-tl226555226949_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e226553226944_)))
                                              (_lp-hd226554226947_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e226553226944_))))
                                          (let ((__tmp236903
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd226554226947_
                                                         _arg226556226941_))))
                                            (declare (not safe))
                                            (_loop226552226936_
                                             _lp-tl226555226949_
                                             __tmp236903))))
                                      (let ((_arg226557226952_
                                             (reverse _arg226556226941_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl226546226928_))
                                            (let ((_e226560226955_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl226546226928_))))
                                              (let ((_tl226558226960_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e226560226955_)))
                                                    (_hd226559226958_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e226560226955_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd226559226958_))
                                                    (let ((_e226563226963_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd226559226958_))))
                                                      (let ((_tl226561226968_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e226563226963_)))
                    (_hd226562226966_
                     (let () (declare (not safe)) (##car _e226563226963_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd226562226966_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd226562226966_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl226561226968_))
                            (let ((_e226566226971_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl226561226968_))))
                              (let ((_tl226564226976_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e226566226971_)))
                                    (_hd226565226974_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e226566226971_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd226565226974_))
                                    (let ((_e226569226979_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd226565226974_))))
                                      (let ((_tl226567226984_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e226569226979_)))
                                            (_hd226568226982_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e226569226979_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd226568226982_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd226568226982_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl226567226984_))
                                                    (let ((_e226572226987_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl226567226984_))))
                                                      (let ((_tl226570226992_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e226572226987_)))
                    (_hd226571226990_
                     (let () (declare (not safe)) (##car _e226572226987_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl226570226992_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl226564226976_))
                        (let ((___splice235643235644_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl226564226976_
                                  '0))))
                          (let ((_tl226575226997_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice235643235644_ '1)))
                                (_target226573226995_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice235643235644_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl226575226997_))
                                (letrec ((_loop226576227000_
                                          (lambda (_hd226574227003_
                                                   _xarg226580227005_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd226574227003_))
                                                (let ((_e226577227008_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd226574227003_))))
                                                  (let ((_lp-tl226579227013_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e226577227008_)))
                                                        (_lp-hd226578227011_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e226577227008_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd226578227011_))
                                                        (let ((_e226584227016_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd226578227011_))))
                  (let ((_tl226582227021_
                         (let () (declare (not safe)) (##cdr _e226584227016_)))
                        (_hd226583227019_
                         (let ()
                           (declare (not safe))
                           (##car _e226584227016_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd226583227019_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd226583227019_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl226582227021_))
                                (let ((_e226587227024_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl226582227021_))))
                                  (let ((_tl226585227029_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e226587227024_)))
                                        (_hd226586227027_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e226587227024_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl226585227029_))
                                        (let ((__tmp236902
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd226586227027_
                                                       _xarg226580227005_))))
                                          (declare (not safe))
                                          (_loop226576227000_
                                           _lp-tl226579227013_
                                           __tmp236902))
                                        (___match235676235677_
                                         _e226548226923_
                                         _hd226547226926_
                                         _tl226546226928_
                                         ___splice235641235642_
                                         _target226549226931_
                                         _tl226551226933_))))
                                (___match235676235677_
                                 _e226548226923_
                                 _hd226547226926_
                                 _tl226546226928_
                                 ___splice235641235642_
                                 _target226549226931_
                                 _tl226551226933_))
                            (___match235676235677_
                             _e226548226923_
                             _hd226547226926_
                             _tl226546226928_
                             ___splice235641235642_
                             _target226549226931_
                             _tl226551226933_))
                        (___match235676235677_
                         _e226548226923_
                         _hd226547226926_
                         _tl226546226928_
                         ___splice235641235642_
                         _target226549226931_
                         _tl226551226933_))))
                (___match235676235677_
                 _e226548226923_
                 _hd226547226926_
                 _tl226546226928_
                 ___splice235641235642_
                 _target226549226931_
                 _tl226551226933_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg226581227032_
                                                       (reverse _xarg226580227005_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl226558226960_))
                                                      (___kont235639235640_
                                                       _xarg226581227032_
                                                       _hd226571226990_
                                                       _arg226557226952_)
                                                      (___match235676235677_
                                                       _e226548226923_
                                                       _hd226547226926_
                                                       _tl226546226928_
                                                       ___splice235641235642_
                                                       _target226549226931_
                                                       _tl226551226933_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_loop226576227000_
                                     _target226573226995_
                                     '())))
                                (___match235676235677_
                                 _e226548226923_
                                 _hd226547226926_
                                 _tl226546226928_
                                 ___splice235641235642_
                                 _target226549226931_
                                 _tl226551226933_))))
                        (___match235676235677_
                         _e226548226923_
                         _hd226547226926_
                         _tl226546226928_
                         ___splice235641235642_
                         _target226549226931_
                         _tl226551226933_))
                    (___match235676235677_
                     _e226548226923_
                     _hd226547226926_
                     _tl226546226928_
                     ___splice235641235642_
                     _target226549226931_
                     _tl226551226933_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match235676235677_
                                                     _e226548226923_
                                                     _hd226547226926_
                                                     _tl226546226928_
                                                     ___splice235641235642_
                                                     _target226549226931_
                                                     _tl226551226933_))
                                                (___match235676235677_
                                                 _e226548226923_
                                                 _hd226547226926_
                                                 _tl226546226928_
                                                 ___splice235641235642_
                                                 _target226549226931_
                                                 _tl226551226933_))
                                            (___match235676235677_
                                             _e226548226923_
                                             _hd226547226926_
                                             _tl226546226928_
                                             ___splice235641235642_
                                             _target226549226931_
                                             _tl226551226933_))))
                                    (___match235676235677_
                                     _e226548226923_
                                     _hd226547226926_
                                     _tl226546226928_
                                     ___splice235641235642_
                                     _target226549226931_
                                     _tl226551226933_))))
                            (___match235676235677_
                             _e226548226923_
                             _hd226547226926_
                             _tl226546226928_
                             ___splice235641235642_
                             _target226549226931_
                             _tl226551226933_))
                        (___match235676235677_
                         _e226548226923_
                         _hd226547226926_
                         _tl226546226928_
                         ___splice235641235642_
                         _target226549226931_
                         _tl226551226933_))
                    (___match235676235677_
                     _e226548226923_
                     _hd226547226926_
                     _tl226546226928_
                     ___splice235641235642_
                     _target226549226931_
                     _tl226551226933_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match235676235677_
                                                     _e226548226923_
                                                     _hd226547226926_
                                                     _tl226546226928_
                                                     ___splice235641235642_
                                                     _target226549226931_
                                                     _tl226551226933_))))
                                            (___match235676235677_
                                             _e226548226923_
                                             _hd226547226926_
                                             _tl226546226928_
                                             ___splice235641235642_
                                             _target226549226931_
                                             _tl226551226933_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop226552226936_ _target226549226931_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx235637235638_))
                  (let ((_e226548226923_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx235637235638_))))
                    (let ((_tl226546226928_
                           (let ()
                             (declare (not safe))
                             (##cdr _e226548226923_)))
                          (_hd226547226926_
                           (let ()
                             (declare (not safe))
                             (##car _e226548226923_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd226547226926_))
                          (let ((___splice235641235642_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd226547226926_
                                    '0))))
                            (let ((_tl226551226933_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice235641235642_ '1)))
                                  (_target226549226931_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice235641235642_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl226551226933_))
                                  (___match235664235665_
                                   _e226548226923_
                                   _hd226547226926_
                                   _tl226546226928_
                                   ___splice235641235642_
                                   _target226549226931_
                                   _tl226551226933_)
                                  (___match235676235677_
                                   _e226548226923_
                                   _hd226547226926_
                                   _tl226546226928_
                                   ___splice235641235642_
                                   _target226549226931_
                                   _tl226551226933_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl226546226928_))
                              (let ((_e226636226678_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl226546226928_))))
                                (let ((_tl226634226683_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e226636226678_)))
                                      (_hd226635226681_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e226636226678_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd226635226681_))
                                      (let ((_e226639226686_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd226635226681_))))
                                        (let ((_tl226637226691_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e226639226686_)))
                                              (_hd226638226689_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e226639226686_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd226638226689_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd226638226689_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl226637226691_))
                                                      (let ((_e226642226694_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl226637226691_))))
                (let ((_tl226640226699_
                       (let () (declare (not safe)) (##cdr _e226642226694_)))
                      (_hd226641226697_
                       (let () (declare (not safe)) (##car _e226642226694_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd226641226697_))
                      (let ((_e226645226702_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd226641226697_))))
                        (let ((_tl226643226707_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e226645226702_)))
                              (_hd226644226705_
                               (let ()
                                 (declare (not safe))
                                 (##car _e226645226702_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd226644226705_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd226644226705_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl226643226707_))
                                      (let ((_e226648226710_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl226643226707_))))
                                        (let ((_tl226646226715_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e226648226710_)))
                                              (_hd226647226713_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e226648226710_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl226646226715_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl226640226699_))
                                                  (let ((_e226651226718_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl226640226699_))))
                                                    (let ((_tl226649226723_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e226651226718_)))
                                                          (_hd226650226721_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e226651226718_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd226650226721_))
                                                          (let ((_e226654226726_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd226650226721_))))
                    (let ((_tl226652226731_
                           (let ()
                             (declare (not safe))
                             (##cdr _e226654226726_)))
                          (_hd226653226729_
                           (let ()
                             (declare (not safe))
                             (##car _e226654226726_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd226653226729_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd226653226729_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl226652226731_))
                                  (let ((_e226657226734_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl226652226731_))))
                                    (let ((_tl226655226739_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e226657226734_)))
                                          (_hd226656226737_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e226657226734_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl226655226739_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl226649226723_))
                                              (let ((_e226660226742_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl226649226723_))))
                                                (let ((_tl226658226747_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e226660226742_)))
                                                      (_hd226659226745_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e226660226742_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl226658226747_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl226634226683_))
                                                          (___kont235649235650_
                                                           _hd226656226737_
                                                           _hd226647226713_
                                                           _hd226547226926_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g226541226665_)))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g226541226665_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g226541226665_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g226541226665_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g226541226665_)))
                              (let () (declare (not safe)) (_g226541226665_)))
                          (let () (declare (not safe)) (_g226541226665_)))))
                  (let () (declare (not safe)) (_g226541226665_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g226541226665_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g226541226665_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g226541226665_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g226541226665_)))
                              (let ()
                                (declare (not safe))
                                (_g226541226665_)))))
                      (let () (declare (not safe)) (_g226541226665_)))))
              (let () (declare (not safe)) (_g226541226665_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g226541226665_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g226541226665_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g226541226665_)))))
                              (let ()
                                (declare (not safe))
                                (_g226541226665_))))))
                  (let () (declare (not safe)) (_g226541226665_))))))))
    (define gxc#lambda-form-arity
      (lambda (_form226341_)
        (let* ((_g226343226357_
                (lambda (_g226344226354_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g226344226354_))))
               (_g226342226534_
                (lambda (_g226344226360_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g226344226360_))
                      (let ((_e226349226362_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g226344226360_))))
                        (let ((_hd226348226365_
                               (let ()
                                 (declare (not safe))
                                 (##car _e226349226362_)))
                              (_tl226347226367_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e226349226362_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl226347226367_))
                              (let ((_e226352226370_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl226347226367_))))
                                (let ((_hd226351226373_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e226352226370_)))
                                      (_tl226350226375_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e226352226370_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl226350226375_))
                                      ((lambda (_L226378_ _L226379_)
                                         (let* ((___stx235759235760_ _L226379_)
                                                (_g226394226422_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx235759235760_)))))
                                           (let ((___kont235761235762_
                                                  (lambda (_L226513_)
                                                    (length (let ((__tmp236904
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g226523226526_ _g226524226528_)
                             (let ()
                               (declare (not safe))
                               (cons _g226523226526_ _g226524226528_)))))
                      (declare (not safe))
                      (foldr1 __tmp236904 '() _L226513_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont235765235766_
                                                  (lambda (_L226464_ _L226465_)
                                                    (let ((__tmp236905
                                                           (length (let ((__tmp236906
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g226476226479_ _g226477226481_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g226476226479_
                                            _g226477226481_)))))
                             (declare (not safe))
                             (foldr1 __tmp236906 '() _L226465_)))))
              (declare (not safe))
              (cons __tmp236905 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont235769235770_
                                                  (lambda (_L226427_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '())))))
                                             (let* ((___match235784235785_
                                                     (lambda (___splice235767235768_
                                                              _target226408226440_
                                                              _tl226410226442_)
                                                       (letrec ((_loop226411226445_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd226409226448_ _arg226415226450_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd226409226448_))
                               (let ((_e226412226453_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd226409226448_))))
                                 (let ((_lp-tl226414226458_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e226412226453_)))
                                       (_lp-hd226413226456_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e226412226453_))))
                                   (let ((__tmp236907
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd226413226456_
                                                  _arg226415226450_))))
                                     (declare (not safe))
                                     (_loop226411226445_
                                      _lp-tl226414226458_
                                      __tmp236907))))
                               (let ((_arg226416226461_
                                      (reverse _arg226415226450_)))
                                 (___kont235765235766_
                                  _tl226410226442_
                                  _arg226416226461_))))))
                 (let ()
                   (declare (not safe))
                   (_loop226411226445_ _target226408226440_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match235778235779_
                                                     (lambda (___splice235763235764_
                                                              _target226397226489_
                                                              _tl226399226491_)
                                                       (letrec ((_loop226400226494_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd226398226497_ _arg226404226499_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd226398226497_))
                               (let ((_e226401226502_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd226398226497_))))
                                 (let ((_lp-tl226403226507_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e226401226502_)))
                                       (_lp-hd226402226505_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e226401226502_))))
                                   (let ((__tmp236908
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd226402226505_
                                                  _arg226404226499_))))
                                     (declare (not safe))
                                     (_loop226400226494_
                                      _lp-tl226403226507_
                                      __tmp236908))))
                               (let ((_arg226405226510_
                                      (reverse _arg226404226499_)))
                                 (___kont235761235762_ _arg226405226510_))))))
                 (let ()
                   (declare (not safe))
                   (_loop226400226494_ _target226397226489_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair/null?
                                                      ___stx235759235760_))
                                                   (let ((___splice235763235764_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-split-splice
                                                             ___stx235759235760_
                                                             '0))))
                                                     (let ((_tl226399226491_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice235763235764_
                                                               '1)))
                                                           (_target226397226489_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice235763235764_
                                                               '0))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl226399226491_))
                                                           (___match235778235779_
                                                            ___splice235763235764_
                                                            _target226397226489_
                                                            _tl226399226491_)
                                                           (___match235784235785_
                                                            ___splice235763235764_
                                                            _target226397226489_
                                                            _tl226399226491_))))
                                                   (___kont235769235770_
                                                    ___stx235759235760_))))))
                                       _hd226351226373_
                                       _hd226348226365_)
                                      (let ()
                                        (declare (not safe))
                                        (_g226343226357_ _g226344226360_)))))
                              (let ()
                                (declare (not safe))
                                (_g226343226357_ _g226344226360_)))))
                      (let ()
                        (declare (not safe))
                        (_g226343226357_ _g226344226360_))))))
          (declare (not safe))
          (_g226342226534_ _form226341_))))
    (define gxc#lambda-expr?
      (lambda (_expr226294_)
        (let* ((___stx235787235788_ _expr226294_)
               (_g226297226307_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx235787235788_)))))
          (let ((___kont235789235790_ (lambda (_L226327_) '#t))
                (___kont235791235792_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx235787235788_))
                (let ((_e226302226319_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx235787235788_))))
                  (let ((_tl226300226324_
                         (let () (declare (not safe)) (##cdr _e226302226319_)))
                        (_hd226301226322_
                         (let ()
                           (declare (not safe))
                           (##car _e226302226319_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd226301226322_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#lambda _hd226301226322_))
                            (___kont235789235790_ _tl226300226324_)
                            (___kont235791235792_))
                        (___kont235791235792_))))
                (___kont235791235792_))))))
    (define gxc#case-lambda-expr?
      (lambda (_expr226247_)
        (let* ((___stx235805235806_ _expr226247_)
               (_g226250226260_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx235805235806_)))))
          (let ((___kont235807235808_ (lambda (_L226280_) '#t))
                (___kont235809235810_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx235805235806_))
                (let ((_e226255226272_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx235805235806_))))
                  (let ((_tl226253226277_
                         (let () (declare (not safe)) (##cdr _e226255226272_)))
                        (_hd226254226275_
                         (let ()
                           (declare (not safe))
                           (##car _e226255226272_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd226254226275_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#case-lambda _hd226254226275_))
                            (___kont235807235808_ _tl226253226277_)
                            (___kont235809235810_))
                        (___kont235809235810_))))
                (___kont235809235810_))))))
    (define gxc#opt-lambda-expr?
      (lambda (_expr226116_)
        (let* ((___stx235823235824_ _expr226116_)
               (_g226119226149_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx235823235824_)))))
          (let ((___kont235825235826_
                 (lambda (_L226217_ _L226218_ _L226219_)
                   (if (let () (declare (not safe)) (gx#identifier? _L226219_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#lambda-expr? _L226218_))
                           (let ()
                             (declare (not safe))
                             (gxc#case-lambda-expr? _L226217_))
                           '#f)
                       '#f)))
                (___kont235827235828_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx235823235824_))
                (let ((_e226126226161_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx235823235824_))))
                  (let ((_tl226124226166_
                         (let () (declare (not safe)) (##cdr _e226126226161_)))
                        (_hd226125226164_
                         (let ()
                           (declare (not safe))
                           (##car _e226126226161_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd226125226164_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd226125226164_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl226124226166_))
                                (let ((_e226129226169_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl226124226166_))))
                                  (let ((_tl226127226174_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e226129226169_)))
                                        (_hd226128226172_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e226129226169_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd226128226172_))
                                        (let ((_e226132226177_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd226128226172_))))
                                          (let ((_tl226130226182_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e226132226177_)))
                                                (_hd226131226180_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e226132226177_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd226131226180_))
                                                (let ((_e226135226185_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd226131226180_))))
                                                  (let ((_tl226133226190_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e226135226185_)))
                                                        (_hd226134226188_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e226135226185_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd226134226188_))
                                                        (let ((_e226138226193_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd226134226188_))))
                  (let ((_tl226136226198_
                         (let () (declare (not safe)) (##cdr _e226138226193_)))
                        (_hd226137226196_
                         (let ()
                           (declare (not safe))
                           (##car _e226138226193_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl226136226198_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl226133226190_))
                            (let ((_e226141226201_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl226133226190_))))
                              (let ((_tl226139226206_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e226141226201_)))
                                    (_hd226140226204_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e226141226201_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl226139226206_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl226130226182_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl226127226174_))
                                            (let ((_e226144226209_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl226127226174_))))
                                              (let ((_tl226142226214_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e226144226209_)))
                                                    (_hd226143226212_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e226144226209_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl226142226214_))
                                                    (___kont235825235826_
                                                     _hd226143226212_
                                                     _hd226140226204_
                                                     _hd226137226196_)
                                                    (___kont235827235828_))))
                                            (___kont235827235828_))
                                        (___kont235827235828_))
                                    (___kont235827235828_))))
                            (___kont235827235828_))
                        (___kont235827235828_))))
                (___kont235827235828_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont235827235828_))))
                                        (___kont235827235828_))))
                                (___kont235827235828_))
                            (___kont235827235828_))
                        (___kont235827235828_))))
                (___kont235827235828_))))))
    (define gxc#kw-lambda-expr?
      (lambda (_expr225441_)
        (let* ((___stx235885235886_ _expr225441_)
               (_g225444225602_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx235885235886_)))))
          (let ((___kont235887235888_
                 (lambda (_L225990_
                          _L225991_
                          _L225992_
                          _L225993_
                          _L225994_
                          _L225995_
                          _L225996_
                          _L225997_
                          _L225998_
                          _L225999_
                          _L226000_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#runtime-identifier=? _L225997_ 'apply))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L225993_ 'apply))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#runtime-identifier=?
                                  _L225992_
                                  'keyword-dispatch))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L226000_
                                      _L225991_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L225999_
                                          _L225996_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L225994_
                                              _L225990_))
                                           (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L225998_
                                              _L225995_))
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)))
                (___kont235889235890_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx235885235886_))
                (let ((_e225459225614_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx235885235886_))))
                  (let ((_tl225457225619_
                         (let () (declare (not safe)) (##cdr _e225459225614_)))
                        (_hd225458225617_
                         (let ()
                           (declare (not safe))
                           (##car _e225459225614_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd225458225617_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd225458225617_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl225457225619_))
                                (let ((_e225462225622_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl225457225619_))))
                                  (let ((_tl225460225627_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e225462225622_)))
                                        (_hd225461225625_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e225462225622_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd225461225625_))
                                        (let ((_e225465225630_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd225461225625_))))
                                          (let ((_tl225463225635_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e225465225630_)))
                                                (_hd225464225633_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e225465225630_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd225464225633_))
                                                (let ((_e225468225638_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd225464225633_))))
                                                  (let ((_tl225466225643_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e225468225638_)))
                                                        (_hd225467225641_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e225468225638_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd225467225641_))
                                                        (let ((_e225471225646_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd225467225641_))))
                  (let ((_tl225469225651_
                         (let () (declare (not safe)) (##cdr _e225471225646_)))
                        (_hd225470225649_
                         (let ()
                           (declare (not safe))
                           (##car _e225471225646_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl225469225651_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl225466225643_))
                            (let ((_e225474225654_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl225466225643_))))
                              (let ((_tl225472225659_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e225474225654_)))
                                    (_hd225473225657_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e225474225654_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd225473225657_))
                                    (let ((_e225477225662_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd225473225657_))))
                                      (let ((_tl225475225667_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e225477225662_)))
                                            (_hd225476225665_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e225477225662_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd225476225665_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#let-values
                                                   _hd225476225665_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl225475225667_))
                                                    (let ((_e225480225670_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl225475225667_))))
                                                      (let ((_tl225478225675_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e225480225670_)))
                    (_hd225479225673_
                     (let () (declare (not safe)) (##car _e225480225670_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd225479225673_))
                    (let ((_e225483225678_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd225479225673_))))
                      (let ((_tl225481225683_
                             (let ()
                               (declare (not safe))
                               (##cdr _e225483225678_)))
                            (_hd225482225681_
                             (let ()
                               (declare (not safe))
                               (##car _e225483225678_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd225482225681_))
                            (let ((_e225486225686_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd225482225681_))))
                              (let ((_tl225484225691_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e225486225686_)))
                                    (_hd225485225689_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e225486225686_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd225485225689_))
                                    (let ((_e225489225694_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd225485225689_))))
                                      (let ((_tl225487225699_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e225489225694_)))
                                            (_hd225488225697_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e225489225694_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl225487225699_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl225484225691_))
                                                (let ((_e225492225702_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl225484225691_))))
                                                  (let ((_tl225490225707_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e225492225702_)))
                                                        (_hd225491225705_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e225492225702_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl225490225707_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl225481225683_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl225478225675_))
                        (let ((_e225495225710_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl225478225675_))))
                          (let ((_tl225493225715_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e225495225710_)))
                                (_hd225494225713_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e225495225710_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd225494225713_))
                                (let ((_e225498225718_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd225494225713_))))
                                  (let ((_tl225496225723_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e225498225718_)))
                                        (_hd225497225721_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e225498225718_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd225497225721_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#lambda
                                               _hd225497225721_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl225496225723_))
                                                (let ((_e225501225726_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl225496225723_))))
                                                  (let ((_tl225499225731_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e225501225726_)))
                                                        (_hd225500225729_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e225501225726_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd225500225729_))
                                                        (let ((_e225504225734_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd225500225729_))))
                  (let ((_tl225502225739_
                         (let () (declare (not safe)) (##cdr _e225504225734_)))
                        (_hd225503225737_
                         (let ()
                           (declare (not safe))
                           (##car _e225504225734_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl225499225731_))
                        (let ((_e225507225742_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl225499225731_))))
                          (let ((_tl225505225747_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e225507225742_)))
                                (_hd225506225745_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e225507225742_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd225506225745_))
                                (let ((_e225510225750_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd225506225745_))))
                                  (let ((_tl225508225755_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e225510225750_)))
                                        (_hd225509225753_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e225510225750_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd225509225753_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#call
                                               _hd225509225753_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl225508225755_))
                                                (let ((_e225513225758_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl225508225755_))))
                                                  (let ((_tl225511225763_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e225513225758_)))
                                                        (_hd225512225761_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e225513225758_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd225512225761_))
                                                        (let ((_e225516225766_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd225512225761_))))
                  (let ((_tl225514225771_
                         (let () (declare (not safe)) (##cdr _e225516225766_)))
                        (_hd225515225769_
                         (let ()
                           (declare (not safe))
                           (##car _e225516225766_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd225515225769_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd225515225769_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl225514225771_))
                                (let ((_e225519225774_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl225514225771_))))
                                  (let ((_tl225517225779_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e225519225774_)))
                                        (_hd225518225777_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e225519225774_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl225517225779_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl225511225763_))
                                            (let ((_e225522225782_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl225511225763_))))
                                              (let ((_tl225520225787_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e225522225782_)))
                                                    (_hd225521225785_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e225522225782_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd225521225785_))
                                                    (let ((_e225525225790_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd225521225785_))))
                                                      (let ((_tl225523225795_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e225525225790_)))
                    (_hd225524225793_
                     (let () (declare (not safe)) (##car _e225525225790_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd225524225793_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd225524225793_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl225523225795_))
                            (let ((_e225528225798_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl225523225795_))))
                              (let ((_tl225526225803_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e225528225798_)))
                                    (_hd225527225801_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e225528225798_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl225526225803_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl225520225787_))
                                        (let ((_e225531225806_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl225520225787_))))
                                          (let ((_tl225529225811_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e225531225806_)))
                                                (_hd225530225809_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e225531225806_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd225530225809_))
                                                (let ((_e225534225814_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd225530225809_))))
                                                  (let ((_tl225532225819_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e225534225814_)))
                                                        (_hd225533225817_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e225534225814_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd225533225817_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd225533225817_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl225532225819_))
                        (let ((_e225537225822_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl225532225819_))))
                          (let ((_tl225535225827_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e225537225822_)))
                                (_hd225536225825_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e225537225822_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl225535225827_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl225505225747_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl225493225715_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl225472225659_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl225463225635_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl225460225627_))
                                                    (let ((_e225540225830_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl225460225627_))))
                                                      (let ((_tl225538225835_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e225540225830_)))
                    (_hd225539225833_
                     (let () (declare (not safe)) (##car _e225540225830_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd225539225833_))
                    (let ((_e225543225838_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd225539225833_))))
                      (let ((_tl225541225843_
                             (let ()
                               (declare (not safe))
                               (##cdr _e225543225838_)))
                            (_hd225542225841_
                             (let ()
                               (declare (not safe))
                               (##car _e225543225838_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd225542225841_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#lambda _hd225542225841_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl225541225843_))
                                    (let ((_e225546225846_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl225541225843_))))
                                      (let ((_tl225544225851_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e225546225846_)))
                                            (_hd225545225849_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e225546225846_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl225544225851_))
                                            (let ((_e225549225854_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl225544225851_))))
                                              (let ((_tl225547225859_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e225549225854_)))
                                                    (_hd225548225857_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e225549225854_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd225548225857_))
                                                    (let ((_e225552225862_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd225548225857_))))
                                                      (let ((_tl225550225867_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e225552225862_)))
                    (_hd225551225865_
                     (let () (declare (not safe)) (##car _e225552225862_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd225551225865_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd225551225865_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl225550225867_))
                            (let ((_e225555225870_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl225550225867_))))
                              (let ((_tl225553225875_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e225555225870_)))
                                    (_hd225554225873_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e225555225870_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd225554225873_))
                                    (let ((_e225558225878_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd225554225873_))))
                                      (let ((_tl225556225883_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e225558225878_)))
                                            (_hd225557225881_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e225558225878_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd225557225881_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd225557225881_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl225556225883_))
                                                    (let ((_e225561225886_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl225556225883_))))
                                                      (let ((_tl225559225891_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e225561225886_)))
                    (_hd225560225889_
                     (let () (declare (not safe)) (##car _e225561225886_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl225559225891_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl225553225875_))
                        (let ((_e225564225894_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl225553225875_))))
                          (let ((_tl225562225899_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e225564225894_)))
                                (_hd225563225897_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e225564225894_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd225563225897_))
                                (let ((_e225567225902_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd225563225897_))))
                                  (let ((_tl225565225907_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e225567225902_)))
                                        (_hd225566225905_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e225567225902_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd225566225905_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd225566225905_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl225565225907_))
                                                (let ((_e225570225910_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl225565225907_))))
                                                  (let ((_tl225568225915_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e225570225910_)))
                                                        (_hd225569225913_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e225570225910_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl225568225915_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl225562225899_))
                                                            (let ((_e225573225918_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl225562225899_))))
                      (let ((_tl225571225923_
                             (let ()
                               (declare (not safe))
                               (##cdr _e225573225918_)))
                            (_hd225572225921_
                             (let ()
                               (declare (not safe))
                               (##car _e225573225918_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd225572225921_))
                            (let ((_e225576225926_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd225572225921_))))
                              (let ((_tl225574225931_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e225576225926_)))
                                    (_hd225575225929_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e225576225926_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd225575225929_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd225575225929_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl225574225931_))
                                            (let ((_e225579225934_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl225574225931_))))
                                              (let ((_tl225577225939_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e225579225934_)))
                                                    (_hd225578225937_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e225579225934_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl225577225939_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl225571225923_))
                                                        (let ((_e225582225942_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl225571225923_))))
                  (let ((_tl225580225947_
                         (let () (declare (not safe)) (##cdr _e225582225942_)))
                        (_hd225581225945_
                         (let ()
                           (declare (not safe))
                           (##car _e225582225942_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd225581225945_))
                        (let ((_e225585225950_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd225581225945_))))
                          (let ((_tl225583225955_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e225585225950_)))
                                (_hd225584225953_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e225585225950_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd225584225953_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd225584225953_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl225583225955_))
                                        (let ((_e225588225958_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl225583225955_))))
                                          (let ((_tl225586225963_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e225588225958_)))
                                                (_hd225587225961_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e225588225958_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl225586225963_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl225580225947_))
                                                    (let ((_e225591225966_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl225580225947_))))
                                                      (let ((_tl225589225971_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e225591225966_)))
                    (_hd225590225969_
                     (let () (declare (not safe)) (##car _e225591225966_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd225590225969_))
                    (let ((_e225594225974_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd225590225969_))))
                      (let ((_tl225592225979_
                             (let ()
                               (declare (not safe))
                               (##cdr _e225594225974_)))
                            (_hd225593225977_
                             (let ()
                               (declare (not safe))
                               (##car _e225594225974_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd225593225977_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#ref _hd225593225977_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl225592225979_))
                                    (let ((_e225597225982_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl225592225979_))))
                                      (let ((_tl225595225987_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e225597225982_)))
                                            (_hd225596225985_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e225597225982_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl225595225987_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl225589225971_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl225547225859_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl225538225835_))
                                                        (___kont235887235888_
                                                         _hd225596225985_
                                                         _hd225587225961_
                                                         _hd225569225913_
                                                         _hd225560225889_
                                                         _hd225545225849_
                                                         _hd225536225825_
                                                         _hd225527225801_
                                                         _hd225518225777_
                                                         _hd225503225737_
                                                         _hd225488225697_
                                                         _hd225470225649_)
                                                        (___kont235889235890_))
                                                    (___kont235889235890_))
                                                (___kont235889235890_))
                                            (___kont235889235890_))))
                                    (___kont235889235890_))
                                (___kont235889235890_))
                            (___kont235889235890_))))
                    (___kont235889235890_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont235889235890_))
                                                (___kont235889235890_))))
                                        (___kont235889235890_))
                                    (___kont235889235890_))
                                (___kont235889235890_))))
                        (___kont235889235890_))))
                (___kont235889235890_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont235889235890_))))
                                            (___kont235889235890_))
                                        (___kont235889235890_))
                                    (___kont235889235890_))))
                            (___kont235889235890_))))
                    (___kont235889235890_))
                (___kont235889235890_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont235889235890_))
                                            (___kont235889235890_))
                                        (___kont235889235890_))))
                                (___kont235889235890_))))
                        (___kont235889235890_))
                    (___kont235889235890_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont235889235890_))
                                                (___kont235889235890_))
                                            (___kont235889235890_))))
                                    (___kont235889235890_))))
                            (___kont235889235890_))
                        (___kont235889235890_))
                    (___kont235889235890_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont235889235890_))))
                                            (___kont235889235890_))))
                                    (___kont235889235890_))
                                (___kont235889235890_))
                            (___kont235889235890_))))
                    (___kont235889235890_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont235889235890_))
                                                (___kont235889235890_))
                                            (___kont235889235890_))
                                        (___kont235889235890_))
                                    (___kont235889235890_))
                                (___kont235889235890_))))
                        (___kont235889235890_))
                    (___kont235889235890_))
                (___kont235889235890_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont235889235890_))))
                                        (___kont235889235890_))
                                    (___kont235889235890_))))
                            (___kont235889235890_))
                        (___kont235889235890_))
                    (___kont235889235890_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont235889235890_))))
                                            (___kont235889235890_))
                                        (___kont235889235890_))))
                                (___kont235889235890_))
                            (___kont235889235890_))
                        (___kont235889235890_))))
                (___kont235889235890_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont235889235890_))
                                            (___kont235889235890_))
                                        (___kont235889235890_))))
                                (___kont235889235890_))))
                        (___kont235889235890_))))
                (___kont235889235890_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont235889235890_))
                                            (___kont235889235890_))
                                        (___kont235889235890_))))
                                (___kont235889235890_))))
                        (___kont235889235890_))
                    (___kont235889235890_))
                (___kont235889235890_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont235889235890_))
                                            (___kont235889235890_))))
                                    (___kont235889235890_))))
                            (___kont235889235890_))))
                    (___kont235889235890_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont235889235890_))
                                                (___kont235889235890_))
                                            (___kont235889235890_))))
                                    (___kont235889235890_))))
                            (___kont235889235890_))
                        (___kont235889235890_))))
                (___kont235889235890_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont235889235890_))))
                                        (___kont235889235890_))))
                                (___kont235889235890_))
                            (___kont235889235890_))
                        (___kont235889235890_))))
                (___kont235889235890_))))))
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx225183_ _id225184_ _clauses225185_ _gensym?225186_)
        (let _lp225188_ ((_rest225190_ _clauses225185_)
                         (_ids225191_ '())
                         (_impls225192_ '())
                         (_clauses225193_ '()))
          (let* ((_rest225194225202_ _rest225190_)
                 (_else225196225210_
                  (lambda ()
                    (values (reverse _ids225191_)
                            (reverse _impls225192_)
                            (reverse _clauses225193_))))
                 (_K225198225415_
                  (lambda (_rest225213_ _clause225214_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#dispatch-lambda-form? _clause225214_))
                        (let ((__tmp236964
                               (let ()
                                 (declare (not safe))
                                 (cons _clause225214_ _clauses225193_))))
                          (declare (not safe))
                          (_lp225188_
                           _rest225213_
                           _ids225191_
                           _impls225192_
                           __tmp236964))
                        (let* ((_g225216225227_
                                (lambda (_g225217225224_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g225217225224_))))
                               (_g225215225412_
                                (lambda (_g225217225230_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _g225217225230_))
                                      (let ((_e225222225232_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _g225217225230_))))
                                        (let ((_hd225221225235_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e225222225232_)))
                                              (_tl225220225237_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e225222225232_))))
                                          ((lambda (_L225240_ _L225241_)
                                             (let* ((_id225258_
                                                     (let ((__tmp236911
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _id225184_)))
                                                           (__tmp236910
                                                            (length _clauses225193_))
                                                           (__tmp236909
                                                            (if _gensym?225186_
                                                                (gensym '__)
                                                                '"")))
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        __tmp236911
                                                        '"__"
                                                        __tmp236910
                                                        __tmp236909)))
                                                    (_id225260_
                                                     (let ((__tmp236912
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-source
                                                               _stx225183_))))
                                                       (declare (not safe))
                                                       (gx#core-quote-syntax__1
                                                        _id225258_
                                                        __tmp236912)))
                                                    (_impl225262_
                                                     (let ((__tmp236913
                                                            (let ((__tmp236915
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '%#lambda)))
                          (__tmp236914
                           (let ()
                             (declare (not safe))
                             (cons _L225241_ _L225240_))))
                      (declare (not safe))
                      (cons __tmp236915 __tmp236914))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp236913 _stx225183_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause225409_
                                                     (let* ((___stx236269236270_
                                                             _L225241_)
                                                            (_g225266225294_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx236269236270_)))))
               (let ((___kont236271236272_
                      (lambda (_L225388_)
                        (let ((__tmp236916
                               (let ((__tmp236917
                                      (let ((__tmp236918
                                             (let ((__tmp236919
                                                    (let ((__tmp236925
                                                           (let ((__tmp236926
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id225260_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp236926)))
                  (__tmp236920
                   (let ((__tmp236921
                          (lambda (_g225398225401_ _g225399225403_)
                            (let ((__tmp236922
                                   (let ((__tmp236924
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp236923
                                          (let ()
                                            (declare (not safe))
                                            (cons _g225398225401_ '()))))
                                     (declare (not safe))
                                     (cons __tmp236924 __tmp236923))))
                              (declare (not safe))
                              (cons __tmp236922 _g225399225403_)))))
                     (declare (not safe))
                     (foldr1 __tmp236921 '() _L225388_))))
              (declare (not safe))
              (cons __tmp236925 __tmp236920))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp236919))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp236918
                                         _stx225183_))))
                                 (declare (not safe))
                                 (cons __tmp236917 '()))))
                          (declare (not safe))
                          (cons _L225241_ __tmp236916))))
                     (___kont236275236276_
                      (lambda (_L225339_ _L225340_)
                        (let ((__tmp236927
                               (let ((__tmp236928
                                      (let ((__tmp236929
                                             (let ((__tmp236930
                                                    (let ((__tmp236944
                                                           (let ((__tmp236945
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp236945)))
                  (__tmp236931
                   (let ((__tmp236942
                          (let ((__tmp236943
                                 (let ()
                                   (declare (not safe))
                                   (cons _id225260_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp236943)))
                         (__tmp236932
                          (let ((__tmp236938
                                 (let ((__tmp236939
                                        (let ((__tmp236941
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)))
                                              (__tmp236940
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L225339_ '()))))
                                          (declare (not safe))
                                          (cons __tmp236941 __tmp236940))))
                                   (declare (not safe))
                                   (cons __tmp236939 '())))
                                (__tmp236933
                                 (let ((__tmp236934
                                        (lambda (_g225351225354_
                                                 _g225352225356_)
                                          (let ((__tmp236935
                                                 (let ((__tmp236937
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)))
                                                       (__tmp236936
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g225351225354_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp236937
                                                         __tmp236936))))
                                            (declare (not safe))
                                            (cons __tmp236935
                                                  _g225352225356_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp236934 '() _L225340_))))
                            (declare (not safe))
                            (foldr1 cons __tmp236938 __tmp236933))))
                     (declare (not safe))
                     (cons __tmp236942 __tmp236932))))
              (declare (not safe))
              (cons __tmp236944 __tmp236931))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp236930))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp236929
                                         _stx225183_))))
                                 (declare (not safe))
                                 (cons __tmp236928 '()))))
                          (declare (not safe))
                          (cons _L225241_ __tmp236927))))
                     (___kont236279236280_
                      (lambda (_L225299_)
                        (let ((__tmp236946
                               (let ((__tmp236947
                                      (let ((__tmp236948
                                             (let ((__tmp236949
                                                    (let ((__tmp236957
                                                           (let ((__tmp236958
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp236958)))
                  (__tmp236950
                   (let ((__tmp236955
                          (let ((__tmp236956
                                 (let ()
                                   (declare (not safe))
                                   (cons _id225260_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp236956)))
                         (__tmp236951
                          (let ((__tmp236952
                                 (let ((__tmp236954
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '%#ref)))
                                       (__tmp236953
                                        (let ()
                                          (declare (not safe))
                                          (cons _L225299_ '()))))
                                   (declare (not safe))
                                   (cons __tmp236954 __tmp236953))))
                            (declare (not safe))
                            (cons __tmp236952 '()))))
                     (declare (not safe))
                     (cons __tmp236955 __tmp236951))))
              (declare (not safe))
              (cons __tmp236957 __tmp236950))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp236949))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp236948
                                         _stx225183_))))
                                 (declare (not safe))
                                 (cons __tmp236947 '()))))
                          (declare (not safe))
                          (cons _L225241_ __tmp236946)))))
                 (let* ((___match236294236295_
                         (lambda (___splice236277236278_
                                  _target225280225315_
                                  _tl225282225317_)
                           (letrec ((_loop225283225320_
                                     (lambda (_hd225281225323_
                                              _arg225287225325_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd225281225323_))
                                           (let ((_e225284225328_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd225281225323_))))
                                             (let ((_lp-tl225286225333_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e225284225328_)))
                                                   (_lp-hd225285225331_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e225284225328_))))
                                               (let ((__tmp236959
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd225285225331_
                                                              _arg225287225325_))))
                                                 (declare (not safe))
                                                 (_loop225283225320_
                                                  _lp-tl225286225333_
                                                  __tmp236959))))
                                           (let ((_arg225288225336_
                                                  (reverse _arg225287225325_)))
                                             (___kont236275236276_
                                              _tl225282225317_
                                              _arg225288225336_))))))
                             (let ()
                               (declare (not safe))
                               (_loop225283225320_
                                _target225280225315_
                                '())))))
                        (___match236288236289_
                         (lambda (___splice236273236274_
                                  _target225269225364_
                                  _tl225271225366_)
                           (letrec ((_loop225272225369_
                                     (lambda (_hd225270225372_
                                              _arg225276225374_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd225270225372_))
                                           (let ((_e225273225377_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd225270225372_))))
                                             (let ((_lp-tl225275225382_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e225273225377_)))
                                                   (_lp-hd225274225380_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e225273225377_))))
                                               (let ((__tmp236960
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd225274225380_
                                                              _arg225276225374_))))
                                                 (declare (not safe))
                                                 (_loop225272225369_
                                                  _lp-tl225275225382_
                                                  __tmp236960))))
                                           (let ((_arg225277225385_
                                                  (reverse _arg225276225374_)))
                                             (___kont236271236272_
                                              _arg225277225385_))))))
                             (let ()
                               (declare (not safe))
                               (_loop225272225369_
                                _target225269225364_
                                '()))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? ___stx236269236270_))
                       (let ((___splice236273236274_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 ___stx236269236270_
                                 '0))))
                         (let ((_tl225271225366_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice236273236274_ '1)))
                               (_target225269225364_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice236273236274_ '0))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl225271225366_))
                               (___match236288236289_
                                ___splice236273236274_
                                _target225269225364_
                                _tl225271225366_)
                               (___match236294236295_
                                ___splice236273236274_
                                _target225269225364_
                                _tl225271225366_))))
                       (___kont236279236280_ ___stx236269236270_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp236963
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _id225260_
                                                              _ids225191_)))
                                                     (__tmp236962
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _impl225262_
                                                              _impls225192_)))
                                                     (__tmp236961
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _clause225409_
                                                              _clauses225193_))))
                                                 (declare (not safe))
                                                 (_lp225188_
                                                  _rest225213_
                                                  __tmp236963
                                                  __tmp236962
                                                  __tmp236961))))
                                           _tl225220225237_
                                           _hd225221225235_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g225216225227_ _g225217225230_))))))
                          (declare (not safe))
                          (_g225215225412_ _clause225214_))))))
            (if (let () (declare (not safe)) (##pair? _rest225194225202_))
                (let ((_hd225199225418_
                       (let ()
                         (declare (not safe))
                         (##car _rest225194225202_)))
                      (_tl225200225420_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest225194225202_))))
                  (let* ((_clause225423_ _hd225199225418_)
                         (_rest225425_ _tl225200225420_))
                    (declare (not safe))
                    (_K225198225415_ _rest225425_ _clause225423_)))
                (let () (declare (not safe)) (_else225196225210_)))))))
    (define gxc#lift-case-lambda-clauses__0
      (lambda (_stx225430_ _id225431_ _clauses225432_)
        (let ((_gensym?225434_ '#f))
          (declare (not safe))
          (gxc#lift-case-lambda-clauses__%
           _stx225430_
           _id225431_
           _clauses225432_
           _gensym?225434_))))
    (define gxc#lift-case-lambda-clauses
      (lambda _g236966_
        (let ((_g236965_ (let () (declare (not safe)) (##length _g236966_))))
          (cond ((let () (declare (not safe)) (##fx= _g236965_ 3))
                 (apply (lambda (_stx225430_ _id225431_ _clauses225432_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__0
                             _stx225430_
                             _id225431_
                             _clauses225432_)))
                        _g236966_))
                ((let () (declare (not safe)) (##fx= _g236965_ 4))
                 (apply (lambda (_stx225436_
                                 _id225437_
                                 _clauses225438_
                                 _gensym?225439_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__%
                             _stx225436_
                             _id225437_
                             _clauses225438_
                             _gensym?225439_)))
                        _g236966_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#lift-case-lambda-clauses
                  _g236966_))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_stx224460_)
        (letrec ((_case-lambda-clause-def224462_
                  (lambda (_id225179_ _impl225180_)
                    (let ((__tmp236967
                           (let ((__tmp236968
                                  (let ((__tmp236971
                                         (let ()
                                           (declare (not safe))
                                           (cons _id225179_ '())))
                                        (__tmp236969
                                         (let ((__tmp236970
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _impl225180_))))
                                           (declare (not safe))
                                           (cons __tmp236970 '()))))
                                    (declare (not safe))
                                    (cons __tmp236971 __tmp236969))))
                             (declare (not safe))
                             (cons '%#define-values __tmp236968))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp236967 _stx224460_))))
                 (_opt-lambda-dispatch-name224463_
                  (lambda (_id225175_)
                    (if (uninterned-symbol? _id225175_)
                        (let ((_str225177_ (symbol->string _id225175_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"opt-lambda" _str225177_))
                              '"%"
                              _id225175_))
                        _id225175_)))
                 (_kw-lambda-dispatch-name224464_
                  (lambda (_id225170_ _name225171_)
                    (if (uninterned-symbol? _id225170_)
                        (let ((_str225173_ (symbol->string _id225170_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"kw-lambda" _str225173_))
                              _name225171_
                              _id225170_))
                        _id225170_))))
          (let* ((___stx236317236318_ _stx224460_)
                 (_g224469224528_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx236317236318_)))))
            (let ((___kont236319236320_
                   (lambda (_L225079_ _L225080_)
                     (let* ((___stx236297236298_ _L225079_)
                            (_g225097225111_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx236297236298_)))))
                       (let ((___kont236299236300_
                              (lambda (_L225155_) _stx224460_))
                             (___kont236301236302_
                              (lambda (_L225124_)
                                (let ((_g236972_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#lift-case-lambda-clauses__0
                                          _stx224460_
                                          _L225080_
                                          _L225124_))))
                                  (begin
                                    (let ((_g236973_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g236972_)
                                                 (##vector-length _g236972_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g236973_ 3)))
                                          (error "Context expects 3 values"
                                                 _g236973_)))
                                    (let ((_ids225134_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g236972_ 0)))
                                          (_impls225135_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g236972_ 1)))
                                          (_clauses225136_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g236972_ 2))))
                                      (let* ((_g236974_
                                              (for-each
                                               gx#core-bind-runtime!
                                               _ids225134_))
                                             (_defs225139_
                                              (map _case-lambda-clause-def224462_
                                                   _ids225134_
                                                   _impls225135_)))
                                        (let ((__tmp236976
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L225080_)))
                                              (__tmp236975
                                               (map gxc#identifier-symbol
                                                    _ids225134_)))
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"lift case-lambda clauses "
                                           __tmp236976
                                           '" => "
                                           __tmp236975))
                                        (let ((__tmp236977
                                               (let ((__tmp236978
                                                      (let ((__tmp236979
                                                             (let ((__tmp236980
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp236981
                                   (let ((__tmp236982
                                          (let ((__tmp236987
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L225080_ '())))
                                                (__tmp236983
                                                 (let ((__tmp236984
                                                        (let ((__tmp236986
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '%#case-lambda _clauses225136_)))
                      (__tmp236985
                       (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp236986 __tmp236985))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp236984 '()))))
                                            (declare (not safe))
                                            (cons __tmp236987 __tmp236983))))
                                     (declare (not safe))
                                     (cons '%#define-values __tmp236982))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp236981
                               _stx224460_))))
                       (declare (not safe))
                       (cons __tmp236980 '()))))
                (declare (not safe))
                (foldr1 cons __tmp236979 _defs225139_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#begin __tmp236978))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp236977
                                           _stx224460_)))))))))
                         (let ((___match236308236309_
                                (lambda (_e225102225147_
                                         _hd225101225150_
                                         _tl225100225152_)
                                  (let ((_L225155_ _tl225100225152_))
                                    (if (let ()
                                          (declare (not safe))
                                          (andmap1 gxc#dispatch-lambda-form?
                                                   _L225155_))
                                        (___kont236299236300_ _L225155_)
                                        (___kont236301236302_
                                         _tl225100225152_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? ___stx236297236298_))
                               (let ((_e225102225147_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e ___stx236297236298_))))
                                 (let ((_tl225100225152_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e225102225147_)))
                                       (_hd225101225150_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e225102225147_))))
                                   (___match236308236309_
                                    _e225102225147_
                                    _hd225101225150_
                                    _tl225100225152_)))
                               (let ()
                                 (declare (not safe))
                                 (_g225097225111_))))))))
                  (___kont236321236322_
                   (lambda (_L224897_ _L224898_)
                     (let* ((_g224914224944_
                             (lambda (_g224915224941_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g224915224941_))))
                            (_g224913225039_
                             (lambda (_g224915224947_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g224915224947_))
                                   (let ((_e224921224949_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g224915224947_))))
                                     (let ((_hd224920224952_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e224921224949_)))
                                           (_tl224919224954_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e224921224949_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl224919224954_))
                                           (let ((_e224924224957_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl224919224954_))))
                                             (let ((_hd224923224960_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e224924224957_)))
                                                   (_tl224922224962_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e224924224957_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd224923224960_))
                                                   (let ((_e224927224965_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd224923224960_))))
                                                     (let ((_hd224926224968_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e224927224965_)))
                                                           (_tl224925224970_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e224927224965_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd224926224968_))
                                                           (let ((_e224930224973_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd224926224968_))))
                     (let ((_hd224929224976_
                            (let ()
                              (declare (not safe))
                              (##car _e224930224973_)))
                           (_tl224928224978_
                            (let ()
                              (declare (not safe))
                              (##cdr _e224930224973_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd224929224976_))
                           (let ((_e224933224981_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd224929224976_))))
                             (let ((_hd224932224984_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e224933224981_)))
                                   (_tl224931224986_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e224933224981_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl224931224986_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl224928224978_))
                                       (let ((_e224936224989_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl224928224978_))))
                                         (let ((_hd224935224992_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e224936224989_)))
                                               (_tl224934224994_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e224936224989_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl224934224994_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl224925224970_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl224922224962_))
                                                       (let ((_e224939224997_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl224922224962_))))
                 (let ((_hd224938225000_
                        (let () (declare (not safe)) (##car _e224939224997_)))
                       (_tl224937225002_
                        (let () (declare (not safe)) (##cdr _e224939224997_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl224937225002_))
                       ((lambda (_L225005_ _L225006_ _L225007_)
                          (let* ((_lambda-id225031_
                                  (let ((__tmp236990
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L224898_)))
                                        (__tmp236988
                                         (let ((__tmp236989
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L225007_))))
                                           (declare (not safe))
                                           (_opt-lambda-dispatch-name224463_
                                            __tmp236989))))
                                    (declare (not safe))
                                    (make-symbol__1
                                     __tmp236990
                                     '"__"
                                     __tmp236988)))
                                 (_lambda-id225033_
                                  (let ((__tmp236991
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-source _stx224460_))))
                                    (declare (not safe))
                                    (gx#core-quote-syntax__1
                                     _lambda-id225031_
                                     __tmp236991)))
                                 (_g236992_
                                  (let ()
                                    (declare (not safe))
                                    (gx#core-bind-runtime!__0
                                     _lambda-id225033_)))
                                 (_new-case-lambda-expr225036_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-expression-subst
                                     _L225005_
                                     _L225007_
                                     _lambda-id225033_))))
                            (let ((__tmp236994
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol _L224898_)))
                                  (__tmp236993
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol
                                      _lambda-id225033_))))
                              (declare (not safe))
                              (gxc#verbose
                               '"lift opt-lambda dispatch "
                               __tmp236994
                               '" => "
                               __tmp236993))
                            (let ((__tmp236995
                                   (let ((__tmp236996
                                          (let ((__tmp237004
                                                 (let ((__tmp237005
                                                        (let ((__tmp237006
                                                               (let ((__tmp237009
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _lambda-id225033_ '())))
                             (__tmp237007
                              (let ((__tmp237008
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L225006_))))
                                (declare (not safe))
                                (cons __tmp237008 '()))))
                         (declare (not safe))
                         (cons __tmp237009 __tmp237007))))
                  (declare (not safe))
                  (cons '%#define-values __tmp237006))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp237005
                                                    _stx224460_)))
                                                (__tmp236997
                                                 (let ((__tmp236998
                                                        (let ((__tmp236999
                                                               (let ((__tmp237000
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp237001
                                     (let ((__tmp237003
                                            (let ()
                                              (declare (not safe))
                                              (cons _L224898_ '())))
                                           (__tmp237002
                                            (let ()
                                              (declare (not safe))
                                              (cons _new-case-lambda-expr225036_
                                                    '()))))
                                       (declare (not safe))
                                       (cons __tmp237003 __tmp237002))))
                                (declare (not safe))
                                (cons '%#define-values __tmp237001))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp237000 _stx224460_))))
                  (declare (not safe))
                  (gxc#lift-top-lambda-define-values% __tmp236999))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp236998 '()))))
                                            (declare (not safe))
                                            (cons __tmp237004 __tmp236997))))
                                     (declare (not safe))
                                     (cons '%#begin __tmp236996))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp236995
                               _stx224460_))))
                        _hd224938225000_
                        _hd224935224992_
                        _hd224932224984_)
                       (let ()
                         (declare (not safe))
                         (_g224914224944_ _g224915224947_)))))
               (let () (declare (not safe)) (_g224914224944_ _g224915224947_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g224914224944_
                                                      _g224915224947_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g224914224944_
                                                  _g224915224947_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g224914224944_ _g224915224947_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g224914224944_ _g224915224947_)))))
                           (let ()
                             (declare (not safe))
                             (_g224914224944_ _g224915224947_)))))
                   (let ()
                     (declare (not safe))
                     (_g224914224944_ _g224915224947_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g224914224944_
                                                      _g224915224947_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g224914224944_
                                              _g224915224947_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g224914224944_ _g224915224947_))))))
                       (declare (not safe))
                       (_g224913225039_ _L224897_))))
                  (___kont236323236324_
                   (lambda (_L224611_ _L224612_)
                     (let* ((_g224628224681_
                             (lambda (_g224629224678_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g224629224678_))))
                            (_g224627224857_
                             (lambda (_g224629224684_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g224629224684_))
                                   (let ((_e224637224686_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g224629224684_))))
                                     (let ((_hd224636224689_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e224637224686_)))
                                           (_tl224635224691_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e224637224686_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl224635224691_))
                                           (let ((_e224640224694_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl224635224691_))))
                                             (let ((_hd224639224697_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e224640224694_)))
                                                   (_tl224638224699_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e224640224694_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd224639224697_))
                                                   (let ((_e224643224702_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd224639224697_))))
                                                     (let ((_hd224642224705_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e224643224702_)))
                                                           (_tl224641224707_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e224643224702_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd224642224705_))
                                                           (let ((_e224646224710_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd224642224705_))))
                     (let ((_hd224645224713_
                            (let ()
                              (declare (not safe))
                              (##car _e224646224710_)))
                           (_tl224644224715_
                            (let ()
                              (declare (not safe))
                              (##cdr _e224646224710_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd224645224713_))
                           (let ((_e224649224718_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd224645224713_))))
                             (let ((_hd224648224721_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e224649224718_)))
                                   (_tl224647224723_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e224649224718_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl224647224723_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl224644224715_))
                                       (let ((_e224652224726_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl224644224715_))))
                                         (let ((_hd224651224729_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e224652224726_)))
                                               (_tl224650224731_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e224652224726_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd224651224729_))
                                               (let ((_e224655224734_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd224651224729_))))
                                                 (let ((_hd224654224737_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e224655224734_)))
                                                       (_tl224653224739_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e224655224734_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl224653224739_))
                                                       (let ((_e224658224742_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl224653224739_))))
                 (let ((_hd224657224745_
                        (let () (declare (not safe)) (##car _e224658224742_)))
                       (_tl224656224747_
                        (let () (declare (not safe)) (##cdr _e224658224742_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _hd224657224745_))
                       (let ((_e224661224750_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _hd224657224745_))))
                         (let ((_hd224660224753_
                                (let ()
                                  (declare (not safe))
                                  (##car _e224661224750_)))
                               (_tl224659224755_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e224661224750_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd224660224753_))
                               (let ((_e224664224758_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd224660224753_))))
                                 (let ((_hd224663224761_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e224664224758_)))
                                       (_tl224662224763_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e224664224758_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd224663224761_))
                                       (let ((_e224667224766_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd224663224761_))))
                                         (let ((_hd224666224769_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e224667224766_)))
                                               (_tl224665224771_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e224667224766_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl224665224771_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl224662224763_))
                                                   (let ((_e224670224774_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl224662224763_))))
                                                     (let ((_hd224669224777_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e224670224774_)))
                                                           (_tl224668224779_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e224670224774_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl224668224779_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-null? _tl224659224755_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl224656224747_))
                           (let ((_e224673224782_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl224656224747_))))
                             (let ((_hd224672224785_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e224673224782_)))
                                   (_tl224671224787_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e224673224782_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl224671224787_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl224650224731_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl224641224707_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl224638224699_))
                                               (let ((_e224676224790_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl224638224699_))))
                                                 (let ((_hd224675224793_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e224676224790_)))
                                                       (_tl224674224795_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e224676224790_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl224674224795_))
                                                       ((lambda (_L224798_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L224799_
                         _L224800_
                         _L224801_
                         _L224802_)
                  (let* ((_get-kws-id224842_
                          (let ((__tmp237012
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L224612_)))
                                (__tmp237010
                                 (let ((__tmp237011
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L224802_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name224464_
                                    __tmp237011
                                    '"@"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp237012 '"__" __tmp237010)))
                         (_get-kws-id224844_
                          (let ((__tmp237013
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx224460_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _get-kws-id224842_
                             __tmp237013)))
                         (_main-id224846_
                          (let ((__tmp237016
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L224612_)))
                                (__tmp237014
                                 (let ((__tmp237015
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L224801_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name224464_
                                    __tmp237015
                                    '"%"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp237016 '"__" __tmp237014)))
                         (_main-id224848_
                          (let ((__tmp237017
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx224460_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _main-id224846_
                             __tmp237017)))
                         (_g237018_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _get-kws-id224844_)))
                         (_g237019_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _main-id224848_)))
                         (_new-kw-dispatch224852_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L224798_
                             _L224802_
                             _get-kws-id224844_)))
                         (_new-get-kws224854_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L224799_
                             _L224801_
                             _main-id224848_))))
                    (let ((__tmp237022
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L224612_)))
                          (__tmp237021
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _get-kws-id224844_)))
                          (__tmp237020
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _main-id224848_))))
                      (declare (not safe))
                      (gxc#verbose
                       '"lift kw-lambda dispatch "
                       __tmp237022
                       '" => "
                       __tmp237021
                       '" => "
                       __tmp237020))
                    (let ((__tmp237023
                           (let ((__tmp237024
                                  (let ((__tmp237037
                                         (let ((__tmp237038
                                                (let ((__tmp237039
                                                       (let ((__tmp237040
                                                              (let ((__tmp237042
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _main-id224848_ '())))
                            (__tmp237041
                             (let ()
                               (declare (not safe))
                               (cons _L224800_ '()))))
                        (declare (not safe))
                        (cons __tmp237042 __tmp237041))))
                 (declare (not safe))
                 (cons '%#define-values __tmp237040))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp237039
                                                   _stx224460_))))
                                           (declare (not safe))
                                           (gxc#lift-top-lambda-define-values%
                                            __tmp237038)))
                                        (__tmp237025
                                         (let ((__tmp237032
                                                (let ((__tmp237033
                                                       (let ((__tmp237034
                                                              (let ((__tmp237036
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _get-kws-id224844_ '())))
                            (__tmp237035
                             (let ()
                               (declare (not safe))
                               (cons _new-get-kws224854_ '()))))
                        (declare (not safe))
                        (cons __tmp237036 __tmp237035))))
                 (declare (not safe))
                 (cons '%#define-values __tmp237034))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp237033
                                                   _stx224460_)))
                                               (__tmp237026
                                                (let ((__tmp237027
                                                       (let ((__tmp237028
                                                              (let ((__tmp237029
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp237031
                                    (let ()
                                      (declare (not safe))
                                      (cons _L224612_ '())))
                                   (__tmp237030
                                    (let ()
                                      (declare (not safe))
                                      (cons _new-kw-dispatch224852_ '()))))
                               (declare (not safe))
                               (cons __tmp237031 __tmp237030))))
                        (declare (not safe))
                        (cons '%#define-values __tmp237029))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp237028 _stx224460_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp237027 '()))))
                                           (declare (not safe))
                                           (cons __tmp237032 __tmp237026))))
                                    (declare (not safe))
                                    (cons __tmp237037 __tmp237025))))
                             (declare (not safe))
                             (cons '%#begin __tmp237024))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp237023 _stx224460_))))
                _hd224675224793_
                _hd224672224785_
                _hd224669224777_
                _hd224666224769_
                _hd224648224721_)
               (let ()
                 (declare (not safe))
                 (_g224628224681_ _g224629224684_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g224628224681_
                                                  _g224629224684_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g224628224681_
                                              _g224629224684_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g224628224681_ _g224629224684_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g224628224681_ _g224629224684_)))))
                           (let ()
                             (declare (not safe))
                             (_g224628224681_ _g224629224684_)))
                       (let ()
                         (declare (not safe))
                         (_g224628224681_ _g224629224684_)))
                   (let ()
                     (declare (not safe))
                     (_g224628224681_ _g224629224684_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g224628224681_
                                                      _g224629224684_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g224628224681_
                                                  _g224629224684_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g224628224681_ _g224629224684_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g224628224681_ _g224629224684_)))))
                       (let ()
                         (declare (not safe))
                         (_g224628224681_ _g224629224684_)))))
               (let ()
                 (declare (not safe))
                 (_g224628224681_ _g224629224684_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g224628224681_
                                                  _g224629224684_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g224628224681_ _g224629224684_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g224628224681_ _g224629224684_)))))
                           (let ()
                             (declare (not safe))
                             (_g224628224681_ _g224629224684_)))))
                   (let ()
                     (declare (not safe))
                     (_g224628224681_ _g224629224684_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g224628224681_
                                                      _g224629224684_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g224628224681_
                                              _g224629224684_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g224628224681_ _g224629224684_))))))
                       (declare (not safe))
                       (_g224627224857_ _L224611_))))
                  (___kont236325236326_
                   (lambda (_L224557_ _L224558_)
                     (let ((__tmp237043
                            (let ((__tmp237044
                                   (let ((__tmp237045
                                          (let ((__tmp237046
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L224557_))))
                                            (declare (not safe))
                                            (cons __tmp237046 '()))))
                                     (declare (not safe))
                                     (cons _L224558_ __tmp237045))))
                              (declare (not safe))
                              (cons '%#define-values __tmp237044))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp237043 _stx224460_)))))
              (let* ((___match236410236411_
                      (lambda (_e224503224579_
                               _hd224502224582_
                               _tl224501224584_
                               _e224506224587_
                               _hd224505224590_
                               _tl224504224592_
                               _e224509224595_
                               _hd224508224598_
                               _tl224507224600_
                               _e224512224603_
                               _hd224511224606_
                               _tl224510224608_)
                        (let ((_L224611_ _hd224511224606_)
                              (_L224612_ _hd224508224598_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L224612_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L224611_)))
                              (___kont236323236324_ _L224611_ _L224612_)
                              (___kont236325236326_
                               _hd224511224606_
                               _hd224505224590_)))))
                     (___match236382236383_
                      (lambda (_e224489224865_
                               _hd224488224868_
                               _tl224487224870_
                               _e224492224873_
                               _hd224491224876_
                               _tl224490224878_
                               _e224495224881_
                               _hd224494224884_
                               _tl224493224886_
                               _e224498224889_
                               _hd224497224892_
                               _tl224496224894_)
                        (let ((_L224897_ _hd224497224892_)
                              (_L224898_ _hd224494224884_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L224898_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr? _L224897_)))
                              (___kont236321236322_ _L224897_ _L224898_)
                              (___match236410236411_
                               _e224489224865_
                               _hd224488224868_
                               _tl224487224870_
                               _e224492224873_
                               _hd224491224876_
                               _tl224490224878_
                               _e224495224881_
                               _hd224494224884_
                               _tl224493224886_
                               _e224498224889_
                               _hd224497224892_
                               _tl224496224894_)))))
                     (___match236354236355_
                      (lambda (_e224475225047_
                               _hd224474225050_
                               _tl224473225052_
                               _e224478225055_
                               _hd224477225058_
                               _tl224476225060_
                               _e224481225063_
                               _hd224480225066_
                               _tl224479225068_
                               _e224484225071_
                               _hd224483225074_
                               _tl224482225076_)
                        (let ((_L225079_ _hd224483225074_)
                              (_L225080_ _hd224480225066_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L225080_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#case-lambda-expr? _L225079_)))
                              (___kont236319236320_ _L225079_ _L225080_)
                              (___match236382236383_
                               _e224475225047_
                               _hd224474225050_
                               _tl224473225052_
                               _e224478225055_
                               _hd224477225058_
                               _tl224476225060_
                               _e224481225063_
                               _hd224480225066_
                               _tl224479225068_
                               _e224484225071_
                               _hd224483225074_
                               _tl224482225076_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx236317236318_))
                    (let ((_e224475225047_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx236317236318_))))
                      (let ((_tl224473225052_
                             (let ()
                               (declare (not safe))
                               (##cdr _e224475225047_)))
                            (_hd224474225050_
                             (let ()
                               (declare (not safe))
                               (##car _e224475225047_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl224473225052_))
                            (let ((_e224478225055_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl224473225052_))))
                              (let ((_tl224476225060_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e224478225055_)))
                                    (_hd224477225058_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e224478225055_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd224477225058_))
                                    (let ((_e224481225063_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd224477225058_))))
                                      (let ((_tl224479225068_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e224481225063_)))
                                            (_hd224480225066_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e224481225063_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl224479225068_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl224476225060_))
                                                (let ((_e224484225071_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl224476225060_))))
                                                  (let ((_tl224482225076_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e224484225071_)))
                                                        (_hd224483225074_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e224484225071_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl224482225076_))
                                                        (___match236354236355_
                                                         _e224475225047_
                                                         _hd224474225050_
                                                         _tl224473225052_
                                                         _e224478225055_
                                                         _hd224477225058_
                                                         _tl224476225060_
                                                         _e224481225063_
                                                         _hd224480225066_
                                                         _tl224479225068_
                                                         _e224484225071_
                                                         _hd224483225074_
                                                         _tl224482225076_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g224469224528_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g224469224528_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl224476225060_))
                                                (let ((_e224523224549_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl224476225060_))))
                                                  (let ((_tl224521224554_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e224523224549_)))
                                                        (_hd224522224552_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e224523224549_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl224521224554_))
                                                        (___kont236325236326_
                                                         _hd224522224552_
                                                         _hd224477225058_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g224469224528_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g224469224528_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl224476225060_))
                                        (let ((_e224523224549_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl224476225060_))))
                                          (let ((_tl224521224554_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e224523224549_)))
                                                (_hd224522224552_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e224523224549_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl224521224554_))
                                                (___kont236325236326_
                                                 _hd224522224552_
                                                 _hd224477225058_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g224469224528_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g224469224528_))))))
                            (let () (declare (not safe)) (_g224469224528_)))))
                    (let () (declare (not safe)) (_g224469224528_)))))))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_stx223392_)
        (letrec* ((_bind-e__234713234714_
                   (lambda (_id224444_ _expr224445_ _compile?224446_)
                     (let ((__tmp237049
                            (let ()
                              (declare (not safe))
                              (cons _id224444_ '())))
                           (__tmp237047
                            (let ((__tmp237048
                                   (if _compile?224446_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr224445_))
                                       _expr224445_)))
                              (declare (not safe))
                              (cons __tmp237048 '()))))
                       (declare (not safe))
                       (cons __tmp237049 __tmp237047))))
                  (_bind-e__0__234715234716_
                   (lambda (_id224451_ _expr224452_)
                     (let ((_compile?224454_ '#t))
                       (declare (not safe))
                       (_bind-e__234713234714_
                        _id224451_
                        _expr224452_
                        _compile?224454_))))
                  (_bind-e223394_
                   (lambda _g237051_
                     (let ((_g237050_
                            (let ()
                              (declare (not safe))
                              (##length _g237051_))))
                       (cond ((let () (declare (not safe)) (##fx= _g237050_ 2))
                              (apply (lambda (_id224451_ _expr224452_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__234715234716_
                                          _id224451_
                                          _expr224452_)))
                                     _g237051_))
                             ((let () (declare (not safe)) (##fx= _g237050_ 3))
                              (apply (lambda (_id224456_
                                              _expr224457_
                                              _compile?224458_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__234713234714_
                                          _id224456_
                                          _expr224457_
                                          _compile?224458_)))
                                     _g237051_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g237051_))))))
                  (_compile-bindings223395_
                   (lambda (_bindings224028_)
                     (let _lp224030_ ((_rest224032_ _bindings224028_)
                                      (_lift1224033_ '())
                                      (_lift2224034_ '())
                                      (_bind224035_ '()))
                       (let* ((_rest224036224044_ _rest224032_)
                              (_else224038224052_
                               (lambda ()
                                 (values (reverse _lift1224033_)
                                         (reverse _lift2224034_)
                                         (reverse _bind224035_))))
                              (_K224040224431_
                               (lambda (_rest224055_ _hd224056_)
                                 (let* ((___stx236453236454_ _hd224056_)
                                        (_g224060224096_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx236453236454_)))))
                                   (let ((___kont236455236456_
                                          (lambda (_L224338_ _L224339_)
                                            (let* ((___stx236433236434_
                                                    _L224338_)
                                                   (_g224354224368_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx236433236434_)))))
                                              (let ((___kont236435236436_
                                                     (lambda (_L224416_)
                                                       (let ((__tmp237052
                                                              (let ((__tmp237053
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__234713234714_
                                _L224339_
                                _L224338_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp237053 _bind224035_))))
                 (declare (not safe))
                 (_lp224030_
                  _rest224055_
                  _lift1224033_
                  _lift2224034_
                  __tmp237052))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont236437236438_
                                                     (lambda (_L224381_)
                                                       (let ((_g237054_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx223392_
                         _L224339_
                         _L224381_
                         '#t))))
                 (begin
                   (let ((_g237055_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g237054_)
                                (##vector-length _g237054_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g237055_ 3)))
                         (error "Context expects 3 values" _g237055_)))
                   (let ((_ids224391_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g237054_ 0)))
                         (_impls224392_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g237054_ 1)))
                         (_clauses224393_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g237054_ 2))))
                     (let* ((_g237056_
                             (for-each gx#core-bind-runtime! _ids224391_))
                            (_xbind224396_
                             (map _bind-e223394_ _ids224391_ _impls224392_))
                            (_expr*224398_
                             (let ((__tmp237058
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses224393_)))
                                   (__tmp237057
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp237058
                                __tmp237057)))
                            (_bind*224400_
                             (let ()
                               (declare (not safe))
                               (_bind-e__234713234714_
                                _L224339_
                                _expr*224398_
                                '#f))))
                       (let ((__tmp237060
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L224339_)))
                             (__tmp237059
                              (map gxc#identifier-symbol _ids224391_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp237060
                          '" => "
                          __tmp237059))
                       (let ((__tmp237062
                              (let ()
                                (declare (not safe))
                                (foldl1 cons _lift2224034_ _xbind224396_)))
                             (__tmp237061
                              (let ()
                                (declare (not safe))
                                (cons _bind*224400_ _bind224035_))))
                         (declare (not safe))
                         (_lp224030_
                          _rest224055_
                          _lift1224033_
                          __tmp237062
                          __tmp237061)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match236444236445_
                                                       (lambda (_e224359224408_
                                                                _hd224358224411_
                                                                _tl224357224413_)
                                                         (let ((_L224416_
                                                                _tl224357224413_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L224416_))
                       (___kont236435236436_ _L224416_)
                       (___kont236437236438_ _tl224357224413_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx236433236434_))
                                                      (let ((_e224359224408_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx236433236434_))))
                (let ((_tl224357224413_
                       (let () (declare (not safe)) (##cdr _e224359224408_)))
                      (_hd224358224411_
                       (let () (declare (not safe)) (##car _e224359224408_))))
                  (___match236444236445_
                   _e224359224408_
                   _hd224358224411_
                   _tl224357224413_)))
              (let () (declare (not safe)) (_g224354224368_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont236457236458_
                                          (lambda (_L224166_ _L224167_)
                                            (let* ((_g224181224211_
                                                    (lambda (_g224182224208_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g224182224208_))))
                                                   (_g224180224306_
                                                    (lambda (_g224182224214_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g224182224214_))
                                                          (let ((_e224188224216_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g224182224214_))))
                    (let ((_hd224187224219_
                           (let ()
                             (declare (not safe))
                             (##car _e224188224216_)))
                          (_tl224186224221_
                           (let ()
                             (declare (not safe))
                             (##cdr _e224188224216_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl224186224221_))
                          (let ((_e224191224224_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl224186224221_))))
                            (let ((_hd224190224227_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e224191224224_)))
                                  (_tl224189224229_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e224191224224_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd224190224227_))
                                  (let ((_e224194224232_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd224190224227_))))
                                    (let ((_hd224193224235_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e224194224232_)))
                                          (_tl224192224237_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e224194224232_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd224193224235_))
                                          (let ((_e224197224240_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd224193224235_))))
                                            (let ((_hd224196224243_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e224197224240_)))
                                                  (_tl224195224245_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e224197224240_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd224196224243_))
                                                  (let ((_e224200224248_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd224196224243_))))
                                                    (let ((_hd224199224251_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e224200224248_)))
                                                          (_tl224198224253_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e224200224248_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl224198224253_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl224195224245_))
                      (let ((_e224203224256_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl224195224245_))))
                        (let ((_hd224202224259_
                               (let ()
                                 (declare (not safe))
                                 (##car _e224203224256_)))
                              (_tl224201224261_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e224203224256_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl224201224261_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl224192224237_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl224189224229_))
                                      (let ((_e224206224264_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl224189224229_))))
                                        (let ((_hd224205224267_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e224206224264_)))
                                              (_tl224204224269_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e224206224264_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl224204224269_))
                                              ((lambda (_L224272_
                                                        _L224273_
                                                        _L224274_)
                                                 (let* ((_lambda-id224298_
                                                         (let ((__tmp237064
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L224167_)))
                       (__tmp237063 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp237064 __tmp237063)))
                (_lambda-id224300_
                 (let ((__tmp237065
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx223392_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id224298_ __tmp237065)))
                (_g237066_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id224300_)))
                (_new-case-lambda-expr224303_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L224272_
                    _L224274_
                    _lambda-id224300_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp237068
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L224167_)))
                                                         (__tmp237067
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id224300_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp237068
                                                      '" => "
                                                      __tmp237067))
                                                   (let ((__tmp237071
                                                          (let ((__tmp237072
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__234713234714_
                            _L224167_
                            _new-case-lambda-expr224303_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp237072 _rest224055_)))
                 (__tmp237069
                  (let ((__tmp237070
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__234715234716_
                            _lambda-id224300_
                            _L224273_))))
                    (declare (not safe))
                    (cons __tmp237070 _lift1224033_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp224030_
                                                      __tmp237071
                                                      __tmp237069
                                                      _lift2224034_
                                                      _bind224035_))))
                                               _hd224205224267_
                                               _hd224202224259_
                                               _hd224199224251_)
                                              (let ()
                                                (declare (not safe))
                                                (_g224181224211_
                                                 _g224182224214_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g224181224211_ _g224182224214_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g224181224211_ _g224182224214_)))
                              (let ()
                                (declare (not safe))
                                (_g224181224211_ _g224182224214_)))))
                      (let ()
                        (declare (not safe))
                        (_g224181224211_ _g224182224214_)))
                  (let ()
                    (declare (not safe))
                    (_g224181224211_ _g224182224214_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g224181224211_
                                                     _g224182224214_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g224181224211_
                                             _g224182224214_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g224181224211_ _g224182224214_)))))
                          (let ()
                            (declare (not safe))
                            (_g224181224211_ _g224182224214_)))))
                  (let ()
                    (declare (not safe))
                    (_g224181224211_ _g224182224214_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g224180224306_ _L224166_))))
                                         (___kont236459236460_
                                          (lambda (_L224117_ _L224118_)
                                            (let ((__tmp237073
                                                   (let ((__tmp237074
                                                          (let ((__tmp237075
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp237076
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L224117_))))
                           (declare (not safe))
                           (cons __tmp237076 '()))))
                    (declare (not safe))
                    (cons _L224118_ __tmp237075))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp237074
                                                           _bind224035_))))
                                              (declare (not safe))
                                              (_lp224030_
                                               _rest224055_
                                               _lift1224033_
                                               _lift2224034_
                                               __tmp237073)))))
                                     (let* ((___match236504236505_
                                             (lambda (_e224077224142_
                                                      _hd224076224145_
                                                      _tl224075224147_
                                                      _e224080224150_
                                                      _hd224079224153_
                                                      _tl224078224155_
                                                      _e224083224158_
                                                      _hd224082224161_
                                                      _tl224081224163_)
                                               (let ((_L224166_
                                                      _hd224082224161_)
                                                     (_L224167_
                                                      _hd224079224153_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L224167_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L224166_)))
                                                     (___kont236457236458_
                                                      _L224166_
                                                      _L224167_)
                                                     (___kont236459236460_
                                                      _hd224082224161_
                                                      _hd224076224145_)))))
                                            (___match236482236483_
                                             (lambda (_e224066224314_
                                                      _hd224065224317_
                                                      _tl224064224319_
                                                      _e224069224322_
                                                      _hd224068224325_
                                                      _tl224067224327_
                                                      _e224072224330_
                                                      _hd224071224333_
                                                      _tl224070224335_)
                                               (let ((_L224338_
                                                      _hd224071224333_)
                                                     (_L224339_
                                                      _hd224068224325_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L224339_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L224338_)))
                                                     (___kont236455236456_
                                                      _L224338_
                                                      _L224339_)
                                                     (___match236504236505_
                                                      _e224066224314_
                                                      _hd224065224317_
                                                      _tl224064224319_
                                                      _e224069224322_
                                                      _hd224068224325_
                                                      _tl224067224327_
                                                      _e224072224330_
                                                      _hd224071224333_
                                                      _tl224070224335_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx236453236454_))
                                           (let ((_e224066224314_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx236453236454_))))
                                             (let ((_tl224064224319_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e224066224314_)))
                                                   (_hd224065224317_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e224066224314_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd224065224317_))
                                                   (let ((_e224069224322_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd224065224317_))))
                                                     (let ((_tl224067224327_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e224069224322_)))
                                                           (_hd224068224325_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e224069224322_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl224067224327_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl224064224319_))
                       (let ((_e224072224330_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl224064224319_))))
                         (let ((_tl224070224335_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e224072224330_)))
                               (_hd224071224333_
                                (let ()
                                  (declare (not safe))
                                  (##car _e224072224330_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl224070224335_))
                               (___match236482236483_
                                _e224066224314_
                                _hd224065224317_
                                _tl224064224319_
                                _e224069224322_
                                _hd224068224325_
                                _tl224067224327_
                                _e224072224330_
                                _hd224071224333_
                                _tl224070224335_)
                               (let ()
                                 (declare (not safe))
                                 (_g224060224096_)))))
                       (let () (declare (not safe)) (_g224060224096_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl224064224319_))
                       (let ((_e224091224109_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl224064224319_))))
                         (let ((_tl224089224114_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e224091224109_)))
                               (_hd224090224112_
                                (let ()
                                  (declare (not safe))
                                  (##car _e224091224109_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl224089224114_))
                               (___kont236459236460_
                                _hd224090224112_
                                _hd224065224317_)
                               (let ()
                                 (declare (not safe))
                                 (_g224060224096_)))))
                       (let () (declare (not safe)) (_g224060224096_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl224064224319_))
                                                       (let ((_e224091224109_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl224064224319_))))
                 (let ((_tl224089224114_
                        (let () (declare (not safe)) (##cdr _e224091224109_)))
                       (_hd224090224112_
                        (let () (declare (not safe)) (##car _e224091224109_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl224089224114_))
                       (___kont236459236460_ _hd224090224112_ _hd224065224317_)
                       (let () (declare (not safe)) (_g224060224096_)))))
               (let () (declare (not safe)) (_g224060224096_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g224060224096_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest224036224044_))
                             (let ((_hd224041224434_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest224036224044_)))
                                   (_tl224042224436_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest224036224044_))))
                               (let* ((_hd224439_ _hd224041224434_)
                                      (_rest224441_ _tl224042224436_))
                                 (declare (not safe))
                                 (_K224040224431_ _rest224441_ _hd224439_)))
                             (let ()
                               (declare (not safe))
                               (_else224038224052_)))))))
                  (_lift-kw-lambda?223396_
                   (lambda (_bind223952_)
                     (let* ((___stx236521236522_ _bind223952_)
                            (_g223955223972_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx236521236522_)))))
                       (let ((___kont236523236524_
                              (lambda (_L224008_ _L224009_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _L224009_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#kw-lambda-expr? _L224008_))
                                    '#f)))
                             (___kont236525236526_ (lambda () '#f)))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? ___stx236521236522_))
                             (let ((_e223961223984_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e ___stx236521236522_))))
                               (let ((_tl223959223989_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e223961223984_)))
                                     (_hd223960223987_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e223961223984_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd223960223987_))
                                     (let ((_e223964223992_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd223960223987_))))
                                       (let ((_tl223962223997_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e223964223992_)))
                                             (_hd223963223995_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e223964223992_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl223962223997_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl223959223989_))
                                                 (let ((_e223967224000_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl223959223989_))))
                                                   (let ((_tl223965224005_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e223967224000_)))
                                                         (_hd223966224003_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e223967224000_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl223965224005_))
                                                         (___kont236523236524_
                                                          _hd223966224003_
                                                          _hd223963223995_)
                                                         (___kont236525236526_))))
                                                 (___kont236525236526_))
                                             (___kont236525236526_))))
                                     (___kont236525236526_))))
                             (___kont236525236526_))))))
                  (_lift-kw-lambda-bindings223397_
                   (lambda (_bindings223564_)
                     (let _lp223566_ ((_rest223568_ _bindings223564_)
                                      (_lift1223569_ '())
                                      (_lift2223570_ '())
                                      (_bind223571_ '()))
                       (let* ((_rest223572223580_ _rest223568_)
                              (_else223574223588_
                               (lambda ()
                                 (values (reverse _lift1223569_)
                                         (reverse _lift2223570_)
                                         (reverse _bind223571_))))
                              (_K223576223940_
                               (lambda (_rest223591_ _hd223592_)
                                 (let* ((___stx236551236552_ _hd223592_)
                                        (_g223595223620_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx236551236552_)))))
                                   (let ((___kont236553236554_
                                          (lambda (_L223690_ _L223691_)
                                            (let* ((_g223705223758_
                                                    (lambda (_g223706223755_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g223706223755_))))
                                                   (_g223704223934_
                                                    (lambda (_g223706223761_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g223706223761_))
                                                          (let ((_e223714223763_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g223706223761_))))
                    (let ((_hd223713223766_
                           (let ()
                             (declare (not safe))
                             (##car _e223714223763_)))
                          (_tl223712223768_
                           (let ()
                             (declare (not safe))
                             (##cdr _e223714223763_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl223712223768_))
                          (let ((_e223717223771_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl223712223768_))))
                            (let ((_hd223716223774_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e223717223771_)))
                                  (_tl223715223776_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e223717223771_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd223716223774_))
                                  (let ((_e223720223779_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd223716223774_))))
                                    (let ((_hd223719223782_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e223720223779_)))
                                          (_tl223718223784_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e223720223779_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd223719223782_))
                                          (let ((_e223723223787_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd223719223782_))))
                                            (let ((_hd223722223790_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e223723223787_)))
                                                  (_tl223721223792_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e223723223787_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd223722223790_))
                                                  (let ((_e223726223795_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd223722223790_))))
                                                    (let ((_hd223725223798_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e223726223795_)))
                                                          (_tl223724223800_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e223726223795_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl223724223800_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl223721223792_))
                      (let ((_e223729223803_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl223721223792_))))
                        (let ((_hd223728223806_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223729223803_)))
                              (_tl223727223808_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223729223803_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd223728223806_))
                              (let ((_e223732223811_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd223728223806_))))
                                (let ((_hd223731223814_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223732223811_)))
                                      (_tl223730223816_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223732223811_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl223730223816_))
                                      (let ((_e223735223819_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl223730223816_))))
                                        (let ((_hd223734223822_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e223735223819_)))
                                              (_tl223733223824_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e223735223819_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd223734223822_))
                                              (let ((_e223738223827_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd223734223822_))))
                                                (let ((_hd223737223830_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e223738223827_)))
                                                      (_tl223736223832_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e223738223827_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd223737223830_))
                                                      (let ((_e223741223835_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd223737223830_))))
                (let ((_hd223740223838_
                       (let () (declare (not safe)) (##car _e223741223835_)))
                      (_tl223739223840_
                       (let () (declare (not safe)) (##cdr _e223741223835_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd223740223838_))
                      (let ((_e223744223843_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd223740223838_))))
                        (let ((_hd223743223846_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223744223843_)))
                              (_tl223742223848_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223744223843_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl223742223848_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl223739223840_))
                                  (let ((_e223747223851_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl223739223840_))))
                                    (let ((_hd223746223854_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e223747223851_)))
                                          (_tl223745223856_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e223747223851_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl223745223856_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl223736223832_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl223733223824_))
                                                  (let ((_e223750223859_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl223733223824_))))
                                                    (let ((_hd223749223862_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e223750223859_)))
                                                          (_tl223748223864_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e223750223859_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl223748223864_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl223727223808_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl223718223784_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223715223776_))
                              (let ((_e223753223867_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223715223776_))))
                                (let ((_hd223752223870_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223753223867_)))
                                      (_tl223751223872_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223753223867_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl223751223872_))
                                      ((lambda (_L223875_
                                                _L223876_
                                                _L223877_
                                                _L223878_
                                                _L223879_)
                                         (let* ((_get-kws-id223919_
                                                 (let ((__tmp237078
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L223691_)))
                                                       (__tmp237077
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp237078
                                                    __tmp237077)))
                                                (_get-kws-id223921_
                                                 (let ((__tmp237079
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx223392_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id223919_
                                                    __tmp237079)))
                                                (_main-id223923_
                                                 (let ((__tmp237081
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L223691_)))
                                                       (__tmp237080
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp237081
                                                    __tmp237080)))
                                                (_main-id223925_
                                                 (let ((__tmp237082
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx223392_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id223923_
                                                    __tmp237082)))
                                                (_g237083_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id223921_)))
                                                (_g237084_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id223925_)))
                                                (_new-kw-dispatch223929_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L223875_
                                                    _L223879_
                                                    _get-kws-id223921_)))
                                                (_new-get-kws223931_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L223876_
                                                    _L223878_
                                                    _main-id223925_))))
                                           (let ((__tmp237087
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L223691_)))
                                                 (__tmp237086
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id223921_)))
                                                 (__tmp237085
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id223925_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp237087
                                              '" => "
                                              __tmp237086
                                              '" => "
                                              __tmp237085))
                                           (let ((__tmp237092
                                                  (let ((__tmp237093
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__234713234714_
                                                            _main-id223925_
                                                            _L223877_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp237093
                                                          _lift1223569_)))
                                                 (__tmp237090
                                                  (let ((__tmp237091
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__234713234714_
                                                            _get-kws-id223921_
                                                            _new-get-kws223931_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp237091
                                                          _lift2223570_)))
                                                 (__tmp237088
                                                  (let ((__tmp237089
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__234713234714_
                                                            _L223691_
                                                            _new-kw-dispatch223929_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp237089
                                                          _bind223571_))))
                                             (declare (not safe))
                                             (_lp223566_
                                              _rest223591_
                                              __tmp237092
                                              __tmp237090
                                              __tmp237088))))
                                       _hd223752223870_
                                       _hd223749223862_
                                       _hd223746223854_
                                       _hd223743223846_
                                       _hd223725223798_)
                                      (let ()
                                        (declare (not safe))
                                        (_g223705223758_ _g223706223761_)))))
                              (let ()
                                (declare (not safe))
                                (_g223705223758_ _g223706223761_)))
                          (let ()
                            (declare (not safe))
                            (_g223705223758_ _g223706223761_)))
                      (let ()
                        (declare (not safe))
                        (_g223705223758_ _g223706223761_)))
                  (let ()
                    (declare (not safe))
                    (_g223705223758_ _g223706223761_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g223705223758_
                                                     _g223706223761_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g223705223758_
                                                 _g223706223761_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g223705223758_
                                             _g223706223761_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g223705223758_ _g223706223761_)))
                              (let ()
                                (declare (not safe))
                                (_g223705223758_ _g223706223761_)))))
                      (let ()
                        (declare (not safe))
                        (_g223705223758_ _g223706223761_)))))
              (let ()
                (declare (not safe))
                (_g223705223758_ _g223706223761_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g223705223758_
                                                 _g223706223761_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g223705223758_ _g223706223761_)))))
                              (let ()
                                (declare (not safe))
                                (_g223705223758_ _g223706223761_)))))
                      (let ()
                        (declare (not safe))
                        (_g223705223758_ _g223706223761_)))
                  (let ()
                    (declare (not safe))
                    (_g223705223758_ _g223706223761_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g223705223758_
                                                     _g223706223761_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g223705223758_
                                             _g223706223761_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g223705223758_ _g223706223761_)))))
                          (let ()
                            (declare (not safe))
                            (_g223705223758_ _g223706223761_)))))
                  (let ()
                    (declare (not safe))
                    (_g223705223758_ _g223706223761_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g223704223934_ _L223690_))))
                                         (___kont236555236556_
                                          (lambda (_L223641_ _L223642_)
                                            (let ((__tmp237094
                                                   (let ((__tmp237095
                                                          (let ((__tmp237096
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L223641_ '()))))
                    (declare (not safe))
                    (cons _L223642_ __tmp237096))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp237095
                                                           _bind223571_))))
                                              (declare (not safe))
                                              (_lp223566_
                                               _rest223591_
                                               _lift1223569_
                                               _lift2223570_
                                               __tmp237094)))))
                                     (let ((___match236578236579_
                                            (lambda (_e223601223666_
                                                     _hd223600223669_
                                                     _tl223599223671_
                                                     _e223604223674_
                                                     _hd223603223677_
                                                     _tl223602223679_
                                                     _e223607223682_
                                                     _hd223606223685_
                                                     _tl223605223687_)
                                              (let ((_L223690_
                                                     _hd223606223685_)
                                                    (_L223691_
                                                     _hd223603223677_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _L223691_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#kw-lambda-expr?
                                                            _L223690_)))
                                                    (___kont236553236554_
                                                     _L223690_
                                                     _L223691_)
                                                    (___kont236555236556_
                                                     _hd223606223685_
                                                     _hd223600223669_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx236551236552_))
                                           (let ((_e223601223666_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx236551236552_))))
                                             (let ((_tl223599223671_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e223601223666_)))
                                                   (_hd223600223669_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e223601223666_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd223600223669_))
                                                   (let ((_e223604223674_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd223600223669_))))
                                                     (let ((_tl223602223679_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e223604223674_)))
                                                           (_hd223603223677_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e223604223674_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl223602223679_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl223599223671_))
                       (let ((_e223607223682_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl223599223671_))))
                         (let ((_tl223605223687_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e223607223682_)))
                               (_hd223606223685_
                                (let ()
                                  (declare (not safe))
                                  (##car _e223607223682_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl223605223687_))
                               (___match236578236579_
                                _e223601223666_
                                _hd223600223669_
                                _tl223599223671_
                                _e223604223674_
                                _hd223603223677_
                                _tl223602223679_
                                _e223607223682_
                                _hd223606223685_
                                _tl223605223687_)
                               (let ()
                                 (declare (not safe))
                                 (_g223595223620_)))))
                       (let () (declare (not safe)) (_g223595223620_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl223599223671_))
                       (let ((_e223615223633_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl223599223671_))))
                         (let ((_tl223613223638_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e223615223633_)))
                               (_hd223614223636_
                                (let ()
                                  (declare (not safe))
                                  (##car _e223615223633_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl223613223638_))
                               (___kont236555236556_
                                _hd223614223636_
                                _hd223600223669_)
                               (let ()
                                 (declare (not safe))
                                 (_g223595223620_)))))
                       (let () (declare (not safe)) (_g223595223620_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl223599223671_))
                                                       (let ((_e223615223633_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl223599223671_))))
                 (let ((_tl223613223638_
                        (let () (declare (not safe)) (##cdr _e223615223633_)))
                       (_hd223614223636_
                        (let () (declare (not safe)) (##car _e223615223633_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl223613223638_))
                       (___kont236555236556_ _hd223614223636_ _hd223600223669_)
                       (let () (declare (not safe)) (_g223595223620_)))))
               (let () (declare (not safe)) (_g223595223620_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g223595223620_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest223572223580_))
                             (let ((_hd223577223943_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest223572223580_)))
                                   (_tl223578223945_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest223572223580_))))
                               (let* ((_hd223948_ _hd223577223943_)
                                      (_rest223950_ _tl223578223945_))
                                 (declare (not safe))
                                 (_K223576223940_ _rest223950_ _hd223948_)))
                             (let ()
                               (declare (not safe))
                               (_else223574223588_))))))))
          (let* ((___stx236595236596_ _stx223392_)
                 (_g223400223426_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx236595236596_)))))
            (let ((___kont236597236598_
                   (lambda (_L223486_ _L223487_)
                     (let ((__tmp237098
                            (lambda ()
                              (if (let ((__tmp237125
                                         (let ((__tmp237126
                                                (lambda (_g223515223518_
                                                         _g223516223520_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g223515223518_
                                                          _g223516223520_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp237126
                                                   '()
                                                   _L223487_))))
                                    (declare (not safe))
                                    (ormap1 _lift-kw-lambda?223396_
                                            __tmp237125))
                                  (let ((_g237112_
                                         (let ((__tmp237114
                                                (let ((__tmp237115
                                                       (lambda (_g223522223525_
                                                                _g223523223527_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g223522223525_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g223523223527_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp237115
                                                          '()
                                                          _L223487_))))
                                           (declare (not safe))
                                           (_lift-kw-lambda-bindings223397_
                                            __tmp237114))))
                                    (begin
                                      (let ((_g237113_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g237112_)
                                                   (##vector-length _g237112_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g237113_ 3)))
                                            (error "Context expects 3 values"
                                                   _g237113_)))
                                      (let ((_lift1223530_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g237112_ 0)))
                                            (_lift2223531_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g237112_ 1)))
                                            (_hd223532_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g237112_ 2))))
                                        (let* ((_expr223534_
                                                (let ((__tmp237116
                                                       (let ((__tmp237117
                                                              (let ((__tmp237118
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L223486_ '()))))
                        (declare (not safe))
                        (cons _hd223532_ __tmp237118))))
                 (declare (not safe))
                 (cons '%#let-values __tmp237117))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp237116
                                                   _stx223392_)))
                                               (_expr223536_
                                                (let ((__tmp237119
                                                       (let ((__tmp237120
                                                              (let ((__tmp237121
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr223534_ '()))))
                        (declare (not safe))
                        (cons _lift2223531_ __tmp237121))))
                 (declare (not safe))
                 (cons '%#let-values __tmp237120))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp237119
                                                   _stx223392_)))
                                               (_expr223538_
                                                (let ((__tmp237122
                                                       (let ((__tmp237123
                                                              (let ((__tmp237124
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr223536_ '()))))
                        (declare (not safe))
                        (cons _lift1223530_ __tmp237124))))
                 (declare (not safe))
                 (cons '%#let-values __tmp237123))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp237122
                                                   _stx223392_))))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#lift-top-lambda-let-values%
                                             _expr223538_))))))
                                  (let ((_g237099_
                                         (let ((__tmp237101
                                                (let ((__tmp237102
                                                       (lambda (_g223540223543_
                                                                _g223541223545_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g223540223543_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g223541223545_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp237102
                                                          '()
                                                          _L223487_))))
                                           (declare (not safe))
                                           (_compile-bindings223395_
                                            __tmp237101))))
                                    (begin
                                      (let ((_g237100_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g237099_)
                                                   (##vector-length _g237099_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g237100_ 3)))
                                            (error "Context expects 3 values"
                                                   _g237100_)))
                                      (let ((_lift1223548_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g237099_ 0)))
                                            (_lift2223549_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g237099_ 1)))
                                            (_hd223550_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g237099_ 2))))
                                        (let* ((_body223552_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _L223486_)))
                                               (_expr223554_
                                                (let ((__tmp237103
                                                       (let ((__tmp237104
                                                              (let ((__tmp237105
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _body223552_ '()))))
                        (declare (not safe))
                        (cons _hd223550_ __tmp237105))))
                 (declare (not safe))
                 (cons '%#let-values __tmp237104))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp237103
                                                   _stx223392_)))
                                               (_expr223556_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift2223549_))
                                                    _expr223554_
                                                    (let ((__tmp237106
                                                           (let ((__tmp237107
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp237108
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr223554_ '()))))
                            (declare (not safe))
                            (cons _lift2223549_ __tmp237108))))
                     (declare (not safe))
                     (cons '%#let-values __tmp237107))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp237106 _stx223392_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_expr223558_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift1223548_))
                                                    _expr223556_
                                                    (let ((__tmp237109
                                                           (let ((__tmp237110
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp237111
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr223556_ '()))))
                            (declare (not safe))
                            (cons _lift1223548_ __tmp237111))))
                     (declare (not safe))
                     (cons '%#let-values __tmp237110))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp237109 _stx223392_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _expr223558_)))))))
                           (__tmp237097
                            (let ((__obj236801
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj236801)
                              __obj236801)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp237098
                        gx#current-expander-context
                        __tmp237097))))
                  (___kont236601236602_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx223392_)))))
              (let ((___match236622236623_
                     (lambda (_e223406223438_
                              _hd223405223441_
                              _tl223404223443_
                              _e223409223446_
                              _hd223408223449_
                              _tl223407223451_
                              ___splice236599236600_
                              _target223410223454_
                              _tl223412223456_)
                       (letrec ((_loop223413223459_
                                 (lambda (_hd223411223462_ _bind223417223464_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd223411223462_))
                                       (let ((_e223414223467_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd223411223462_))))
                                         (let ((_lp-tl223416223472_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e223414223467_)))
                                               (_lp-hd223415223470_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e223414223467_))))
                                           (let ((__tmp237129
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd223415223470_
                                                          _bind223417223464_))))
                                             (declare (not safe))
                                             (_loop223413223459_
                                              _lp-tl223416223472_
                                              __tmp237129))))
                                       (let ((_bind223418223475_
                                              (reverse _bind223417223464_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl223407223451_))
                                             (let ((_e223421223478_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl223407223451_))))
                                               (let ((_tl223419223483_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e223421223478_)))
                                                     (_hd223420223481_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e223421223478_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl223419223483_))
                                                     (let ((_L223486_
                                                            _hd223420223481_)
                                                           (_L223487_
                                                            _bind223418223475_))
                                                       (if (let ((__tmp237127
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp237128
                                 (lambda (_g223507223510_ _g223508223512_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g223507223510_ _g223508223512_)))))
                            (declare (not safe))
                            (foldr1 __tmp237128 '() _L223487_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp237127))
                   (___kont236597236598_ _L223486_ _L223487_)
                   (___kont236601236602_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont236601236602_))))
                                             (___kont236601236602_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop223413223459_ _target223410223454_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx236595236596_))
                    (let ((_e223406223438_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx236595236596_))))
                      (let ((_tl223404223443_
                             (let ()
                               (declare (not safe))
                               (##cdr _e223406223438_)))
                            (_hd223405223441_
                             (let ()
                               (declare (not safe))
                               (##car _e223406223438_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl223404223443_))
                            (let ((_e223409223446_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl223404223443_))))
                              (let ((_tl223407223451_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e223409223446_)))
                                    (_hd223408223449_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e223409223446_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd223408223449_))
                                    (let ((___splice236599236600_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd223408223449_
                                              '0))))
                                      (let ((_tl223412223456_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice236599236600_
                                                '1)))
                                            (_target223410223454_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice236599236600_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl223412223456_))
                                            (___match236622236623_
                                             _e223406223438_
                                             _hd223405223441_
                                             _tl223404223443_
                                             _e223409223446_
                                             _hd223408223449_
                                             _tl223407223451_
                                             ___splice236599236600_
                                             _target223410223454_
                                             _tl223412223456_)
                                            (___kont236601236602_))))
                                    (___kont236601236602_))))
                            (___kont236601236602_))))
                    (___kont236601236602_))))))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_stx222536_)
        (letrec* ((_bind-e__234718234719_
                   (lambda (_id223376_ _expr223377_ _compile?223378_)
                     (let ((__tmp237132
                            (let ()
                              (declare (not safe))
                              (cons _id223376_ '())))
                           (__tmp237130
                            (let ((__tmp237131
                                   (if _compile?223378_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr223377_))
                                       _expr223377_)))
                              (declare (not safe))
                              (cons __tmp237131 '()))))
                       (declare (not safe))
                       (cons __tmp237132 __tmp237130))))
                  (_bind-e__0__234720234721_
                   (lambda (_id223383_ _expr223384_)
                     (let ((_compile?223386_ '#t))
                       (declare (not safe))
                       (_bind-e__234718234719_
                        _id223383_
                        _expr223384_
                        _compile?223386_))))
                  (_bind-e222538_
                   (lambda _g237134_
                     (let ((_g237133_
                            (let ()
                              (declare (not safe))
                              (##length _g237134_))))
                       (cond ((let () (declare (not safe)) (##fx= _g237133_ 2))
                              (apply (lambda (_id223383_ _expr223384_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__234720234721_
                                          _id223383_
                                          _expr223384_)))
                                     _g237134_))
                             ((let () (declare (not safe)) (##fx= _g237133_ 3))
                              (apply (lambda (_id223388_
                                              _expr223389_
                                              _compile?223390_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__234718234719_
                                          _id223388_
                                          _expr223389_
                                          _compile?223390_)))
                                     _g237134_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g237134_))))))
                  (_compile-bindings222539_
                   (lambda (_rest222674_)
                     (let _lp222676_ ((_rest222678_ _rest222674_)
                                      (_bind222679_ '()))
                       (let* ((_rest222680222688_ _rest222678_)
                              (_else222682222696_
                               (lambda () (reverse _bind222679_)))
                              (_K222684223363_
                               (lambda (_rest222699_ _hd222700_)
                                 (let* ((___stx236645236646_ _hd222700_)
                                        (_g222705222752_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx236645236646_)))))
                                   (let ((___kont236647236648_
                                          (lambda (_L223270_ _L223271_)
                                            (let* ((___stx236625236626_
                                                    _L223270_)
                                                   (_g223286223300_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx236625236626_)))))
                                              (let ((___kont236627236628_
                                                     (lambda (_L223348_)
                                                       (let ((__tmp237135
                                                              (let ((__tmp237136
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__234718234719_
                                _L223271_
                                _L223270_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp237136 _bind222679_))))
                 (declare (not safe))
                 (_lp222676_ _rest222699_ __tmp237135))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont236629236630_
                                                     (lambda (_L223313_)
                                                       (let ((_g237137_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx222536_
                         _L223271_
                         _L223313_
                         '#t))))
                 (begin
                   (let ((_g237138_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g237137_)
                                (##vector-length _g237137_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g237138_ 3)))
                         (error "Context expects 3 values" _g237138_)))
                   (let ((_ids223323_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g237137_ 0)))
                         (_impls223324_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g237137_ 1)))
                         (_clauses223325_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g237137_ 2))))
                     (let* ((_g237139_
                             (for-each gx#core-bind-runtime! _ids223323_))
                            (_xbind223328_
                             (map _bind-e222538_ _ids223323_ _impls223324_))
                            (_expr*223330_
                             (let ((__tmp237141
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses223325_)))
                                   (__tmp237140
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp237141
                                __tmp237140)))
                            (_bind*223332_
                             (let ()
                               (declare (not safe))
                               (_bind-e__234718234719_
                                _L223271_
                                _expr*223330_
                                '#f))))
                       (let ((__tmp237143
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L223271_)))
                             (__tmp237142
                              (map gxc#identifier-symbol _ids223323_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp237143
                          '" => "
                          __tmp237142))
                       (let ((__tmp237144
                              (let ((__tmp237145
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _bind222679_
                                               _xbind223328_))))
                                (declare (not safe))
                                (cons _bind*223332_ __tmp237145))))
                         (declare (not safe))
                         (_lp222676_ _rest222699_ __tmp237144)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match236636236637_
                                                       (lambda (_e223291223340_
                                                                _hd223290223343_
                                                                _tl223289223345_)
                                                         (let ((_L223348_
                                                                _tl223289223345_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L223348_))
                       (___kont236627236628_ _L223348_)
                       (___kont236629236630_ _tl223289223345_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx236625236626_))
                                                      (let ((_e223291223340_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx236625236626_))))
                (let ((_tl223289223345_
                       (let () (declare (not safe)) (##cdr _e223291223340_)))
                      (_hd223290223343_
                       (let () (declare (not safe)) (##car _e223291223340_))))
                  (___match236636236637_
                   _e223291223340_
                   _hd223290223343_
                   _tl223289223345_)))
              (let () (declare (not safe)) (_g223286223300_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont236649236650_
                                          (lambda (_L223098_ _L223099_)
                                            (let* ((_g223113223143_
                                                    (lambda (_g223114223140_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g223114223140_))))
                                                   (_g223112223238_
                                                    (lambda (_g223114223146_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g223114223146_))
                                                          (let ((_e223120223148_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g223114223146_))))
                    (let ((_hd223119223151_
                           (let ()
                             (declare (not safe))
                             (##car _e223120223148_)))
                          (_tl223118223153_
                           (let ()
                             (declare (not safe))
                             (##cdr _e223120223148_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl223118223153_))
                          (let ((_e223123223156_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl223118223153_))))
                            (let ((_hd223122223159_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e223123223156_)))
                                  (_tl223121223161_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e223123223156_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd223122223159_))
                                  (let ((_e223126223164_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd223122223159_))))
                                    (let ((_hd223125223167_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e223126223164_)))
                                          (_tl223124223169_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e223126223164_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd223125223167_))
                                          (let ((_e223129223172_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd223125223167_))))
                                            (let ((_hd223128223175_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e223129223172_)))
                                                  (_tl223127223177_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e223129223172_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd223128223175_))
                                                  (let ((_e223132223180_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd223128223175_))))
                                                    (let ((_hd223131223183_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e223132223180_)))
                                                          (_tl223130223185_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e223132223180_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl223130223185_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl223127223177_))
                      (let ((_e223135223188_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl223127223177_))))
                        (let ((_hd223134223191_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223135223188_)))
                              (_tl223133223193_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223135223188_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl223133223193_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl223124223169_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl223121223161_))
                                      (let ((_e223138223196_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl223121223161_))))
                                        (let ((_hd223137223199_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e223138223196_)))
                                              (_tl223136223201_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e223138223196_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl223136223201_))
                                              ((lambda (_L223204_
                                                        _L223205_
                                                        _L223206_)
                                                 (let* ((_lambda-id223230_
                                                         (let ((__tmp237147
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L223099_)))
                       (__tmp237146 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp237147 __tmp237146)))
                (_lambda-id223232_
                 (let ((__tmp237148
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx222536_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id223230_ __tmp237148)))
                (_g237149_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id223232_)))
                (_new-case-lambda-expr223235_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L223204_
                    _L223206_
                    _lambda-id223232_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp237151
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L223099_)))
                                                         (__tmp237150
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id223232_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp237151
                                                      '" => "
                                                      __tmp237150))
                                                   (let ((__tmp237154
                                                          (let ((__tmp237155
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__234718234719_
                            _L223099_
                            _new-case-lambda-expr223235_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp237155 _rest222699_)))
                 (__tmp237152
                  (let ((__tmp237153
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__234720234721_
                            _lambda-id223232_
                            _L223205_))))
                    (declare (not safe))
                    (cons __tmp237153 _bind222679_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp222676_
                                                      __tmp237154
                                                      __tmp237152))))
                                               _hd223137223199_
                                               _hd223134223191_
                                               _hd223131223183_)
                                              (let ()
                                                (declare (not safe))
                                                (_g223113223143_
                                                 _g223114223146_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g223113223143_ _g223114223146_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g223113223143_ _g223114223146_)))
                              (let ()
                                (declare (not safe))
                                (_g223113223143_ _g223114223146_)))))
                      (let ()
                        (declare (not safe))
                        (_g223113223143_ _g223114223146_)))
                  (let ()
                    (declare (not safe))
                    (_g223113223143_ _g223114223146_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g223113223143_
                                                     _g223114223146_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g223113223143_
                                             _g223114223146_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g223113223143_ _g223114223146_)))))
                          (let ()
                            (declare (not safe))
                            (_g223113223143_ _g223114223146_)))))
                  (let ()
                    (declare (not safe))
                    (_g223113223143_ _g223114223146_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g223112223238_ _L223098_))))
                                         (___kont236651236652_
                                          (lambda (_L222822_ _L222823_)
                                            (let* ((_g222837222890_
                                                    (lambda (_g222838222887_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g222838222887_))))
                                                   (_g222836223066_
                                                    (lambda (_g222838222893_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g222838222893_))
                                                          (let ((_e222846222895_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g222838222893_))))
                    (let ((_hd222845222898_
                           (let ()
                             (declare (not safe))
                             (##car _e222846222895_)))
                          (_tl222844222900_
                           (let ()
                             (declare (not safe))
                             (##cdr _e222846222895_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl222844222900_))
                          (let ((_e222849222903_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl222844222900_))))
                            (let ((_hd222848222906_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e222849222903_)))
                                  (_tl222847222908_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e222849222903_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd222848222906_))
                                  (let ((_e222852222911_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd222848222906_))))
                                    (let ((_hd222851222914_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e222852222911_)))
                                          (_tl222850222916_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e222852222911_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd222851222914_))
                                          (let ((_e222855222919_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd222851222914_))))
                                            (let ((_hd222854222922_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e222855222919_)))
                                                  (_tl222853222924_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e222855222919_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd222854222922_))
                                                  (let ((_e222858222927_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd222854222922_))))
                                                    (let ((_hd222857222930_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e222858222927_)))
                                                          (_tl222856222932_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e222858222927_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl222856222932_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl222853222924_))
                      (let ((_e222861222935_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl222853222924_))))
                        (let ((_hd222860222938_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222861222935_)))
                              (_tl222859222940_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222861222935_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd222860222938_))
                              (let ((_e222864222943_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd222860222938_))))
                                (let ((_hd222863222946_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222864222943_)))
                                      (_tl222862222948_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222864222943_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl222862222948_))
                                      (let ((_e222867222951_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl222862222948_))))
                                        (let ((_hd222866222954_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e222867222951_)))
                                              (_tl222865222956_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e222867222951_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd222866222954_))
                                              (let ((_e222870222959_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd222866222954_))))
                                                (let ((_hd222869222962_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e222870222959_)))
                                                      (_tl222868222964_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e222870222959_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd222869222962_))
                                                      (let ((_e222873222967_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd222869222962_))))
                (let ((_hd222872222970_
                       (let () (declare (not safe)) (##car _e222873222967_)))
                      (_tl222871222972_
                       (let () (declare (not safe)) (##cdr _e222873222967_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd222872222970_))
                      (let ((_e222876222975_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd222872222970_))))
                        (let ((_hd222875222978_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222876222975_)))
                              (_tl222874222980_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222876222975_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl222874222980_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl222871222972_))
                                  (let ((_e222879222983_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl222871222972_))))
                                    (let ((_hd222878222986_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e222879222983_)))
                                          (_tl222877222988_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e222879222983_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl222877222988_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl222868222964_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl222865222956_))
                                                  (let ((_e222882222991_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl222865222956_))))
                                                    (let ((_hd222881222994_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e222882222991_)))
                                                          (_tl222880222996_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e222882222991_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl222880222996_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl222859222940_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl222850222916_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222847222908_))
                              (let ((_e222885222999_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222847222908_))))
                                (let ((_hd222884223002_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222885222999_)))
                                      (_tl222883223004_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222885222999_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl222883223004_))
                                      ((lambda (_L223007_
                                                _L223008_
                                                _L223009_
                                                _L223010_
                                                _L223011_)
                                         (let* ((_get-kws-id223051_
                                                 (let ((__tmp237157
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L222823_)))
                                                       (__tmp237156
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp237157
                                                    __tmp237156)))
                                                (_get-kws-id223053_
                                                 (let ((__tmp237158
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx222536_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id223051_
                                                    __tmp237158)))
                                                (_main-id223055_
                                                 (let ((__tmp237160
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L222823_)))
                                                       (__tmp237159
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp237160
                                                    __tmp237159)))
                                                (_main-id223057_
                                                 (let ((__tmp237161
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx222536_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id223055_
                                                    __tmp237161)))
                                                (_g237162_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id223053_)))
                                                (_g237163_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id223057_)))
                                                (_new-kw-dispatch223061_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L223007_
                                                    _L223011_
                                                    _get-kws-id223053_)))
                                                (_new-get-kws223063_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L223008_
                                                    _L223010_
                                                    _main-id223057_))))
                                           (let ((__tmp237166
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L222823_)))
                                                 (__tmp237165
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id223053_)))
                                                 (__tmp237164
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id223057_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp237166
                                              '" => "
                                              __tmp237165
                                              '" => "
                                              __tmp237164))
                                           (let ((__tmp237167
                                                  (let ((__tmp237172
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__234718234719_
                                                            _main-id223057_
                                                            _L223009_
                                                            '#f)))
                                                        (__tmp237168
                                                         (let ((__tmp237171
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_bind-e__234718234719_
                           _get-kws-id223053_
                           _new-get-kws223063_
                           '#f)))
                       (__tmp237169
                        (let ((__tmp237170
                               (let ()
                                 (declare (not safe))
                                 (_bind-e__234718234719_
                                  _L222823_
                                  _new-kw-dispatch223061_
                                  '#f))))
                          (declare (not safe))
                          (cons __tmp237170 _rest222699_))))
                   (declare (not safe))
                   (cons __tmp237171 __tmp237169))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp237172
                                                          __tmp237168))))
                                             (declare (not safe))
                                             (_lp222676_
                                              __tmp237167
                                              _bind222679_))))
                                       _hd222884223002_
                                       _hd222881222994_
                                       _hd222878222986_
                                       _hd222875222978_
                                       _hd222857222930_)
                                      (let ()
                                        (declare (not safe))
                                        (_g222837222890_ _g222838222893_)))))
                              (let ()
                                (declare (not safe))
                                (_g222837222890_ _g222838222893_)))
                          (let ()
                            (declare (not safe))
                            (_g222837222890_ _g222838222893_)))
                      (let ()
                        (declare (not safe))
                        (_g222837222890_ _g222838222893_)))
                  (let ()
                    (declare (not safe))
                    (_g222837222890_ _g222838222893_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g222837222890_
                                                     _g222838222893_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g222837222890_
                                                 _g222838222893_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g222837222890_
                                             _g222838222893_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g222837222890_ _g222838222893_)))
                              (let ()
                                (declare (not safe))
                                (_g222837222890_ _g222838222893_)))))
                      (let ()
                        (declare (not safe))
                        (_g222837222890_ _g222838222893_)))))
              (let ()
                (declare (not safe))
                (_g222837222890_ _g222838222893_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g222837222890_
                                                 _g222838222893_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g222837222890_ _g222838222893_)))))
                              (let ()
                                (declare (not safe))
                                (_g222837222890_ _g222838222893_)))))
                      (let ()
                        (declare (not safe))
                        (_g222837222890_ _g222838222893_)))
                  (let ()
                    (declare (not safe))
                    (_g222837222890_ _g222838222893_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g222837222890_
                                                     _g222838222893_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g222837222890_
                                             _g222838222893_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g222837222890_ _g222838222893_)))))
                          (let ()
                            (declare (not safe))
                            (_g222837222890_ _g222838222893_)))))
                  (let ()
                    (declare (not safe))
                    (_g222837222890_ _g222838222893_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g222836223066_ _L222822_))))
                                         (___kont236653236654_
                                          (lambda (_L222773_ _L222774_)
                                            (let ((__tmp237173
                                                   (let ((__tmp237174
                                                          (let ((__tmp237175
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp237176
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L222773_))))
                           (declare (not safe))
                           (cons __tmp237176 '()))))
                    (declare (not safe))
                    (cons _L222774_ __tmp237175))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp237174
                                                           _bind222679_))))
                                              (declare (not safe))
                                              (_lp222676_
                                               _rest222699_
                                               __tmp237173)))))
                                     (let* ((___match236720236721_
                                             (lambda (_e222733222798_
                                                      _hd222732222801_
                                                      _tl222731222803_
                                                      _e222736222806_
                                                      _hd222735222809_
                                                      _tl222734222811_
                                                      _e222739222814_
                                                      _hd222738222817_
                                                      _tl222737222819_)
                                               (let ((_L222822_
                                                      _hd222738222817_)
                                                     (_L222823_
                                                      _hd222735222809_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L222823_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#kw-lambda-expr?
                                                             _L222822_)))
                                                     (___kont236651236652_
                                                      _L222822_
                                                      _L222823_)
                                                     (___kont236653236654_
                                                      _hd222738222817_
                                                      _hd222732222801_)))))
                                            (___match236698236699_
                                             (lambda (_e222722223074_
                                                      _hd222721223077_
                                                      _tl222720223079_
                                                      _e222725223082_
                                                      _hd222724223085_
                                                      _tl222723223087_
                                                      _e222728223090_
                                                      _hd222727223093_
                                                      _tl222726223095_)
                                               (let ((_L223098_
                                                      _hd222727223093_)
                                                     (_L223099_
                                                      _hd222724223085_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L223099_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L223098_)))
                                                     (___kont236649236650_
                                                      _L223098_
                                                      _L223099_)
                                                     (___match236720236721_
                                                      _e222722223074_
                                                      _hd222721223077_
                                                      _tl222720223079_
                                                      _e222725223082_
                                                      _hd222724223085_
                                                      _tl222723223087_
                                                      _e222728223090_
                                                      _hd222727223093_
                                                      _tl222726223095_)))))
                                            (___match236676236677_
                                             (lambda (_e222711223246_
                                                      _hd222710223249_
                                                      _tl222709223251_
                                                      _e222714223254_
                                                      _hd222713223257_
                                                      _tl222712223259_
                                                      _e222717223262_
                                                      _hd222716223265_
                                                      _tl222715223267_)
                                               (let ((_L223270_
                                                      _hd222716223265_)
                                                     (_L223271_
                                                      _hd222713223257_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L223271_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L223270_)))
                                                     (___kont236647236648_
                                                      _L223270_
                                                      _L223271_)
                                                     (___match236698236699_
                                                      _e222711223246_
                                                      _hd222710223249_
                                                      _tl222709223251_
                                                      _e222714223254_
                                                      _hd222713223257_
                                                      _tl222712223259_
                                                      _e222717223262_
                                                      _hd222716223265_
                                                      _tl222715223267_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx236645236646_))
                                           (let ((_e222711223246_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx236645236646_))))
                                             (let ((_tl222709223251_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e222711223246_)))
                                                   (_hd222710223249_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e222711223246_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd222710223249_))
                                                   (let ((_e222714223254_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd222710223249_))))
                                                     (let ((_tl222712223259_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e222714223254_)))
                                                           (_hd222713223257_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e222714223254_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl222712223259_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl222709223251_))
                       (let ((_e222717223262_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl222709223251_))))
                         (let ((_tl222715223267_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e222717223262_)))
                               (_hd222716223265_
                                (let ()
                                  (declare (not safe))
                                  (##car _e222717223262_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl222715223267_))
                               (___match236676236677_
                                _e222711223246_
                                _hd222710223249_
                                _tl222709223251_
                                _e222714223254_
                                _hd222713223257_
                                _tl222712223259_
                                _e222717223262_
                                _hd222716223265_
                                _tl222715223267_)
                               (let ()
                                 (declare (not safe))
                                 (_g222705222752_)))))
                       (let () (declare (not safe)) (_g222705222752_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl222709223251_))
                       (let ((_e222747222765_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl222709223251_))))
                         (let ((_tl222745222770_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e222747222765_)))
                               (_hd222746222768_
                                (let ()
                                  (declare (not safe))
                                  (##car _e222747222765_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl222745222770_))
                               (___kont236653236654_
                                _hd222746222768_
                                _hd222710223249_)
                               (let ()
                                 (declare (not safe))
                                 (_g222705222752_)))))
                       (let () (declare (not safe)) (_g222705222752_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl222709223251_))
                                                       (let ((_e222747222765_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl222709223251_))))
                 (let ((_tl222745222770_
                        (let () (declare (not safe)) (##cdr _e222747222765_)))
                       (_hd222746222768_
                        (let () (declare (not safe)) (##car _e222747222765_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl222745222770_))
                       (___kont236653236654_ _hd222746222768_ _hd222710223249_)
                       (let () (declare (not safe)) (_g222705222752_)))))
               (let () (declare (not safe)) (_g222705222752_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g222705222752_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest222680222688_))
                             (let ((_hd222685223366_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest222680222688_)))
                                   (_tl222686223368_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest222680222688_))))
                               (let* ((_hd223371_ _hd222685223366_)
                                      (_rest223373_ _tl222686223368_))
                                 (declare (not safe))
                                 (_K222684223363_ _rest223373_ _hd223371_)))
                             (let ()
                               (declare (not safe))
                               (_else222682222696_))))))))
          (let* ((___stx236737236738_ _stx222536_)
                 (_g222542222569_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx236737236738_)))))
            (let ((___kont236739236740_
                   (lambda (_L222629_ _L222630_ _L222631_)
                     (let ((__tmp237178
                            (lambda ()
                              (let ((_hd222668_
                                     (let ((__tmp237179
                                            (let ((__tmp237180
                                                   (lambda (_g222660222663_
                                                            _g222661222665_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g222660222663_
                                                             _g222661222665_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp237180
                                                      '()
                                                      _L222630_))))
                                       (declare (not safe))
                                       (_compile-bindings222539_ __tmp237179)))
                                    (_body222669_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L222629_))))
                                (let ((__tmp237181
                                       (let ((__tmp237182
                                              (let ((__tmp237183
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body222669_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _hd222668_
                                                      __tmp237183))))
                                         (declare (not safe))
                                         (cons _L222631_ __tmp237182))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp237181
                                   _stx222536_)))))
                           (__tmp237177
                            (let ((__obj236802
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj236802)
                              __obj236802)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp237178
                        gx#current-expander-context
                        __tmp237177))))
                  (___kont236743236744_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx222536_)))))
              (let ((___match236764236765_
                     (lambda (_e222549222581_
                              _hd222548222584_
                              _tl222547222586_
                              _e222552222589_
                              _hd222551222592_
                              _tl222550222594_
                              ___splice236741236742_
                              _target222553222597_
                              _tl222555222599_)
                       (letrec ((_loop222556222602_
                                 (lambda (_hd222554222605_ _bind222560222607_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd222554222605_))
                                       (let ((_e222557222610_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd222554222605_))))
                                         (let ((_lp-tl222559222615_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e222557222610_)))
                                               (_lp-hd222558222613_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e222557222610_))))
                                           (let ((__tmp237186
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd222558222613_
                                                          _bind222560222607_))))
                                             (declare (not safe))
                                             (_loop222556222602_
                                              _lp-tl222559222615_
                                              __tmp237186))))
                                       (let ((_bind222561222618_
                                              (reverse _bind222560222607_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl222550222594_))
                                             (let ((_e222564222621_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl222550222594_))))
                                               (let ((_tl222562222626_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e222564222621_)))
                                                     (_hd222563222624_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e222564222621_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl222562222626_))
                                                     (let ((_L222629_
                                                            _hd222563222624_)
                                                           (_L222630_
                                                            _bind222561222618_)
                                                           (_L222631_
                                                            _hd222548222584_))
                                                       (if (let ((__tmp237184
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp237185
                                 (lambda (_g222652222655_ _g222653222657_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g222652222655_ _g222653222657_)))))
                            (declare (not safe))
                            (foldr1 __tmp237185 '() _L222630_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp237184))
                   (___kont236739236740_ _L222629_ _L222630_ _L222631_)
                   (___kont236743236744_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont236743236744_))))
                                             (___kont236743236744_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop222556222602_ _target222553222597_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx236737236738_))
                    (let ((_e222549222581_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx236737236738_))))
                      (let ((_tl222547222586_
                             (let ()
                               (declare (not safe))
                               (##cdr _e222549222581_)))
                            (_hd222548222584_
                             (let ()
                               (declare (not safe))
                               (##car _e222549222581_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl222547222586_))
                            (let ((_e222552222589_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl222547222586_))))
                              (let ((_tl222550222594_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e222552222589_)))
                                    (_hd222551222592_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e222552222589_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd222551222592_))
                                    (let ((___splice236741236742_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd222551222592_
                                              '0))))
                                      (let ((_tl222555222599_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice236741236742_
                                                '1)))
                                            (_target222553222597_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice236741236742_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl222555222599_))
                                            (___match236764236765_
                                             _e222549222581_
                                             _hd222548222584_
                                             _tl222547222586_
                                             _e222552222589_
                                             _hd222551222592_
                                             _tl222550222594_
                                             ___splice236741236742_
                                             _target222553222597_
                                             _tl222555222599_)
                                            (___kont236743236744_))))
                                    (___kont236743236744_))))
                            (___kont236743236744_))))
                    (___kont236743236744_))))))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_bind222454_)
        (let* ((___stx236767236768_ _bind222454_)
               (_g222457222474_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx236767236768_)))))
          (let ((___kont236769236770_
                 (lambda (_L222510_ _L222511_)
                   (if (let () (declare (not safe)) (gx#identifier? _L222511_))
                       (let ((_$e222527_
                              (let ()
                                (declare (not safe))
                                (gxc#case-lambda-expr? _L222510_))))
                         (if _$e222527_
                             _$e222527_
                             (let ((_$e222530_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#opt-lambda-expr? _L222510_))))
                               (if _$e222530_
                                   _$e222530_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L222510_))))))
                       '#f)))
                (___kont236771236772_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx236767236768_))
                (let ((_e222463222486_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx236767236768_))))
                  (let ((_tl222461222491_
                         (let () (declare (not safe)) (##cdr _e222463222486_)))
                        (_hd222462222489_
                         (let ()
                           (declare (not safe))
                           (##car _e222463222486_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd222462222489_))
                        (let ((_e222466222494_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd222462222489_))))
                          (let ((_tl222464222499_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e222466222494_)))
                                (_hd222465222497_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e222466222494_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl222464222499_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl222461222491_))
                                    (let ((_e222469222502_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl222461222491_))))
                                      (let ((_tl222467222507_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e222469222502_)))
                                            (_hd222468222505_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e222469222502_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl222467222507_))
                                            (___kont236769236770_
                                             _hd222468222505_
                                             _hd222465222497_)
                                            (___kont236771236772_))))
                                    (___kont236771236772_))
                                (___kont236771236772_))))
                        (___kont236771236772_))))
                (___kont236771236772_))))))))
