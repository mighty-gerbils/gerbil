(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1709038443)
  (begin
    (define gxc#&collect-top-level-type-info
      (make-promise
       (lambda ()
         (let ((_tbl126060_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp128153 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl126060_ __tmp128153))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126060_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126060_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126060_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126060_
              '%#define-values
              gxc#collect-top-level-type-define-values%))
           _tbl126060_))))
    (define gxc#apply-collect-top-level-type-info
      (lambda (_stx126043_ . _args126045_)
        (let ((__tmp128155
               (lambda ()
                 (declare (not safe))
                 (if (null? _args126045_)
                     (gxc#compile-e__0 _stx126043_)
                     (let ((_arg1126050_ (car _args126045_))
                           (_rest126052_ (cdr _args126045_)))
                       (if (null? _rest126052_)
                           (gxc#compile-e__1 _stx126043_ _arg1126050_)
                           (let ((_arg2126055_ (car _rest126052_))
                                 (_rest126057_ (cdr _rest126052_)))
                             (if (null? _rest126057_)
                                 (gxc#compile-e__2
                                  _stx126043_
                                  _arg1126050_
                                  _arg2126055_)
                                 (apply gxc#compile-e
                                        _stx126043_
                                        _arg1126050_
                                        _arg2126055_
                                        _rest126057_))))))))
              (__tmp128154 (force gxc#&collect-top-level-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp128155
           gxc#current-compile-methods
           __tmp128154))))
    (define gxc#&basic-expression-top-level-type
      (make-promise
       (lambda ()
         (let ((_tbl126040_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp128156 (force gxc#&false)))
             (declare (not safe))
             (hash-merge! _tbl126040_ __tmp128156))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126040_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126040_ '%#call gxc#basic-expression-type-call%))
           _tbl126040_))))
    (define gxc#apply-basic-expression-top-level-type
      (lambda (_stx126023_ . _args126025_)
        (let ((__tmp128158
               (lambda ()
                 (declare (not safe))
                 (if (null? _args126025_)
                     (gxc#compile-e__0 _stx126023_)
                     (let ((_arg1126030_ (car _args126025_))
                           (_rest126032_ (cdr _args126025_)))
                       (if (null? _rest126032_)
                           (gxc#compile-e__1 _stx126023_ _arg1126030_)
                           (let ((_arg2126035_ (car _rest126032_))
                                 (_rest126037_ (cdr _rest126032_)))
                             (if (null? _rest126037_)
                                 (gxc#compile-e__2
                                  _stx126023_
                                  _arg1126030_
                                  _arg2126035_)
                                 (apply gxc#compile-e
                                        _stx126023_
                                        _arg1126030_
                                        _arg2126035_
                                        _rest126037_))))))))
              (__tmp128157 (force gxc#&basic-expression-top-level-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp128158
           gxc#current-compile-methods
           __tmp128157))))
    (define gxc#&collect-type-info
      (make-promise
       (lambda ()
         (let ((_tbl126020_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp128159 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl126020_ __tmp128159))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126020_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126020_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126020_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126020_
              '%#define-values
              gxc#collect-type-define-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126020_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126020_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126020_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126020_
              '%#let-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126020_
              '%#letrec-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126020_
              '%#letrec*-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126020_ '%#call gxc#collect-type-call%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126020_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126020_ '%#set! gxc#collect-body-setq%))
           _tbl126020_))))
    (define gxc#apply-collect-type-info
      (lambda (_stx126003_ . _args126005_)
        (let ((__tmp128161
               (lambda ()
                 (declare (not safe))
                 (if (null? _args126005_)
                     (gxc#compile-e__0 _stx126003_)
                     (let ((_arg1126010_ (car _args126005_))
                           (_rest126012_ (cdr _args126005_)))
                       (if (null? _rest126012_)
                           (gxc#compile-e__1 _stx126003_ _arg1126010_)
                           (let ((_arg2126015_ (car _rest126012_))
                                 (_rest126017_ (cdr _rest126012_)))
                             (if (null? _rest126017_)
                                 (gxc#compile-e__2
                                  _stx126003_
                                  _arg1126010_
                                  _arg2126015_)
                                 (apply gxc#compile-e
                                        _stx126003_
                                        _arg1126010_
                                        _arg2126015_
                                        _rest126017_))))))))
              (__tmp128160 (force gxc#&collect-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp128161
           gxc#current-compile-methods
           __tmp128160))))
    (define gxc#&basic-expression-type
      (make-promise
       (lambda ()
         (let ((_tbl126000_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp128162 (force gxc#&false)))
             (declare (not safe))
             (hash-merge! _tbl126000_ __tmp128162))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126000_ '%#begin gxc#basic-expression-type-begin%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126000_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126000_
              '%#lambda
              gxc#basic-expression-type-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126000_
              '%#case-lambda
              gxc#basic-expression-type-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126000_
              '%#let-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126000_
              '%#letrec-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126000_
              '%#letrec*-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126000_ '%#call gxc#basic-expression-type-call%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126000_ '%#ref gxc#basic-expression-type-ref%))
           _tbl126000_))))
    (define gxc#apply-basic-expression-type
      (lambda (_stx125983_ . _args125985_)
        (let ((__tmp128164
               (lambda ()
                 (declare (not safe))
                 (if (null? _args125985_)
                     (gxc#compile-e__0 _stx125983_)
                     (let ((_arg1125990_ (car _args125985_))
                           (_rest125992_ (cdr _args125985_)))
                       (if (null? _rest125992_)
                           (gxc#compile-e__1 _stx125983_ _arg1125990_)
                           (let ((_arg2125995_ (car _rest125992_))
                                 (_rest125997_ (cdr _rest125992_)))
                             (if (null? _rest125997_)
                                 (gxc#compile-e__2
                                  _stx125983_
                                  _arg1125990_
                                  _arg2125995_)
                                 (apply gxc#compile-e
                                        _stx125983_
                                        _arg1125990_
                                        _arg2125995_
                                        _rest125997_))))))))
              (__tmp128163 (force gxc#&basic-expression-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp128164
           gxc#current-compile-methods
           __tmp128163))))
    (define gxc#&lift-top-lambdas
      (make-promise
       (lambda ()
         (let ((_tbl125980_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp128165 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-merge! _tbl125980_ __tmp128165))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125980_
              '%#define-values
              gxc#lift-top-lambda-define-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125980_
              '%#let-values
              gxc#lift-top-lambda-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125980_
              '%#letrec-values
              gxc#lift-top-lambda-letrec-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125980_
              '%#letrec*-values
              gxc#lift-top-lambda-letrec-values%))
           _tbl125980_))))
    (define gxc#apply-lift-top-lambdas
      (lambda (_stx125963_ . _args125965_)
        (let ((__tmp128167
               (lambda ()
                 (declare (not safe))
                 (if (null? _args125965_)
                     (gxc#compile-e__0 _stx125963_)
                     (let ((_arg1125970_ (car _args125965_))
                           (_rest125972_ (cdr _args125965_)))
                       (if (null? _rest125972_)
                           (gxc#compile-e__1 _stx125963_ _arg1125970_)
                           (let ((_arg2125975_ (car _rest125972_))
                                 (_rest125977_ (cdr _rest125972_)))
                             (if (null? _rest125977_)
                                 (gxc#compile-e__2
                                  _stx125963_
                                  _arg1125970_
                                  _arg2125975_)
                                 (apply gxc#compile-e
                                        _stx125963_
                                        _arg1125970_
                                        _arg2125975_
                                        _rest125977_))))))))
              (__tmp128166 (force gxc#&lift-top-lambdas)))
          (declare (not safe))
          (call-with-parameters
           __tmp128167
           gxc#current-compile-methods
           __tmp128166))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_stx125866_)
        (let* ((___stx126073126074_ _stx125866_)
               (_g125869125889_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126073126074_)))))
          (let ((___kont126075126076_
                 (lambda (_L125933_ _L125934_)
                   (let ((_sym125952_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L125934_))))
                     (if (let ((__tmp128168 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp128168 _sym125952_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym125952_))
                         (let ((_type125953125955_
                                (let ()
                                  (declare (not safe))
                                  (gxc#apply-basic-expression-top-level-type
                                   _L125933_))))
                           (if _type125953125955_
                               (let ((_type125958_ _type125953125955_))
                                 (declare (not safe))
                                 (gxc#optimizer-declare-type!__0
                                  _sym125952_
                                  _type125958_))
                               '#f))))))
                (___kont126077126078_ (lambda () '#!void)))
            (let ((___match126106126107_
                   (lambda (_e125875125901_
                            _hd125874125904_
                            _tl125873125906_
                            _e125878125909_
                            _hd125877125912_
                            _tl125876125914_
                            _e125881125917_
                            _hd125880125920_
                            _tl125879125922_
                            _e125884125925_
                            _hd125883125928_
                            _tl125882125930_)
                     (let ((_L125933_ _hd125883125928_)
                           (_L125934_ _hd125880125920_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L125934_))
                           (___kont126075126076_ _L125933_ _L125934_)
                           (___kont126077126078_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx126073126074_))
                  (let ((_e125875125901_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx126073126074_))))
                    (let ((_tl125873125906_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125875125901_)))
                          (_hd125874125904_
                           (let ()
                             (declare (not safe))
                             (##car _e125875125901_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl125873125906_))
                          (let ((_e125878125909_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl125873125906_))))
                            (let ((_tl125876125914_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125878125909_)))
                                  (_hd125877125912_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125878125909_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd125877125912_))
                                  (let ((_e125881125917_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd125877125912_))))
                                    (let ((_tl125879125922_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125881125917_)))
                                          (_hd125880125920_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125881125917_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125879125922_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125876125914_))
                                              (let ((_e125884125925_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125876125914_))))
                                                (let ((_tl125882125930_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125884125925_)))
                                                      (_hd125883125928_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125884125925_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125882125930_))
                                                      (___match126106126107_
                                                       _e125875125901_
                                                       _hd125874125904_
                                                       _tl125873125906_
                                                       _e125878125909_
                                                       _hd125877125912_
                                                       _tl125876125914_
                                                       _e125881125917_
                                                       _hd125880125920_
                                                       _tl125879125922_
                                                       _e125884125925_
                                                       _hd125883125928_
                                                       _tl125882125930_)
                                                      (___kont126077126078_))))
                                              (___kont126077126078_))
                                          (___kont126077126078_))))
                                  (___kont126077126078_))))
                          (___kont126077126078_))))
                  (___kont126077126078_)))))))
    (define gxc#collect-type-define-values%
      (lambda (_stx125722_)
        (let* ((___stx126109126110_ _stx125722_)
               (_g125725125756_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126109126110_)))))
          (let ((___kont126111126112_
                 (lambda (_L125838_ _L125839_)
                   (let ((_sym125855_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L125839_))))
                     (if (let ((__tmp128169 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp128169 _sym125855_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym125855_))
                         (if (let ()
                               (declare (not safe))
                               (gxc#optimizer-lookup-type _sym125855_))
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"skipping type inference for already declared type "
                                _sym125855_))
                             (let ((_type125856125858_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#apply-basic-expression-type
                                       _L125838_))))
                               (if _type125856125858_
                                   (let ((_type125861_ _type125856125858_))
                                     (declare (not safe))
                                     (gxc#optimizer-declare-type!__0
                                      _sym125855_
                                      _type125861_))
                                   '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__0 _L125838_)))))
                (___kont126113126114_
                 (lambda (_L125785_ _L125786_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__0 _L125785_)))))
            (let ((___match126142126143_
                   (lambda (_e125731125806_
                            _hd125730125809_
                            _tl125729125811_
                            _e125734125814_
                            _hd125733125817_
                            _tl125732125819_
                            _e125737125822_
                            _hd125736125825_
                            _tl125735125827_
                            _e125740125830_
                            _hd125739125833_
                            _tl125738125835_)
                     (let ((_L125838_ _hd125739125833_)
                           (_L125839_ _hd125736125825_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L125839_))
                           (___kont126111126112_ _L125838_ _L125839_)
                           (___kont126113126114_
                            _hd125739125833_
                            _hd125733125817_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx126109126110_))
                  (let ((_e125731125806_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx126109126110_))))
                    (let ((_tl125729125811_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125731125806_)))
                          (_hd125730125809_
                           (let ()
                             (declare (not safe))
                             (##car _e125731125806_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl125729125811_))
                          (let ((_e125734125814_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl125729125811_))))
                            (let ((_tl125732125819_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125734125814_)))
                                  (_hd125733125817_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125734125814_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd125733125817_))
                                  (let ((_e125737125822_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd125733125817_))))
                                    (let ((_tl125735125827_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125737125822_)))
                                          (_hd125736125825_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125737125822_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125735125827_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125732125819_))
                                              (let ((_e125740125830_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125732125819_))))
                                                (let ((_tl125738125835_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125740125830_)))
                                                      (_hd125739125833_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125740125830_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125738125835_))
                                                      (___match126142126143_
                                                       _e125731125806_
                                                       _hd125730125809_
                                                       _tl125729125811_
                                                       _e125734125814_
                                                       _hd125733125817_
                                                       _tl125732125819_
                                                       _e125737125822_
                                                       _hd125736125825_
                                                       _tl125735125827_
                                                       _e125740125830_
                                                       _hd125739125833_
                                                       _tl125738125835_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125725125756_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125725125756_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125732125819_))
                                              (let ((_e125751125777_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125732125819_))))
                                                (let ((_tl125749125782_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125751125777_)))
                                                      (_hd125750125780_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125751125777_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125749125782_))
                                                      (___kont126113126114_
                                                       _hd125750125780_
                                                       _hd125733125817_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125725125756_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125725125756_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125732125819_))
                                      (let ((_e125751125777_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125732125819_))))
                                        (let ((_tl125749125782_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125751125777_)))
                                              (_hd125750125780_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125751125777_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125749125782_))
                                              (___kont126113126114_
                                               _hd125750125780_
                                               _hd125733125817_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125725125756_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125725125756_))))))
                          (let () (declare (not safe)) (_g125725125756_)))))
                  (let () (declare (not safe)) (_g125725125756_))))))))
    (define gxc#collect-type-let-values%
      (lambda (_stx125507_)
        (letrec ((_collect-e125509_
                  (lambda (_hd125666_ _expr125667_)
                    (let* ((___stx126165126166_ _hd125666_)
                           (_g125670125680_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx126165126166_)))))
                      (let ((___kont126167126168_
                             (lambda (_L125700_)
                               (let ((_sym125711_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#identifier-symbol _L125700_))))
                                 (if (let ((__tmp128170
                                            (gxc#current-compile-mutators)))
                                       (declare (not safe))
                                       (hash-get __tmp128170 _sym125711_))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#verbose
                                        '"skipping type declaration for mutable binding "
                                        _sym125711_))
                                     (let ((_type125712125714_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-basic-expression-type
                                               _expr125667_))))
                                       (if _type125712125714_
                                           (let ((_type125717_
                                                  _type125712125714_))
                                             (declare (not safe))
                                             (gxc#optimizer-declare-type!__%
                                              _sym125711_
                                              _type125717_
                                              '#t))
                                           '#f))))))
                            (___kont126169126170_ (lambda () '#!void)))
                        (let ((___match126178126179_
                               (lambda (_e125675125692_
                                        _hd125674125695_
                                        _tl125673125697_)
                                 (let ((_L125700_ _hd125674125695_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _L125700_))
                                       (___kont126167126168_ _L125700_)
                                       (___kont126169126170_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx126165126166_))
                              (let ((_e125675125692_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx126165126166_))))
                                (let ((_tl125673125697_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125675125692_)))
                                      (_hd125674125695_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125675125692_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125673125697_))
                                      (___match126178126179_
                                       _e125675125692_
                                       _hd125674125695_
                                       _tl125673125697_)
                                      (___kont126169126170_))))
                              (___kont126169126170_))))))))
          (let* ((_g125511125546_
                  (lambda (_g125512125543_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g125512125543_))))
                 (_g125510125663_
                  (lambda (_g125512125549_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g125512125549_))
                        (let ((_e125518125551_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g125512125549_))))
                          (let ((_hd125517125554_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e125518125551_)))
                                (_tl125516125556_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e125518125551_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl125516125556_))
                                (let ((_e125521125559_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl125516125556_))))
                                  (let ((_hd125520125562_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e125521125559_)))
                                        (_tl125519125564_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e125521125559_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd125520125562_))
                                        (let ((_g128171_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd125520125562_
                                                  '0))))
                                          (begin
                                            (let ((_g128172_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g128171_)
                                                         (##vector-length
                                                          _g128171_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g128172_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g128172_)))
                                            (let ((_target125522125567_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g128171_
                                                      0)))
                                                  (_tl125524125569_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g128171_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125524125569_))
                                                  (letrec ((_loop125525125572_
                                                            (lambda (_hd125523125575_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr125529125577_
                             _hd125530125579_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd125523125575_))
                          (let ((_e125526125582_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd125523125575_))))
                            (let ((_lp-hd125527125585_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125526125582_)))
                                  (_lp-tl125528125587_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125526125582_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _lp-hd125527125585_))
                                  (let ((_e125535125590_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _lp-hd125527125585_))))
                                    (let ((_hd125534125593_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125535125590_)))
                                          (_tl125533125595_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125535125590_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl125533125595_))
                                          (let ((_e125538125598_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl125533125595_))))
                                            (let ((_hd125537125601_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e125538125598_)))
                                                  (_tl125536125603_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e125538125598_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125536125603_))
                                                  (let ((__tmp128177
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _hd125537125601_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr125529125577_)))
                (__tmp128176
                 (let ()
                   (declare (not safe))
                   (cons _hd125534125593_ _hd125530125579_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_loop125525125572_
                                                     _lp-tl125528125587_
                                                     __tmp128177
                                                     __tmp128176))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125511125546_
                                                     _g125512125549_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g125511125546_
                                             _g125512125549_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g125511125546_ _g125512125549_)))))
                          (let ((_expr125531125606_
                                 (reverse _expr125529125577_))
                                (_hd125532125608_ (reverse _hd125530125579_)))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl125519125564_))
                                (let ((_e125541125611_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl125519125564_))))
                                  (let ((_hd125540125614_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e125541125611_)))
                                        (_tl125539125616_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e125541125611_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl125539125616_))
                                        ((lambda (_L125619_
                                                  _L125620_
                                                  _L125621_)
                                           (for-each
                                            _collect-e125509_
                                            (let ((__tmp128173
                                                   (lambda (_g125641125644_
                                                            _g125642125646_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g125641125644_
                                                             _g125642125646_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp128173
                                                      '()
                                                      _L125621_))
                                            (let ((__tmp128174
                                                   (lambda (_g125648125651_
                                                            _g125649125653_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g125648125651_
                                                             _g125649125653_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp128174
                                                      '()
                                                      _L125620_)))
                                           (for-each
                                            gxc#compile-e
                                            (let ((__tmp128175
                                                   (lambda (_g125655125658_
                                                            _g125656125660_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g125655125658_
                                                             _g125656125660_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp128175
                                                      '()
                                                      _L125620_)))
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _L125619_)))
                                         _hd125540125614_
                                         _expr125531125606_
                                         _hd125532125608_)
                                        (let ()
                                          (declare (not safe))
                                          (_g125511125546_ _g125512125549_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g125511125546_ _g125512125549_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop125525125572_
                                                       _target125522125567_
                                                       '()
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125511125546_
                                                     _g125512125549_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g125511125546_ _g125512125549_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g125511125546_ _g125512125549_)))))
                        (let ()
                          (declare (not safe))
                          (_g125511125546_ _g125512125549_))))))
            (declare (not safe))
            (_g125510125663_ _stx125507_)))))
    (define gxc#collect-type-call%
      (lambda (_stx124999_)
        (let* ((___stx126181126182_ _stx124999_)
               (_g125003125118_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126181126182_)))))
          (let ((___kont126183126184_
                 (lambda (_L125457_ _L125458_ _L125459_ _L125460_ _L125461_)
                   (let ((__tmp128181
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L125460_)))
                         (__tmp128180
                          (let () (declare (not safe)) (gx#stx-e _L125459_)))
                         (__tmp128179
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L125458_)))
                         (__tmp128178
                          (let () (declare (not safe)) (gx#stx-e _L125457_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp128181
                      __tmp128180
                      __tmp128179
                      __tmp128178))))
                (___kont126185126186_
                 (lambda (_L125285_ _L125286_ _L125287_ _L125288_)
                   (let ((__tmp128184
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L125287_)))
                         (__tmp128183
                          (let () (declare (not safe)) (gx#stx-e _L125286_)))
                         (__tmp128182
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L125285_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp128184
                      __tmp128183
                      __tmp128182
                      '#f))))
                (___kont126187126188_
                 (lambda (_L125155_)
                   (for-each
                    gxc#compile-e
                    (let ((__tmp128185
                           (lambda (_g125168125171_ _g125169125173_)
                             (let ()
                               (declare (not safe))
                               (cons _g125168125171_ _g125169125173_)))))
                      (declare (not safe))
                      (foldr1 __tmp128185 '() _L125155_))))))
            (let* ((___match126438126439_
                    (lambda (_e125104125123_
                             _hd125103125126_
                             _tl125102125128_
                             ___splice126189126190_
                             _target125105125131_
                             _tl125107125133_)
                      (letrec ((_loop125108125136_
                                (lambda (_hd125106125139_ _expr125112125141_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd125106125139_))
                                      (let ((_e125109125144_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd125106125139_))))
                                        (let ((_lp-tl125111125149_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125109125144_)))
                                              (_lp-hd125110125147_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125109125144_))))
                                          (let ((__tmp128186
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd125110125147_
                                                         _expr125112125141_))))
                                            (declare (not safe))
                                            (_loop125108125136_
                                             _lp-tl125111125149_
                                             __tmp128186))))
                                      (let ((_expr125113125152_
                                             (reverse _expr125112125141_)))
                                        (___kont126187126188_
                                         _expr125113125152_))))))
                        (let ()
                          (declare (not safe))
                          (_loop125108125136_ _target125105125131_ '())))))
                   (___match126318126319_
                    (lambda (_e125012125329_
                             _hd125011125332_
                             _tl125010125334_
                             _e125015125337_
                             _hd125014125340_
                             _tl125013125342_
                             _e125018125345_
                             _hd125017125348_
                             _tl125016125350_
                             _e125021125353_
                             _hd125020125356_
                             _tl125019125358_
                             _e125024125361_
                             _hd125023125364_
                             _tl125022125366_
                             _e125027125369_
                             _hd125026125372_
                             _tl125025125374_
                             _e125030125377_
                             _hd125029125380_
                             _tl125028125382_
                             _e125033125385_
                             _hd125032125388_
                             _tl125031125390_
                             _e125036125393_
                             _hd125035125396_
                             _tl125034125398_
                             _e125039125401_
                             _hd125038125404_
                             _tl125037125406_
                             _e125042125409_
                             _hd125041125412_
                             _tl125040125414_
                             _e125045125417_
                             _hd125044125420_
                             _tl125043125422_
                             _e125048125425_
                             _hd125047125428_
                             _tl125046125430_
                             _e125051125433_
                             _hd125050125436_
                             _tl125049125438_
                             _e125054125441_
                             _hd125053125444_
                             _tl125052125446_
                             _e125057125449_
                             _hd125056125452_
                             _tl125055125454_)
                      (let ((_L125457_ _hd125056125452_)
                            (_L125458_ _hd125047125428_)
                            (_L125459_ _hd125038125404_)
                            (_L125460_ _hd125029125380_)
                            (_L125461_ _hd125020125356_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _L125461_
                               'bind-method!))
                            (___kont126183126184_
                             _L125457_
                             _L125458_
                             _L125459_
                             _L125460_
                             _L125461_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl125010125334_))
                                (let ((___splice126189126190_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl125010125334_
                                          '0))))
                                  (let ((_tl125107125133_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice126189126190_
                                            '1)))
                                        (_target125105125131_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice126189126190_
                                            '0))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl125107125133_))
                                        (___match126438126439_
                                         _e125012125329_
                                         _hd125011125332_
                                         _tl125010125334_
                                         ___splice126189126190_
                                         _target125105125131_
                                         _tl125107125133_)
                                        (let ()
                                          (declare (not safe))
                                          (_g125003125118_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g125003125118_))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx126181126182_))
                  (let ((_e125012125329_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx126181126182_))))
                    (let ((_tl125010125334_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125012125329_)))
                          (_hd125011125332_
                           (let ()
                             (declare (not safe))
                             (##car _e125012125329_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl125010125334_))
                          (let ((_e125015125337_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl125010125334_))))
                            (let ((_tl125013125342_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125015125337_)))
                                  (_hd125014125340_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125015125337_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd125014125340_))
                                  (let ((_e125018125345_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd125014125340_))))
                                    (let ((_tl125016125350_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125018125345_)))
                                          (_hd125017125348_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125018125345_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd125017125348_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd125017125348_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl125016125350_))
                                                  (let ((_e125021125353_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl125016125350_))))
                                                    (let ((_tl125019125358_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e125021125353_)))
                                                          (_hd125020125356_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e125021125353_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl125019125358_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl125013125342_))
                      (let ((_e125024125361_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl125013125342_))))
                        (let ((_tl125022125366_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125024125361_)))
                              (_hd125023125364_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125024125361_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd125023125364_))
                              (let ((_e125027125369_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd125023125364_))))
                                (let ((_tl125025125374_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125027125369_)))
                                      (_hd125026125372_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125027125369_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd125026125372_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd125026125372_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125025125374_))
                                              (let ((_e125030125377_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125025125374_))))
                                                (let ((_tl125028125382_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125030125377_)))
                                                      (_hd125029125380_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125030125377_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125028125382_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl125022125366_))
                                                          (let ((_e125033125385_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl125022125366_))))
                    (let ((_tl125031125390_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125033125385_)))
                          (_hd125032125388_
                           (let ()
                             (declare (not safe))
                             (##car _e125033125385_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd125032125388_))
                          (let ((_e125036125393_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd125032125388_))))
                            (let ((_tl125034125398_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125036125393_)))
                                  (_hd125035125396_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125036125393_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd125035125396_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd125035125396_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl125034125398_))
                                          (let ((_e125039125401_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl125034125398_))))
                                            (let ((_tl125037125406_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e125039125401_)))
                                                  (_hd125038125404_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e125039125401_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125037125406_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl125031125390_))
                                                      (let ((_e125042125409_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl125031125390_))))
                (let ((_tl125040125414_
                       (let () (declare (not safe)) (##cdr _e125042125409_)))
                      (_hd125041125412_
                       (let () (declare (not safe)) (##car _e125042125409_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd125041125412_))
                      (let ((_e125045125417_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd125041125412_))))
                        (let ((_tl125043125422_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125045125417_)))
                              (_hd125044125420_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125045125417_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd125044125420_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd125044125420_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125043125422_))
                                      (let ((_e125048125425_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125043125422_))))
                                        (let ((_tl125046125430_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125048125425_)))
                                              (_hd125047125428_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125048125425_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125046125430_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl125040125414_))
                                                  (let ((_e125051125433_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl125040125414_))))
                                                    (let ((_tl125049125438_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e125051125433_)))
                                                          (_hd125050125436_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e125051125433_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd125050125436_))
                                                          (let ((_e125054125441_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd125050125436_))))
                    (let ((_tl125052125446_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125054125441_)))
                          (_hd125053125444_
                           (let ()
                             (declare (not safe))
                             (##car _e125054125441_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd125053125444_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd125053125444_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl125052125446_))
                                  (let ((_e125057125449_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl125052125446_))))
                                    (let ((_tl125055125454_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125057125449_)))
                                          (_hd125056125452_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125057125449_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125055125454_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125049125438_))
                                              (___match126318126319_
                                               _e125012125329_
                                               _hd125011125332_
                                               _tl125010125334_
                                               _e125015125337_
                                               _hd125014125340_
                                               _tl125013125342_
                                               _e125018125345_
                                               _hd125017125348_
                                               _tl125016125350_
                                               _e125021125353_
                                               _hd125020125356_
                                               _tl125019125358_
                                               _e125024125361_
                                               _hd125023125364_
                                               _tl125022125366_
                                               _e125027125369_
                                               _hd125026125372_
                                               _tl125025125374_
                                               _e125030125377_
                                               _hd125029125380_
                                               _tl125028125382_
                                               _e125033125385_
                                               _hd125032125388_
                                               _tl125031125390_
                                               _e125036125393_
                                               _hd125035125396_
                                               _tl125034125398_
                                               _e125039125401_
                                               _hd125038125404_
                                               _tl125037125406_
                                               _e125042125409_
                                               _hd125041125412_
                                               _tl125040125414_
                                               _e125045125417_
                                               _hd125044125420_
                                               _tl125043125422_
                                               _e125048125425_
                                               _hd125047125428_
                                               _tl125046125430_
                                               _e125051125433_
                                               _hd125050125436_
                                               _tl125049125438_
                                               _e125054125441_
                                               _hd125053125444_
                                               _tl125052125446_
                                               _e125057125449_
                                               _hd125056125452_
                                               _tl125055125454_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl125010125334_))
                                                  (let ((___splice126189126190_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl125010125334_
                                                            '0))))
                                                    (let ((_tl125107125133_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126189126190_
                                                              '1)))
                                                          (_target125105125131_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126189126190_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl125107125133_))
                                                          (___match126438126439_
                                                           _e125012125329_
                                                           _hd125011125332_
                                                           _tl125010125334_
                                                           ___splice126189126190_
                                                           _target125105125131_
                                                           _tl125107125133_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g125003125118_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125003125118_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl125010125334_))
                                              (let ((___splice126189126190_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl125010125334_
                                                        '0))))
                                                (let ((_tl125107125133_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126189126190_
                                                          '1)))
                                                      (_target125105125131_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126189126190_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125107125133_))
                                                      (___match126438126439_
                                                       _e125012125329_
                                                       _hd125011125332_
                                                       _tl125010125334_
                                                       ___splice126189126190_
                                                       _target125105125131_
                                                       _tl125107125133_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125003125118_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125003125118_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl125010125334_))
                                      (let ((___splice126189126190_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl125010125334_
                                                '0))))
                                        (let ((_tl125107125133_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126189126190_
                                                  '1)))
                                              (_target125105125131_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126189126190_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125107125133_))
                                              (___match126438126439_
                                               _e125012125329_
                                               _hd125011125332_
                                               _tl125010125334_
                                               ___splice126189126190_
                                               _target125105125131_
                                               _tl125107125133_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125003125118_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125003125118_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl125010125334_))
                                  (let ((___splice126189126190_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl125010125334_
                                            '0))))
                                    (let ((_tl125107125133_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126189126190_
                                              '1)))
                                          (_target125105125131_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126189126190_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125107125133_))
                                          (___match126438126439_
                                           _e125012125329_
                                           _hd125011125332_
                                           _tl125010125334_
                                           ___splice126189126190_
                                           _target125105125131_
                                           _tl125107125133_)
                                          (let ()
                                            (declare (not safe))
                                            (_g125003125118_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g125003125118_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl125010125334_))
                              (let ((___splice126189126190_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl125010125334_
                                        '0))))
                                (let ((_tl125107125133_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126189126190_
                                          '1)))
                                      (_target125105125131_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126189126190_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125107125133_))
                                      (___match126438126439_
                                       _e125012125329_
                                       _hd125011125332_
                                       _tl125010125334_
                                       ___splice126189126190_
                                       _target125105125131_
                                       _tl125107125133_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125003125118_)))))
                              (let ()
                                (declare (not safe))
                                (_g125003125118_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl125010125334_))
                      (let ((___splice126189126190_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl125010125334_ '0))))
                        (let ((_tl125107125133_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126189126190_ '1)))
                              (_target125105125131_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126189126190_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl125107125133_))
                              (___match126438126439_
                               _e125012125329_
                               _hd125011125332_
                               _tl125010125334_
                               ___splice126189126190_
                               _target125105125131_
                               _tl125107125133_)
                              (let ()
                                (declare (not safe))
                                (_g125003125118_)))))
                      (let () (declare (not safe)) (_g125003125118_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125040125414_))
                                                      (if (let ((__tmp128187
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp128187 'bind-method!))
                  (let ((_L125285_ _hd125047125428_)
                        (_L125286_ _hd125038125404_)
                        (_L125287_ _hd125029125380_)
                        (_L125288_ _hd125020125356_))
                    (___kont126185126186_
                     _L125285_
                     _L125286_
                     _L125287_
                     _L125288_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl125010125334_))
                      (let ((___splice126189126190_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl125010125334_ '0))))
                        (let ((_tl125107125133_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126189126190_ '1)))
                              (_target125105125131_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126189126190_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl125107125133_))
                              (___match126438126439_
                               _e125012125329_
                               _hd125011125332_
                               _tl125010125334_
                               ___splice126189126190_
                               _target125105125131_
                               _tl125107125133_)
                              (let ()
                                (declare (not safe))
                                (_g125003125118_)))))
                      (let () (declare (not safe)) (_g125003125118_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl125010125334_))
                  (let ((___splice126189126190_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl125010125334_ '0))))
                    (let ((_tl125107125133_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126189126190_ '1)))
                          (_target125105125131_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126189126190_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl125107125133_))
                          (___match126438126439_
                           _e125012125329_
                           _hd125011125332_
                           _tl125010125334_
                           ___splice126189126190_
                           _target125105125131_
                           _tl125107125133_)
                          (let () (declare (not safe)) (_g125003125118_)))))
                  (let () (declare (not safe)) (_g125003125118_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl125010125334_))
                                                  (let ((___splice126189126190_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl125010125334_
                                                            '0))))
                                                    (let ((_tl125107125133_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126189126190_
                                                              '1)))
                                                          (_target125105125131_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126189126190_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl125107125133_))
                                                          (___match126438126439_
                                                           _e125012125329_
                                                           _hd125011125332_
                                                           _tl125010125334_
                                                           ___splice126189126190_
                                                           _target125105125131_
                                                           _tl125107125133_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g125003125118_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125003125118_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl125010125334_))
                                          (let ((___splice126189126190_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl125010125334_
                                                    '0))))
                                            (let ((_tl125107125133_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126189126190_
                                                      '1)))
                                                  (_target125105125131_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126189126190_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125107125133_))
                                                  (___match126438126439_
                                                   _e125012125329_
                                                   _hd125011125332_
                                                   _tl125010125334_
                                                   ___splice126189126190_
                                                   _target125105125131_
                                                   _tl125107125133_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125003125118_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g125003125118_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl125010125334_))
                                      (let ((___splice126189126190_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl125010125334_
                                                '0))))
                                        (let ((_tl125107125133_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126189126190_
                                                  '1)))
                                              (_target125105125131_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126189126190_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125107125133_))
                                              (___match126438126439_
                                               _e125012125329_
                                               _hd125011125332_
                                               _tl125010125334_
                                               ___splice126189126190_
                                               _target125105125131_
                                               _tl125107125133_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125003125118_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125003125118_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl125010125334_))
                                  (let ((___splice126189126190_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl125010125334_
                                            '0))))
                                    (let ((_tl125107125133_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126189126190_
                                              '1)))
                                          (_target125105125131_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126189126190_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125107125133_))
                                          (___match126438126439_
                                           _e125012125329_
                                           _hd125011125332_
                                           _tl125010125334_
                                           ___splice126189126190_
                                           _target125105125131_
                                           _tl125107125133_)
                                          (let ()
                                            (declare (not safe))
                                            (_g125003125118_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g125003125118_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl125010125334_))
                          (let ((___splice126189126190_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl125010125334_
                                    '0))))
                            (let ((_tl125107125133_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice126189126190_ '1)))
                                  (_target125105125131_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice126189126190_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl125107125133_))
                                  (___match126438126439_
                                   _e125012125329_
                                   _hd125011125332_
                                   _tl125010125334_
                                   ___splice126189126190_
                                   _target125105125131_
                                   _tl125107125133_)
                                  (let ()
                                    (declare (not safe))
                                    (_g125003125118_)))))
                          (let () (declare (not safe)) (_g125003125118_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl125010125334_))
                  (let ((___splice126189126190_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl125010125334_ '0))))
                    (let ((_tl125107125133_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126189126190_ '1)))
                          (_target125105125131_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126189126190_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl125107125133_))
                          (___match126438126439_
                           _e125012125329_
                           _hd125011125332_
                           _tl125010125334_
                           ___splice126189126190_
                           _target125105125131_
                           _tl125107125133_)
                          (let () (declare (not safe)) (_g125003125118_)))))
                  (let () (declare (not safe)) (_g125003125118_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl125010125334_))
                                                      (let ((___splice126189126190_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl125010125334_ '0))))
                (let ((_tl125107125133_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice126189126190_ '1)))
                      (_target125105125131_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice126189126190_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl125107125133_))
                      (___match126438126439_
                       _e125012125329_
                       _hd125011125332_
                       _tl125010125334_
                       ___splice126189126190_
                       _target125105125131_
                       _tl125107125133_)
                      (let () (declare (not safe)) (_g125003125118_)))))
              (let () (declare (not safe)) (_g125003125118_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl125010125334_))
                                              (let ((___splice126189126190_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl125010125334_
                                                        '0))))
                                                (let ((_tl125107125133_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126189126190_
                                                          '1)))
                                                      (_target125105125131_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126189126190_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125107125133_))
                                                      (___match126438126439_
                                                       _e125012125329_
                                                       _hd125011125332_
                                                       _tl125010125334_
                                                       ___splice126189126190_
                                                       _target125105125131_
                                                       _tl125107125133_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125003125118_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125003125118_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl125010125334_))
                                          (let ((___splice126189126190_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl125010125334_
                                                    '0))))
                                            (let ((_tl125107125133_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126189126190_
                                                      '1)))
                                                  (_target125105125131_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126189126190_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125107125133_))
                                                  (___match126438126439_
                                                   _e125012125329_
                                                   _hd125011125332_
                                                   _tl125010125334_
                                                   ___splice126189126190_
                                                   _target125105125131_
                                                   _tl125107125133_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125003125118_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g125003125118_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl125010125334_))
                                      (let ((___splice126189126190_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl125010125334_
                                                '0))))
                                        (let ((_tl125107125133_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126189126190_
                                                  '1)))
                                              (_target125105125131_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126189126190_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125107125133_))
                                              (___match126438126439_
                                               _e125012125329_
                                               _hd125011125332_
                                               _tl125010125334_
                                               ___splice126189126190_
                                               _target125105125131_
                                               _tl125107125133_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125003125118_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125003125118_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl125010125334_))
                              (let ((___splice126189126190_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl125010125334_
                                        '0))))
                                (let ((_tl125107125133_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126189126190_
                                          '1)))
                                      (_target125105125131_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126189126190_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125107125133_))
                                      (___match126438126439_
                                       _e125012125329_
                                       _hd125011125332_
                                       _tl125010125334_
                                       ___splice126189126190_
                                       _target125105125131_
                                       _tl125107125133_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125003125118_)))))
                              (let ()
                                (declare (not safe))
                                (_g125003125118_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl125010125334_))
                      (let ((___splice126189126190_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl125010125334_ '0))))
                        (let ((_tl125107125133_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126189126190_ '1)))
                              (_target125105125131_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126189126190_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl125107125133_))
                              (___match126438126439_
                               _e125012125329_
                               _hd125011125332_
                               _tl125010125334_
                               ___splice126189126190_
                               _target125105125131_
                               _tl125107125133_)
                              (let ()
                                (declare (not safe))
                                (_g125003125118_)))))
                      (let () (declare (not safe)) (_g125003125118_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl125010125334_))
                  (let ((___splice126189126190_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl125010125334_ '0))))
                    (let ((_tl125107125133_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126189126190_ '1)))
                          (_target125105125131_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126189126190_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl125107125133_))
                          (___match126438126439_
                           _e125012125329_
                           _hd125011125332_
                           _tl125010125334_
                           ___splice126189126190_
                           _target125105125131_
                           _tl125107125133_)
                          (let () (declare (not safe)) (_g125003125118_)))))
                  (let () (declare (not safe)) (_g125003125118_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl125010125334_))
                                                  (let ((___splice126189126190_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl125010125334_
                                                            '0))))
                                                    (let ((_tl125107125133_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126189126190_
                                                              '1)))
                                                          (_target125105125131_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126189126190_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl125107125133_))
                                                          (___match126438126439_
                                                           _e125012125329_
                                                           _hd125011125332_
                                                           _tl125010125334_
                                                           ___splice126189126190_
                                                           _target125105125131_
                                                           _tl125107125133_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g125003125118_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125003125118_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl125010125334_))
                                              (let ((___splice126189126190_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl125010125334_
                                                        '0))))
                                                (let ((_tl125107125133_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126189126190_
                                                          '1)))
                                                      (_target125105125131_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126189126190_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125107125133_))
                                                      (___match126438126439_
                                                       _e125012125329_
                                                       _hd125011125332_
                                                       _tl125010125334_
                                                       ___splice126189126190_
                                                       _target125105125131_
                                                       _tl125107125133_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125003125118_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125003125118_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl125010125334_))
                                          (let ((___splice126189126190_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl125010125334_
                                                    '0))))
                                            (let ((_tl125107125133_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126189126190_
                                                      '1)))
                                                  (_target125105125131_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126189126190_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125107125133_))
                                                  (___match126438126439_
                                                   _e125012125329_
                                                   _hd125011125332_
                                                   _tl125010125334_
                                                   ___splice126189126190_
                                                   _target125105125131_
                                                   _tl125107125133_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125003125118_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g125003125118_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl125010125334_))
                                  (let ((___splice126189126190_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl125010125334_
                                            '0))))
                                    (let ((_tl125107125133_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126189126190_
                                              '1)))
                                          (_target125105125131_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126189126190_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125107125133_))
                                          (___match126438126439_
                                           _e125012125329_
                                           _hd125011125332_
                                           _tl125010125334_
                                           ___splice126189126190_
                                           _target125105125131_
                                           _tl125107125133_)
                                          (let ()
                                            (declare (not safe))
                                            (_g125003125118_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g125003125118_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl125010125334_))
                          (let ((___splice126189126190_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl125010125334_
                                    '0))))
                            (let ((_tl125107125133_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice126189126190_ '1)))
                                  (_target125105125131_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice126189126190_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl125107125133_))
                                  (___match126438126439_
                                   _e125012125329_
                                   _hd125011125332_
                                   _tl125010125334_
                                   ___splice126189126190_
                                   _target125105125131_
                                   _tl125107125133_)
                                  (let ()
                                    (declare (not safe))
                                    (_g125003125118_)))))
                          (let () (declare (not safe)) (_g125003125118_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl125010125334_))
                      (let ((___splice126189126190_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl125010125334_ '0))))
                        (let ((_tl125107125133_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126189126190_ '1)))
                              (_target125105125131_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126189126190_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl125107125133_))
                              (___match126438126439_
                               _e125012125329_
                               _hd125011125332_
                               _tl125010125334_
                               ___splice126189126190_
                               _target125105125131_
                               _tl125107125133_)
                              (let ()
                                (declare (not safe))
                                (_g125003125118_)))))
                      (let () (declare (not safe)) (_g125003125118_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl125010125334_))
                                                      (let ((___splice126189126190_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl125010125334_ '0))))
                (let ((_tl125107125133_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice126189126190_ '1)))
                      (_target125105125131_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice126189126190_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl125107125133_))
                      (___match126438126439_
                       _e125012125329_
                       _hd125011125332_
                       _tl125010125334_
                       ___splice126189126190_
                       _target125105125131_
                       _tl125107125133_)
                      (let () (declare (not safe)) (_g125003125118_)))))
              (let () (declare (not safe)) (_g125003125118_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl125010125334_))
                                                  (let ((___splice126189126190_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl125010125334_
                                                            '0))))
                                                    (let ((_tl125107125133_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126189126190_
                                                              '1)))
                                                          (_target125105125131_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126189126190_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl125107125133_))
                                                          (___match126438126439_
                                                           _e125012125329_
                                                           _hd125011125332_
                                                           _tl125010125334_
                                                           ___splice126189126190_
                                                           _target125105125131_
                                                           _tl125107125133_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g125003125118_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125003125118_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl125010125334_))
                                              (let ((___splice126189126190_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl125010125334_
                                                        '0))))
                                                (let ((_tl125107125133_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126189126190_
                                                          '1)))
                                                      (_target125105125131_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126189126190_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125107125133_))
                                                      (___match126438126439_
                                                       _e125012125329_
                                                       _hd125011125332_
                                                       _tl125010125334_
                                                       ___splice126189126190_
                                                       _target125105125131_
                                                       _tl125107125133_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125003125118_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125003125118_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl125010125334_))
                                      (let ((___splice126189126190_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl125010125334_
                                                '0))))
                                        (let ((_tl125107125133_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126189126190_
                                                  '1)))
                                              (_target125105125131_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126189126190_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125107125133_))
                                              (___match126438126439_
                                               _e125012125329_
                                               _hd125011125332_
                                               _tl125010125334_
                                               ___splice126189126190_
                                               _target125105125131_
                                               _tl125107125133_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125003125118_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125003125118_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl125010125334_))
                              (let ((___splice126189126190_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl125010125334_
                                        '0))))
                                (let ((_tl125107125133_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126189126190_
                                          '1)))
                                      (_target125105125131_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126189126190_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125107125133_))
                                      (___match126438126439_
                                       _e125012125329_
                                       _hd125011125332_
                                       _tl125010125334_
                                       ___splice126189126190_
                                       _target125105125131_
                                       _tl125107125133_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125003125118_)))))
                              (let ()
                                (declare (not safe))
                                (_g125003125118_))))))
                  (let () (declare (not safe)) (_g125003125118_))))))))
    (define gxc#current-compile-type-closure (make-parameter '#f))
    (define gxc#basic-expression-type-begin%
      (lambda (_stx124939_)
        (let* ((___stx126441126442_ _stx124939_)
               (_g124942124955_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126441126442_)))))
          (let ((___kont126443126444_
                 (lambda (_L124983_)
                   (let () (declare (not safe)) (gxc#compile-e__0 _L124983_))))
                (___kont126445126446_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx126441126442_))
                (let ((_e124947124967_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx126441126442_))))
                  (let ((_tl124945124972_
                         (let () (declare (not safe)) (##cdr _e124947124967_)))
                        (_hd124946124970_
                         (let ()
                           (declare (not safe))
                           (##car _e124947124967_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl124945124972_))
                        (let ((_e124950124975_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl124945124972_))))
                          (let ((_tl124948124980_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e124950124975_)))
                                (_hd124949124978_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e124950124975_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl124948124980_))
                                (___kont126443126444_ _hd124949124978_)
                                (___kont126445126446_))))
                        (___kont126445126446_))))
                (___kont126445126446_))))))
    (define gxc#basic-expression-type-annotations
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_stx124819_)
        (let* ((_g124821124838_
                (lambda (_g124822124835_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124822124835_))))
               (_g124820124936_
                (lambda (_g124822124841_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124822124841_))
                      (let ((_e124827124843_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124822124841_))))
                        (let ((_hd124826124846_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124827124843_)))
                              (_tl124825124848_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124827124843_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124825124848_))
                              (let ((_e124830124851_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124825124848_))))
                                (let ((_hd124829124854_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124830124851_)))
                                      (_tl124828124856_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124830124851_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124828124856_))
                                      (let ((_e124833124859_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124828124856_))))
                                        (let ((_hd124832124862_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124833124859_)))
                                              (_tl124831124864_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124833124859_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124831124864_))
                                              ((lambda (_L124867_ _L124868_)
                                                 (let* ((___stx126463126464_
                                                         _L124868_)
                                                        (_g124884124895_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx126463126464_)))))
                                                   (let ((___kont126465126466_
                                                          (lambda (_L124915_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L124916_)
                    (let ((_$e124928_
                           (let ((__tmp128188
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _L124916_))))
                             (declare (not safe))
                             (hash-get
                              gxc#basic-expression-type-annotations
                              __tmp128188))))
                      (if _$e124928_
                          ((lambda (_type-e124931_)
                             (_type-e124931_ _stx124819_ _L124868_))
                           _$e124928_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _L124867_))))))
                 (___kont126467126468_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__0 _L124867_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((___match126474126475_
                                                            (lambda (_e124890124907_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd124889124910_
                             _tl124888124912_)
                      (let ((_L124915_ _tl124888124912_)
                            (_L124916_ _hd124889124910_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L124916_))
                            (___kont126465126466_ _L124915_ _L124916_)
                            (___kont126467126468_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? ___stx126463126464_))
                   (let ((_e124890124907_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e ___stx126463126464_))))
                     (let ((_tl124888124912_
                            (let ()
                              (declare (not safe))
                              (##cdr _e124890124907_)))
                           (_hd124889124910_
                            (let ()
                              (declare (not safe))
                              (##car _e124890124907_))))
                       (___match126474126475_
                        _e124890124907_
                        _hd124889124910_
                        _tl124888124912_)))
                   (___kont126467126468_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd124832124862_
                                               _hd124829124854_)
                                              (let ()
                                                (declare (not safe))
                                                (_g124821124838_
                                                 _g124822124841_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124821124838_ _g124822124841_)))))
                              (let ()
                                (declare (not safe))
                                (_g124821124838_ _g124822124841_)))))
                      (let ()
                        (declare (not safe))
                        (_g124821124838_ _g124822124841_))))))
          (declare (not safe))
          (_g124820124936_ _stx124819_))))
    (define gxc#basic-expression-type-annotation-mop.class
      (lambda (_stx124663_ _ann124664_)
        (let* ((_g124666124703_
                (lambda (_g124667124700_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124667124700_))))
               (_g124665124816_
                (lambda (_g124667124706_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124667124706_))
                      (let ((_e124677124708_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124667124706_))))
                        (let ((_hd124676124711_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124677124708_)))
                              (_tl124675124713_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124677124708_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124675124713_))
                              (let ((_e124680124716_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124675124713_))))
                                (let ((_hd124679124719_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124680124716_)))
                                      (_tl124678124721_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124680124716_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124678124721_))
                                      (let ((_e124683124724_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124678124721_))))
                                        (let ((_hd124682124727_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124683124724_)))
                                              (_tl124681124729_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124683124724_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl124681124729_))
                                              (let ((_e124686124732_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl124681124729_))))
                                                (let ((_hd124685124735_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124686124732_)))
                                                      (_tl124684124737_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124686124732_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl124684124737_))
                                                      (let ((_e124689124740_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl124684124737_))))
                (let ((_hd124688124743_
                       (let () (declare (not safe)) (##car _e124689124740_)))
                      (_tl124687124745_
                       (let () (declare (not safe)) (##cdr _e124689124740_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl124687124745_))
                      (let ((_e124692124748_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl124687124745_))))
                        (let ((_hd124691124751_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124692124748_)))
                              (_tl124690124753_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124692124748_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124690124753_))
                              (let ((_e124695124756_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124690124753_))))
                                (let ((_hd124694124759_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124695124756_)))
                                      (_tl124693124761_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124695124756_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124693124761_))
                                      (let ((_e124698124764_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124693124761_))))
                                        (let ((_hd124697124767_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124698124764_)))
                                              (_tl124696124769_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124698124764_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124696124769_))
                                              ((lambda (_L124772_
                                                        _L124773_
                                                        _L124774_
                                                        _L124775_
                                                        _L124776_
                                                        _L124777_
                                                        _L124778_)
                                                 (let ((_type-id124808_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L124778_)))
                                                       (_super124809_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gxc#identifier-symbol
                                                           _L124777_)))
                                                       (_slots124810_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gx#stx-e
                                                           _L124776_)))
                                                       (_ctor-method124811_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L124775_)))
                                                       (_struct?124812_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L124774_)))
                                                       (_final?124813_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L124773_)))
                                                       (_metaclass124814_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _L124772_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#identifier-symbol
                                                               _L124772_))
                                                            '#f)))
                                                   (let ((__obj128146
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
                                                      __obj128146
                                                      _type-id124808_
                                                      _super124809_
                                                      _slots124810_
                                                      _ctor-method124811_
                                                      _struct?124812_
                                                      _final?124813_
                                                      _metaclass124814_)
                                                     __obj128146)))
                                               _hd124697124767_
                                               _hd124694124759_
                                               _hd124691124751_
                                               _hd124688124743_
                                               _hd124685124735_
                                               _hd124682124727_
                                               _hd124679124719_)
                                              (let ()
                                                (declare (not safe))
                                                (_g124666124703_
                                                 _g124667124706_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124666124703_ _g124667124706_)))))
                              (let ()
                                (declare (not safe))
                                (_g124666124703_ _g124667124706_)))))
                      (let ()
                        (declare (not safe))
                        (_g124666124703_ _g124667124706_)))))
              (let ()
                (declare (not safe))
                (_g124666124703_ _g124667124706_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g124666124703_
                                                 _g124667124706_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124666124703_ _g124667124706_)))))
                              (let ()
                                (declare (not safe))
                                (_g124666124703_ _g124667124706_)))))
                      (let ()
                        (declare (not safe))
                        (_g124666124703_ _g124667124706_))))))
          (declare (not safe))
          (_g124665124816_ _ann124664_))))
    (define gxc#basic-expression-type-annotation-mop.constructor
      (lambda (_stx124611_ _ann124612_)
        (let* ((_g124614124627_
                (lambda (_g124615124624_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124615124624_))))
               (_g124613124660_
                (lambda (_g124615124630_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124615124630_))
                      (let ((_e124619124632_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124615124630_))))
                        (let ((_hd124618124635_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124619124632_)))
                              (_tl124617124637_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124619124632_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124617124637_))
                              (let ((_e124622124640_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124617124637_))))
                                (let ((_hd124621124643_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124622124640_)))
                                      (_tl124620124645_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124622124640_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124620124645_))
                                      ((lambda (_L124648_)
                                         (let ((__tmp128189
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L124648_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!constructor::t
                                            __tmp128189)))
                                       _hd124621124643_)
                                      (let ()
                                        (declare (not safe))
                                        (_g124614124627_ _g124615124630_)))))
                              (let ()
                                (declare (not safe))
                                (_g124614124627_ _g124615124630_)))))
                      (let ()
                        (declare (not safe))
                        (_g124614124627_ _g124615124630_))))))
          (declare (not safe))
          (_g124613124660_ _ann124612_))))
    (define gxc#basic-expression-type-annotation-mop.predicate
      (lambda (_stx124559_ _ann124560_)
        (let* ((_g124562124575_
                (lambda (_g124563124572_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124563124572_))))
               (_g124561124608_
                (lambda (_g124563124578_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124563124578_))
                      (let ((_e124567124580_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124563124578_))))
                        (let ((_hd124566124583_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124567124580_)))
                              (_tl124565124585_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124567124580_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124565124585_))
                              (let ((_e124570124588_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124565124585_))))
                                (let ((_hd124569124591_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124570124588_)))
                                      (_tl124568124593_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124570124588_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124568124593_))
                                      ((lambda (_L124596_)
                                         (let ((__tmp128190
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L124596_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!predicate::t
                                            __tmp128190)))
                                       _hd124569124591_)
                                      (let ()
                                        (declare (not safe))
                                        (_g124562124575_ _g124563124578_)))))
                              (let ()
                                (declare (not safe))
                                (_g124562124575_ _g124563124578_)))))
                      (let ()
                        (declare (not safe))
                        (_g124562124575_ _g124563124578_))))))
          (declare (not safe))
          (_g124561124608_ _ann124560_))))
    (define gxc#basic-expression-type-annotation-mop.accessor
      (lambda (_stx124475_ _ann124476_)
        (let* ((_g124478124499_
                (lambda (_g124479124496_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124479124496_))))
               (_g124477124556_
                (lambda (_g124479124502_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124479124502_))
                      (let ((_e124485124504_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124479124502_))))
                        (let ((_hd124484124507_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124485124504_)))
                              (_tl124483124509_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124485124504_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124483124509_))
                              (let ((_e124488124512_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124483124509_))))
                                (let ((_hd124487124515_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124488124512_)))
                                      (_tl124486124517_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124488124512_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124486124517_))
                                      (let ((_e124491124520_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124486124517_))))
                                        (let ((_hd124490124523_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124491124520_)))
                                              (_tl124489124525_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124491124520_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl124489124525_))
                                              (let ((_e124494124528_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl124489124525_))))
                                                (let ((_hd124493124531_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124494124528_)))
                                                      (_tl124492124533_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124494124528_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124492124533_))
                                                      ((lambda (_L124536_
                                                                _L124537_
                                                                _L124538_)
                                                         (let ((__tmp128193
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L124538_)))
                       (__tmp128192
                        (let () (declare (not safe)) (gx#stx-e _L124537_)))
                       (__tmp128191
                        (let () (declare (not safe)) (gx#stx-e _L124536_))))
                   (declare (not safe))
                   (##structure
                    gxc#!accessor::t
                    __tmp128193
                    __tmp128192
                    __tmp128191)))
               _hd124493124531_
               _hd124490124523_
               _hd124487124515_)
              (let ()
                (declare (not safe))
                (_g124478124499_ _g124479124502_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g124478124499_
                                                 _g124479124502_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124478124499_ _g124479124502_)))))
                              (let ()
                                (declare (not safe))
                                (_g124478124499_ _g124479124502_)))))
                      (let ()
                        (declare (not safe))
                        (_g124478124499_ _g124479124502_))))))
          (declare (not safe))
          (_g124477124556_ _ann124476_))))
    (define gxc#basic-expression-type-annotation-mop.mutator
      (lambda (_stx124391_ _ann124392_)
        (let* ((_g124394124415_
                (lambda (_g124395124412_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124395124412_))))
               (_g124393124472_
                (lambda (_g124395124418_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124395124418_))
                      (let ((_e124401124420_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124395124418_))))
                        (let ((_hd124400124423_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124401124420_)))
                              (_tl124399124425_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124401124420_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124399124425_))
                              (let ((_e124404124428_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124399124425_))))
                                (let ((_hd124403124431_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124404124428_)))
                                      (_tl124402124433_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124404124428_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124402124433_))
                                      (let ((_e124407124436_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124402124433_))))
                                        (let ((_hd124406124439_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124407124436_)))
                                              (_tl124405124441_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124407124436_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl124405124441_))
                                              (let ((_e124410124444_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl124405124441_))))
                                                (let ((_hd124409124447_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124410124444_)))
                                                      (_tl124408124449_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124410124444_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124408124449_))
                                                      ((lambda (_L124452_
                                                                _L124453_
                                                                _L124454_)
                                                         (let ((__tmp128196
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L124454_)))
                       (__tmp128195
                        (let () (declare (not safe)) (gx#stx-e _L124453_)))
                       (__tmp128194
                        (let () (declare (not safe)) (gx#stx-e _L124452_))))
                   (declare (not safe))
                   (##structure
                    gxc#!mutator::t
                    __tmp128196
                    __tmp128195
                    __tmp128194)))
               _hd124409124447_
               _hd124406124439_
               _hd124403124431_)
              (let ()
                (declare (not safe))
                (_g124394124415_ _g124395124418_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g124394124415_
                                                 _g124395124418_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124394124415_ _g124395124418_)))))
                              (let ()
                                (declare (not safe))
                                (_g124394124415_ _g124395124418_)))))
                      (let ()
                        (declare (not safe))
                        (_g124394124415_ _g124395124418_))))))
          (declare (not safe))
          (_g124393124472_ _ann124392_))))
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
      (lambda (_stx123511_)
        (let* ((___stx126477126478_ _stx123511_)
               (_g123517123713_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126477126478_)))))
          (let ((___kont126479126480_
                 (lambda (_L124379_)
                   (let ((__obj128147
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj128147
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L124379_))
                      '#f)
                     __obj128147)))
                (___kont126481126482_
                 (lambda (_L124306_
                          _L124307_
                          _L124308_
                          _L124309_
                          _L124310_
                          _L124311_)
                   (let* ((_tab124361_
                           (let () (declare (not safe)) (gx#stx-e _L124308_)))
                          (_keys124363_
                           (if _tab124361_
                               (let ((__tmp128197 (vector->list _tab124361_)))
                                 (declare (not safe))
                                 (filter values __tmp128197))
                               '#f)))
                     (let ((__tmp128198
                            (let ()
                              (declare (not safe))
                              (gxc#identifier-symbol _L124307_))))
                       (declare (not safe))
                       (##structure
                        gxc#!kw-lambda::t
                        'kw-lambda
                        _keys124363_
                        __tmp128198)))))
                (___kont126483126484_
                 (lambda (_L124039_
                          _L124040_
                          _L124041_
                          _L124042_
                          _L124043_
                          _L124044_
                          _L124045_
                          _L124046_
                          _L124047_
                          _L124048_)
                   (let ((__tmp128200
                          (map gx#stx-e
                               (let ((__tmp128201
                                      (lambda (_g124141124144_ _g124142124146_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g124141124144_
                                                _g124142124146_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp128201 '() _L124041_))))
                         (__tmp128199
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L124045_))))
                     (declare (not safe))
                     (##structure
                      gxc#!kw-lambda-primary::t
                      'kw-lambda-dispatch
                      __tmp128200
                      __tmp128199))))
                (___kont126487126488_
                 (lambda (_L123749_)
                   (let ((__obj128148
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj128148
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L123749_))
                      (let ()
                        (declare (not safe))
                        (gxc#dispatch-lambda-form-delegate _L123749_)))
                     __obj128148)))
                (___kont126489126490_
                 (lambda (_L123726_)
                   (let ((__obj128149
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj128149
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L123726_))
                      '#f)
                     __obj128149))))
            (let* ((___match126796126797_
                    (lambda (_e123704123741_ _hd123703123744_ _tl123702123746_)
                      (let ((_L123749_ _tl123702123746_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#dispatch-lambda-form? _L123749_))
                            (___kont126487126488_ _L123749_)
                            (___kont126489126490_ _tl123702123746_)))))
                   (___match126790126791_
                    (lambda (_e123598123763_
                             _hd123597123766_
                             _tl123596123768_
                             _e123601123771_
                             _hd123600123774_
                             _tl123599123776_
                             _e123604123779_
                             _hd123603123782_
                             _tl123602123784_
                             _e123607123787_
                             _hd123606123790_
                             _tl123605123792_
                             _e123610123795_
                             _hd123609123798_
                             _tl123608123800_
                             _e123613123803_
                             _hd123612123806_
                             _tl123611123808_
                             _e123616123811_
                             _hd123615123814_
                             _tl123614123816_
                             _e123619123819_
                             _hd123618123822_
                             _tl123617123824_
                             _e123622123827_
                             _hd123621123830_
                             _tl123620123832_
                             _e123625123835_
                             _hd123624123838_
                             _tl123623123840_
                             _e123628123843_
                             _hd123627123846_
                             _tl123626123848_
                             _e123631123851_
                             _hd123630123854_
                             _tl123629123856_
                             _e123634123859_
                             _hd123633123862_
                             _tl123632123864_
                             _e123637123867_
                             _hd123636123870_
                             _tl123635123872_
                             ___splice126485126486_
                             _target123638123875_
                             _tl123640123877_
                             _e123655123880_
                             _hd123654123883_
                             _tl123653123885_
                             _e123658123888_
                             _hd123657123891_
                             _tl123656123893_
                             _e123661123896_
                             _hd123660123899_
                             _tl123659123901_)
                      (letrec ((_loop123641123904_
                                (lambda (_hd123639123907_
                                         _-absent-value123645123909_
                                         _key123646123911_
                                         _-xkwvar123647123913_
                                         _-hash-ref123648123915_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd123639123907_))
                                      (let ((_e123642123918_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd123639123907_))))
                                        (let ((_lp-tl123644123923_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123642123918_)))
                                              (_lp-hd123643123921_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123642123918_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _lp-hd123643123921_))
                                              (let ((_e123664123926_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _lp-hd123643123921_))))
                                                (let ((_tl123662123931_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e123664123926_)))
                                                      (_hd123663123929_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e123664123926_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd123663123929_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#call
                                                             _hd123663123929_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl123662123931_))
                      (let ((_e123667123934_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl123662123931_))))
                        (let ((_tl123665123939_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123667123934_)))
                              (_hd123666123937_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123667123934_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd123666123937_))
                              (let ((_e123670123942_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd123666123937_))))
                                (let ((_tl123668123947_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123670123942_)))
                                      (_hd123669123945_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123670123942_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd123669123945_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd123669123945_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl123668123947_))
                                              (let ((_e123673123950_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl123668123947_))))
                                                (let ((_tl123671123955_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e123673123950_)))
                                                      (_hd123672123953_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e123673123950_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl123671123955_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl123665123939_))
                                                          (let ((_e123676123958_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl123665123939_))))
                    (let ((_tl123674123963_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123676123958_)))
                          (_hd123675123961_
                           (let ()
                             (declare (not safe))
                             (##car _e123676123958_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd123675123961_))
                          (let ((_e123679123966_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd123675123961_))))
                            (let ((_tl123677123971_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123679123966_)))
                                  (_hd123678123969_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123679123966_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd123678123969_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd123678123969_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl123677123971_))
                                          (let ((_e123682123974_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl123677123971_))))
                                            (let ((_tl123680123979_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e123682123974_)))
                                                  (_hd123681123977_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e123682123974_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl123680123979_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl123674123963_))
                                                      (let ((_e123685123982_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl123674123963_))))
                (let ((_tl123683123987_
                       (let () (declare (not safe)) (##cdr _e123685123982_)))
                      (_hd123684123985_
                       (let () (declare (not safe)) (##car _e123685123982_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd123684123985_))
                      (let ((_e123688123990_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd123684123985_))))
                        (let ((_tl123686123995_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123688123990_)))
                              (_hd123687123993_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123688123990_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd123687123993_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#quote _hd123687123993_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl123686123995_))
                                      (let ((_e123691123998_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl123686123995_))))
                                        (let ((_tl123689124003_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123691123998_)))
                                              (_hd123690124001_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123691123998_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123689124003_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl123683123987_))
                                                  (let ((_e123694124006_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl123683123987_))))
                                                    (let ((_tl123692124011_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e123694124006_)))
                                                          (_hd123693124009_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e123694124006_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd123693124009_))
                                                          (let ((_e123697124014_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd123693124009_))))
                    (let ((_tl123695124019_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123697124014_)))
                          (_hd123696124017_
                           (let ()
                             (declare (not safe))
                             (##car _e123697124014_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd123696124017_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd123696124017_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl123695124019_))
                                  (let ((_e123700124022_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl123695124019_))))
                                    (let ((_tl123698124027_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123700124022_)))
                                          (_hd123699124025_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123700124022_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl123698124027_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123692124011_))
                                              (let ((__tmp128216
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd123699124025_
                                                             _-absent-value123645123909_)))
                                                    (__tmp128215
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd123690124001_
                                                             _key123646123911_)))
                                                    (__tmp128214
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd123681123977_
                                                             _-xkwvar123647123913_)))
                                                    (__tmp128213
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd123672123953_
                                                             _-hash-ref123648123915_))))
                                                (declare (not safe))
                                                (_loop123641123904_
                                                 _lp-tl123644123923_
                                                 __tmp128216
                                                 __tmp128215
                                                 __tmp128214
                                                 __tmp128213))
                                              (___match126796126797_
                                               _e123598123763_
                                               _hd123597123766_
                                               _tl123596123768_))
                                          (___match126796126797_
                                           _e123598123763_
                                           _hd123597123766_
                                           _tl123596123768_))))
                                  (___match126796126797_
                                   _e123598123763_
                                   _hd123597123766_
                                   _tl123596123768_))
                              (___match126796126797_
                               _e123598123763_
                               _hd123597123766_
                               _tl123596123768_))
                          (___match126796126797_
                           _e123598123763_
                           _hd123597123766_
                           _tl123596123768_))))
                  (___match126796126797_
                   _e123598123763_
                   _hd123597123766_
                   _tl123596123768_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126796126797_
                                                   _e123598123763_
                                                   _hd123597123766_
                                                   _tl123596123768_))
                                              (___match126796126797_
                                               _e123598123763_
                                               _hd123597123766_
                                               _tl123596123768_))))
                                      (___match126796126797_
                                       _e123598123763_
                                       _hd123597123766_
                                       _tl123596123768_))
                                  (___match126796126797_
                                   _e123598123763_
                                   _hd123597123766_
                                   _tl123596123768_))
                              (___match126796126797_
                               _e123598123763_
                               _hd123597123766_
                               _tl123596123768_))))
                      (___match126796126797_
                       _e123598123763_
                       _hd123597123766_
                       _tl123596123768_))))
              (___match126796126797_
               _e123598123763_
               _hd123597123766_
               _tl123596123768_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126796126797_
                                                   _e123598123763_
                                                   _hd123597123766_
                                                   _tl123596123768_))))
                                          (___match126796126797_
                                           _e123598123763_
                                           _hd123597123766_
                                           _tl123596123768_))
                                      (___match126796126797_
                                       _e123598123763_
                                       _hd123597123766_
                                       _tl123596123768_))
                                  (___match126796126797_
                                   _e123598123763_
                                   _hd123597123766_
                                   _tl123596123768_))))
                          (___match126796126797_
                           _e123598123763_
                           _hd123597123766_
                           _tl123596123768_))))
                  (___match126796126797_
                   _e123598123763_
                   _hd123597123766_
                   _tl123596123768_))
              (___match126796126797_
               _e123598123763_
               _hd123597123766_
               _tl123596123768_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match126796126797_
                                               _e123598123763_
                                               _hd123597123766_
                                               _tl123596123768_))
                                          (___match126796126797_
                                           _e123598123763_
                                           _hd123597123766_
                                           _tl123596123768_))
                                      (___match126796126797_
                                       _e123598123763_
                                       _hd123597123766_
                                       _tl123596123768_))))
                              (___match126796126797_
                               _e123598123763_
                               _hd123597123766_
                               _tl123596123768_))))
                      (___match126796126797_
                       _e123598123763_
                       _hd123597123766_
                       _tl123596123768_))
                  (___match126796126797_
                   _e123598123763_
                   _hd123597123766_
                   _tl123596123768_))
              (___match126796126797_
               _e123598123763_
               _hd123597123766_
               _tl123596123768_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match126796126797_
                                               _e123598123763_
                                               _hd123597123766_
                                               _tl123596123768_))))
                                      (let ((_-hash-ref123652124036_
                                             (reverse _-hash-ref123648123915_))
                                            (_-xkwvar123651124034_
                                             (reverse _-xkwvar123647123913_))
                                            (_key123650124032_
                                             (reverse _key123646123911_))
                                            (_-absent-value123649124030_
                                             (reverse _-absent-value123645123909_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl123605123792_))
                                            (let ((_L124039_ _hd123660123899_)
                                                  (_L124040_
                                                   _-absent-value123649124030_)
                                                  (_L124041_ _key123650124032_)
                                                  (_L124042_
                                                   _-xkwvar123651124034_)
                                                  (_L124043_
                                                   _-hash-ref123652124036_)
                                                  (_L124044_ _hd123636123870_)
                                                  (_L124045_ _hd123627123846_)
                                                  (_L124046_ _hd123618123822_)
                                                  (_L124047_ _tl123602123784_)
                                                  (_L124048_ _hd123603123782_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L124048_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L124047_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#runtime-identifier=?
                                                          _L124046_
                                                          'apply))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#free-identifier=?
                                                          _L124048_
                                                          _L124044_))
                                                       (let ((__tmp128211
                                                              (let ((__tmp128212
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g124101124104_ _g124102124106_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g124101124104_ _g124102124106_)))))
                        (declare (not safe))
                        (foldr1 __tmp128212 '() _L124041_))))
                 (declare (not safe))
                 (andmap1 gx#stx-keyword? __tmp128211))
               (let ((__tmp128210
                      (lambda (_g124108124110_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g124108124110_
                           'hash-ref))))
                     (__tmp128208
                      (let ((__tmp128209
                             (lambda (_g124112124115_ _g124113124117_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g124112124115_ _g124113124117_)))))
                        (declare (not safe))
                        (foldr1 __tmp128209 '() _L124043_))))
                 (declare (not safe))
                 (andmap1 __tmp128210 __tmp128208))
               (let ((__tmp128207
                      (lambda (_g124119124121_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g124119124121_
                           'absent-value))))
                     (__tmp128205
                      (let ((__tmp128206
                             (lambda (_g124123124126_ _g124124124128_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g124123124126_ _g124124124128_)))))
                        (declare (not safe))
                        (foldr1 __tmp128206 '() _L124040_))))
                 (declare (not safe))
                 (andmap1 __tmp128207 __tmp128205))
               (let ((__tmp128204
                      (lambda (_g124130124132_)
                        (let ()
                          (declare (not safe))
                          (gx#free-identifier=? _g124130124132_ _L124048_))))
                     (__tmp128202
                      (let ((__tmp128203
                             (lambda (_g124134124137_ _g124135124139_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g124134124137_ _g124135124139_)))))
                        (declare (not safe))
                        (foldr1 __tmp128203 '() _L124042_))))
                 (declare (not safe))
                 (andmap1 __tmp128204 __tmp128202)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont126483126484_
                                                   _L124039_
                                                   _L124040_
                                                   _L124041_
                                                   _L124042_
                                                   _L124043_
                                                   _L124044_
                                                   _L124045_
                                                   _L124046_
                                                   _L124047_
                                                   _L124048_)
                                                  (___match126796126797_
                                                   _e123598123763_
                                                   _hd123597123766_
                                                   _tl123596123768_)))
                                            (___match126796126797_
                                             _e123598123763_
                                             _hd123597123766_
                                             _tl123596123768_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop123641123904_
                           _target123638123875_
                           '()
                           '()
                           '()
                           '())))))
                   (___match126662126663_
                    (lambda (_e123598123763_
                             _hd123597123766_
                             _tl123596123768_
                             _e123601123771_
                             _hd123600123774_
                             _tl123599123776_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd123600123774_))
                          (let ((_e123604123779_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd123600123774_))))
                            (let ((_tl123602123784_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123604123779_)))
                                  (_hd123603123782_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123604123779_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl123599123776_))
                                  (let ((_e123607123787_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl123599123776_))))
                                    (let ((_tl123605123792_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123607123787_)))
                                          (_hd123606123790_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123607123787_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd123606123790_))
                                          (let ((_e123610123795_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd123606123790_))))
                                            (let ((_tl123608123800_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e123610123795_)))
                                                  (_hd123609123798_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e123610123795_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd123609123798_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd123609123798_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl123608123800_))
                                                          (let ((_e123613123803_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl123608123800_))))
                    (let ((_tl123611123808_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123613123803_)))
                          (_hd123612123806_
                           (let ()
                             (declare (not safe))
                             (##car _e123613123803_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd123612123806_))
                          (let ((_e123616123811_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd123612123806_))))
                            (let ((_tl123614123816_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123616123811_)))
                                  (_hd123615123814_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123616123811_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd123615123814_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd123615123814_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl123614123816_))
                                          (let ((_e123619123819_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl123614123816_))))
                                            (let ((_tl123617123824_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e123619123819_)))
                                                  (_hd123618123822_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e123619123819_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl123617123824_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl123611123808_))
                                                      (let ((_e123622123827_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl123611123808_))))
                (let ((_tl123620123832_
                       (let () (declare (not safe)) (##cdr _e123622123827_)))
                      (_hd123621123830_
                       (let () (declare (not safe)) (##car _e123622123827_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd123621123830_))
                      (let ((_e123625123835_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd123621123830_))))
                        (let ((_tl123623123840_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123625123835_)))
                              (_hd123624123838_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123625123835_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd123624123838_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd123624123838_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl123623123840_))
                                      (let ((_e123628123843_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl123623123840_))))
                                        (let ((_tl123626123848_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123628123843_)))
                                              (_hd123627123846_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123628123843_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123626123848_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl123620123832_))
                                                  (let ((_e123631123851_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl123620123832_))))
                                                    (let ((_tl123629123856_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e123631123851_)))
                                                          (_hd123630123854_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e123631123851_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd123630123854_))
                                                          (let ((_e123634123859_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd123630123854_))))
                    (let ((_tl123632123864_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123634123859_)))
                          (_hd123633123862_
                           (let ()
                             (declare (not safe))
                             (##car _e123634123859_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd123633123862_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd123633123862_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl123632123864_))
                                  (let ((_e123637123867_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl123632123864_))))
                                    (let ((_tl123635123872_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123637123867_)))
                                          (_hd123636123870_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123637123867_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl123635123872_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl123629123856_))
                                              (if (fx>= (let ()
                                                          (declare (not safe))
                                                          (gx#stx-length
                                                           _tl123629123856_))
                                                        '1)
                                                  (let ((___splice126485126486_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl123629123856_
                                                            '1))))
                                                    (let ((_tl123640123877_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126485126486_
                                                              '1)))
                                                          (_target123638123875_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126485126486_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl123640123877_))
                                                          (let ((_e123655123880_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl123640123877_))))
                    (let ((_tl123653123885_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123655123880_)))
                          (_hd123654123883_
                           (let ()
                             (declare (not safe))
                             (##car _e123655123880_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd123654123883_))
                          (let ((_e123658123888_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd123654123883_))))
                            (let ((_tl123656123893_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123658123888_)))
                                  (_hd123657123891_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123658123888_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd123657123891_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd123657123891_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl123656123893_))
                                          (let ((_e123661123896_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl123656123893_))))
                                            (let ((_tl123659123901_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e123661123896_)))
                                                  (_hd123660123899_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e123661123896_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl123659123901_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl123653123885_))
                                                      (___match126790126791_
                                                       _e123598123763_
                                                       _hd123597123766_
                                                       _tl123596123768_
                                                       _e123601123771_
                                                       _hd123600123774_
                                                       _tl123599123776_
                                                       _e123604123779_
                                                       _hd123603123782_
                                                       _tl123602123784_
                                                       _e123607123787_
                                                       _hd123606123790_
                                                       _tl123605123792_
                                                       _e123610123795_
                                                       _hd123609123798_
                                                       _tl123608123800_
                                                       _e123613123803_
                                                       _hd123612123806_
                                                       _tl123611123808_
                                                       _e123616123811_
                                                       _hd123615123814_
                                                       _tl123614123816_
                                                       _e123619123819_
                                                       _hd123618123822_
                                                       _tl123617123824_
                                                       _e123622123827_
                                                       _hd123621123830_
                                                       _tl123620123832_
                                                       _e123625123835_
                                                       _hd123624123838_
                                                       _tl123623123840_
                                                       _e123628123843_
                                                       _hd123627123846_
                                                       _tl123626123848_
                                                       _e123631123851_
                                                       _hd123630123854_
                                                       _tl123629123856_
                                                       _e123634123859_
                                                       _hd123633123862_
                                                       _tl123632123864_
                                                       _e123637123867_
                                                       _hd123636123870_
                                                       _tl123635123872_
                                                       ___splice126485126486_
                                                       _target123638123875_
                                                       _tl123640123877_
                                                       _e123655123880_
                                                       _hd123654123883_
                                                       _tl123653123885_
                                                       _e123658123888_
                                                       _hd123657123891_
                                                       _tl123656123893_
                                                       _e123661123896_
                                                       _hd123660123899_
                                                       _tl123659123901_)
                                                      (___match126796126797_
                                                       _e123598123763_
                                                       _hd123597123766_
                                                       _tl123596123768_))
                                                  (___match126796126797_
                                                   _e123598123763_
                                                   _hd123597123766_
                                                   _tl123596123768_))))
                                          (___match126796126797_
                                           _e123598123763_
                                           _hd123597123766_
                                           _tl123596123768_))
                                      (___match126796126797_
                                       _e123598123763_
                                       _hd123597123766_
                                       _tl123596123768_))
                                  (___match126796126797_
                                   _e123598123763_
                                   _hd123597123766_
                                   _tl123596123768_))))
                          (___match126796126797_
                           _e123598123763_
                           _hd123597123766_
                           _tl123596123768_))))
                  (___match126796126797_
                   _e123598123763_
                   _hd123597123766_
                   _tl123596123768_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126796126797_
                                                   _e123598123763_
                                                   _hd123597123766_
                                                   _tl123596123768_))
                                              (___match126796126797_
                                               _e123598123763_
                                               _hd123597123766_
                                               _tl123596123768_))
                                          (___match126796126797_
                                           _e123598123763_
                                           _hd123597123766_
                                           _tl123596123768_))))
                                  (___match126796126797_
                                   _e123598123763_
                                   _hd123597123766_
                                   _tl123596123768_))
                              (___match126796126797_
                               _e123598123763_
                               _hd123597123766_
                               _tl123596123768_))
                          (___match126796126797_
                           _e123598123763_
                           _hd123597123766_
                           _tl123596123768_))))
                  (___match126796126797_
                   _e123598123763_
                   _hd123597123766_
                   _tl123596123768_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126796126797_
                                                   _e123598123763_
                                                   _hd123597123766_
                                                   _tl123596123768_))
                                              (___match126796126797_
                                               _e123598123763_
                                               _hd123597123766_
                                               _tl123596123768_))))
                                      (___match126796126797_
                                       _e123598123763_
                                       _hd123597123766_
                                       _tl123596123768_))
                                  (___match126796126797_
                                   _e123598123763_
                                   _hd123597123766_
                                   _tl123596123768_))
                              (___match126796126797_
                               _e123598123763_
                               _hd123597123766_
                               _tl123596123768_))))
                      (___match126796126797_
                       _e123598123763_
                       _hd123597123766_
                       _tl123596123768_))))
              (___match126796126797_
               _e123598123763_
               _hd123597123766_
               _tl123596123768_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126796126797_
                                                   _e123598123763_
                                                   _hd123597123766_
                                                   _tl123596123768_))))
                                          (___match126796126797_
                                           _e123598123763_
                                           _hd123597123766_
                                           _tl123596123768_))
                                      (___match126796126797_
                                       _e123598123763_
                                       _hd123597123766_
                                       _tl123596123768_))
                                  (___match126796126797_
                                   _e123598123763_
                                   _hd123597123766_
                                   _tl123596123768_))))
                          (___match126796126797_
                           _e123598123763_
                           _hd123597123766_
                           _tl123596123768_))))
                  (___match126796126797_
                   _e123598123763_
                   _hd123597123766_
                   _tl123596123768_))
              (___match126796126797_
               _e123598123763_
               _hd123597123766_
               _tl123596123768_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126796126797_
                                                   _e123598123763_
                                                   _hd123597123766_
                                                   _tl123596123768_))))
                                          (___match126796126797_
                                           _e123598123763_
                                           _hd123597123766_
                                           _tl123596123768_))))
                                  (___match126796126797_
                                   _e123598123763_
                                   _hd123597123766_
                                   _tl123596123768_))))
                          (___match126796126797_
                           _e123598123763_
                           _hd123597123766_
                           _tl123596123768_))))
                   (___match126650126651_
                    (lambda (_e123531124154_
                             _hd123530124157_
                             _tl123529124159_
                             _e123534124162_
                             _hd123533124165_
                             _tl123532124167_
                             _e123537124170_
                             _hd123536124173_
                             _tl123535124175_
                             _e123540124178_
                             _hd123539124181_
                             _tl123538124183_
                             _e123543124186_
                             _hd123542124189_
                             _tl123541124191_
                             _e123546124194_
                             _hd123545124197_
                             _tl123544124199_
                             _e123549124202_
                             _hd123548124205_
                             _tl123547124207_
                             _e123552124210_
                             _hd123551124213_
                             _tl123550124215_
                             _e123555124218_
                             _hd123554124221_
                             _tl123553124223_
                             _e123558124226_
                             _hd123557124229_
                             _tl123556124231_
                             _e123561124234_
                             _hd123560124237_
                             _tl123559124239_
                             _e123564124242_
                             _hd123563124245_
                             _tl123562124247_
                             _e123567124250_
                             _hd123566124253_
                             _tl123565124255_
                             _e123570124258_
                             _hd123569124261_
                             _tl123568124263_
                             _e123573124266_
                             _hd123572124269_
                             _tl123571124271_
                             _e123576124274_
                             _hd123575124277_
                             _tl123574124279_
                             _e123579124282_
                             _hd123578124285_
                             _tl123577124287_
                             _e123582124290_
                             _hd123581124293_
                             _tl123580124295_
                             _e123585124298_
                             _hd123584124301_
                             _tl123583124303_)
                      (let ((_L124306_ _hd123584124301_)
                            (_L124307_ _hd123575124277_)
                            (_L124308_ _hd123566124253_)
                            (_L124309_ _hd123557124229_)
                            (_L124310_ _hd123548124205_)
                            (_L124311_ _hd123533124165_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L124311_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L124310_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _L124309_
                                    'keyword-dispatch))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L124311_ _L124306_)))
                            (___kont126481126482_
                             _L124306_
                             _L124307_
                             _L124308_
                             _L124309_
                             _L124310_
                             _L124311_)
                            (___match126662126663_
                             _e123531124154_
                             _hd123530124157_
                             _tl123529124159_
                             _e123534124162_
                             _hd123533124165_
                             _tl123532124167_)))))
                   (___match126504126505_
                    (lambda (_e123531124154_ _hd123530124157_ _tl123529124159_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl123529124159_))
                          (let ((_e123534124162_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl123529124159_))))
                            (let ((_tl123532124167_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123534124162_)))
                                  (_hd123533124165_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123534124162_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl123532124167_))
                                  (let ((_e123537124170_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl123532124167_))))
                                    (let ((_tl123535124175_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123537124170_)))
                                          (_hd123536124173_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123537124170_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd123536124173_))
                                          (let ((_e123540124178_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd123536124173_))))
                                            (let ((_tl123538124183_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e123540124178_)))
                                                  (_hd123539124181_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e123540124178_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd123539124181_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd123539124181_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl123538124183_))
                                                          (let ((_e123543124186_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl123538124183_))))
                    (let ((_tl123541124191_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123543124186_)))
                          (_hd123542124189_
                           (let ()
                             (declare (not safe))
                             (##car _e123543124186_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd123542124189_))
                          (let ((_e123546124194_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd123542124189_))))
                            (let ((_tl123544124199_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123546124194_)))
                                  (_hd123545124197_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123546124194_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd123545124197_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd123545124197_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl123544124199_))
                                          (let ((_e123549124202_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl123544124199_))))
                                            (let ((_tl123547124207_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e123549124202_)))
                                                  (_hd123548124205_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e123549124202_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl123547124207_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl123541124191_))
                                                      (let ((_e123552124210_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl123541124191_))))
                (let ((_tl123550124215_
                       (let () (declare (not safe)) (##cdr _e123552124210_)))
                      (_hd123551124213_
                       (let () (declare (not safe)) (##car _e123552124210_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd123551124213_))
                      (let ((_e123555124218_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd123551124213_))))
                        (let ((_tl123553124223_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123555124218_)))
                              (_hd123554124221_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123555124218_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd123554124221_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd123554124221_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl123553124223_))
                                      (let ((_e123558124226_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl123553124223_))))
                                        (let ((_tl123556124231_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123558124226_)))
                                              (_hd123557124229_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123558124226_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123556124231_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl123550124215_))
                                                  (let ((_e123561124234_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl123550124215_))))
                                                    (let ((_tl123559124239_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e123561124234_)))
                                                          (_hd123560124237_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e123561124234_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd123560124237_))
                                                          (let ((_e123564124242_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd123560124237_))))
                    (let ((_tl123562124247_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123564124242_)))
                          (_hd123563124245_
                           (let ()
                             (declare (not safe))
                             (##car _e123564124242_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd123563124245_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd123563124245_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl123562124247_))
                                  (let ((_e123567124250_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl123562124247_))))
                                    (let ((_tl123565124255_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123567124250_)))
                                          (_hd123566124253_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123567124250_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl123565124255_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl123559124239_))
                                              (let ((_e123570124258_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl123559124239_))))
                                                (let ((_tl123568124263_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e123570124258_)))
                                                      (_hd123569124261_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e123570124258_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd123569124261_))
                                                      (let ((_e123573124266_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd123569124261_))))
                (let ((_tl123571124271_
                       (let () (declare (not safe)) (##cdr _e123573124266_)))
                      (_hd123572124269_
                       (let () (declare (not safe)) (##car _e123573124266_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd123572124269_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd123572124269_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl123571124271_))
                              (let ((_e123576124274_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl123571124271_))))
                                (let ((_tl123574124279_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123576124274_)))
                                      (_hd123575124277_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123576124274_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl123574124279_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl123568124263_))
                                          (let ((_e123579124282_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl123568124263_))))
                                            (let ((_tl123577124287_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e123579124282_)))
                                                  (_hd123578124285_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e123579124282_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd123578124285_))
                                                  (let ((_e123582124290_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd123578124285_))))
                                                    (let ((_tl123580124295_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e123582124290_)))
                                                          (_hd123581124293_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e123582124290_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd123581124293_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _hd123581124293_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl123580124295_))
                          (let ((_e123585124298_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl123580124295_))))
                            (let ((_tl123583124303_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123585124298_)))
                                  (_hd123584124301_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123585124298_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl123583124303_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl123577124287_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl123535124175_))
                                          (___match126650126651_
                                           _e123531124154_
                                           _hd123530124157_
                                           _tl123529124159_
                                           _e123534124162_
                                           _hd123533124165_
                                           _tl123532124167_
                                           _e123537124170_
                                           _hd123536124173_
                                           _tl123535124175_
                                           _e123540124178_
                                           _hd123539124181_
                                           _tl123538124183_
                                           _e123543124186_
                                           _hd123542124189_
                                           _tl123541124191_
                                           _e123546124194_
                                           _hd123545124197_
                                           _tl123544124199_
                                           _e123549124202_
                                           _hd123548124205_
                                           _tl123547124207_
                                           _e123552124210_
                                           _hd123551124213_
                                           _tl123550124215_
                                           _e123555124218_
                                           _hd123554124221_
                                           _tl123553124223_
                                           _e123558124226_
                                           _hd123557124229_
                                           _tl123556124231_
                                           _e123561124234_
                                           _hd123560124237_
                                           _tl123559124239_
                                           _e123564124242_
                                           _hd123563124245_
                                           _tl123562124247_
                                           _e123567124250_
                                           _hd123566124253_
                                           _tl123565124255_
                                           _e123570124258_
                                           _hd123569124261_
                                           _tl123568124263_
                                           _e123573124266_
                                           _hd123572124269_
                                           _tl123571124271_
                                           _e123576124274_
                                           _hd123575124277_
                                           _tl123574124279_
                                           _e123579124282_
                                           _hd123578124285_
                                           _tl123577124287_
                                           _e123582124290_
                                           _hd123581124293_
                                           _tl123580124295_
                                           _e123585124298_
                                           _hd123584124301_
                                           _tl123583124303_)
                                          (___match126662126663_
                                           _e123531124154_
                                           _hd123530124157_
                                           _tl123529124159_
                                           _e123534124162_
                                           _hd123533124165_
                                           _tl123532124167_))
                                      (___match126662126663_
                                       _e123531124154_
                                       _hd123530124157_
                                       _tl123529124159_
                                       _e123534124162_
                                       _hd123533124165_
                                       _tl123532124167_))
                                  (___match126662126663_
                                   _e123531124154_
                                   _hd123530124157_
                                   _tl123529124159_
                                   _e123534124162_
                                   _hd123533124165_
                                   _tl123532124167_))))
                          (___match126662126663_
                           _e123531124154_
                           _hd123530124157_
                           _tl123529124159_
                           _e123534124162_
                           _hd123533124165_
                           _tl123532124167_))
                      (___match126662126663_
                       _e123531124154_
                       _hd123530124157_
                       _tl123529124159_
                       _e123534124162_
                       _hd123533124165_
                       _tl123532124167_))
                  (___match126662126663_
                   _e123531124154_
                   _hd123530124157_
                   _tl123529124159_
                   _e123534124162_
                   _hd123533124165_
                   _tl123532124167_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126662126663_
                                                   _e123531124154_
                                                   _hd123530124157_
                                                   _tl123529124159_
                                                   _e123534124162_
                                                   _hd123533124165_
                                                   _tl123532124167_))))
                                          (___match126662126663_
                                           _e123531124154_
                                           _hd123530124157_
                                           _tl123529124159_
                                           _e123534124162_
                                           _hd123533124165_
                                           _tl123532124167_))
                                      (___match126662126663_
                                       _e123531124154_
                                       _hd123530124157_
                                       _tl123529124159_
                                       _e123534124162_
                                       _hd123533124165_
                                       _tl123532124167_))))
                              (___match126662126663_
                               _e123531124154_
                               _hd123530124157_
                               _tl123529124159_
                               _e123534124162_
                               _hd123533124165_
                               _tl123532124167_))
                          (___match126662126663_
                           _e123531124154_
                           _hd123530124157_
                           _tl123529124159_
                           _e123534124162_
                           _hd123533124165_
                           _tl123532124167_))
                      (___match126662126663_
                       _e123531124154_
                       _hd123530124157_
                       _tl123529124159_
                       _e123534124162_
                       _hd123533124165_
                       _tl123532124167_))))
              (___match126662126663_
               _e123531124154_
               _hd123530124157_
               _tl123529124159_
               _e123534124162_
               _hd123533124165_
               _tl123532124167_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match126662126663_
                                               _e123531124154_
                                               _hd123530124157_
                                               _tl123529124159_
                                               _e123534124162_
                                               _hd123533124165_
                                               _tl123532124167_))
                                          (___match126662126663_
                                           _e123531124154_
                                           _hd123530124157_
                                           _tl123529124159_
                                           _e123534124162_
                                           _hd123533124165_
                                           _tl123532124167_))))
                                  (___match126662126663_
                                   _e123531124154_
                                   _hd123530124157_
                                   _tl123529124159_
                                   _e123534124162_
                                   _hd123533124165_
                                   _tl123532124167_))
                              (___match126662126663_
                               _e123531124154_
                               _hd123530124157_
                               _tl123529124159_
                               _e123534124162_
                               _hd123533124165_
                               _tl123532124167_))
                          (___match126662126663_
                           _e123531124154_
                           _hd123530124157_
                           _tl123529124159_
                           _e123534124162_
                           _hd123533124165_
                           _tl123532124167_))))
                  (___match126662126663_
                   _e123531124154_
                   _hd123530124157_
                   _tl123529124159_
                   _e123534124162_
                   _hd123533124165_
                   _tl123532124167_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126662126663_
                                                   _e123531124154_
                                                   _hd123530124157_
                                                   _tl123529124159_
                                                   _e123534124162_
                                                   _hd123533124165_
                                                   _tl123532124167_))
                                              (___match126662126663_
                                               _e123531124154_
                                               _hd123530124157_
                                               _tl123529124159_
                                               _e123534124162_
                                               _hd123533124165_
                                               _tl123532124167_))))
                                      (___match126662126663_
                                       _e123531124154_
                                       _hd123530124157_
                                       _tl123529124159_
                                       _e123534124162_
                                       _hd123533124165_
                                       _tl123532124167_))
                                  (___match126662126663_
                                   _e123531124154_
                                   _hd123530124157_
                                   _tl123529124159_
                                   _e123534124162_
                                   _hd123533124165_
                                   _tl123532124167_))
                              (___match126662126663_
                               _e123531124154_
                               _hd123530124157_
                               _tl123529124159_
                               _e123534124162_
                               _hd123533124165_
                               _tl123532124167_))))
                      (___match126662126663_
                       _e123531124154_
                       _hd123530124157_
                       _tl123529124159_
                       _e123534124162_
                       _hd123533124165_
                       _tl123532124167_))))
              (___match126662126663_
               _e123531124154_
               _hd123530124157_
               _tl123529124159_
               _e123534124162_
               _hd123533124165_
               _tl123532124167_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126662126663_
                                                   _e123531124154_
                                                   _hd123530124157_
                                                   _tl123529124159_
                                                   _e123534124162_
                                                   _hd123533124165_
                                                   _tl123532124167_))))
                                          (___match126662126663_
                                           _e123531124154_
                                           _hd123530124157_
                                           _tl123529124159_
                                           _e123534124162_
                                           _hd123533124165_
                                           _tl123532124167_))
                                      (___match126662126663_
                                       _e123531124154_
                                       _hd123530124157_
                                       _tl123529124159_
                                       _e123534124162_
                                       _hd123533124165_
                                       _tl123532124167_))
                                  (___match126662126663_
                                   _e123531124154_
                                   _hd123530124157_
                                   _tl123529124159_
                                   _e123534124162_
                                   _hd123533124165_
                                   _tl123532124167_))))
                          (___match126662126663_
                           _e123531124154_
                           _hd123530124157_
                           _tl123529124159_
                           _e123534124162_
                           _hd123533124165_
                           _tl123532124167_))))
                  (___match126662126663_
                   _e123531124154_
                   _hd123530124157_
                   _tl123529124159_
                   _e123534124162_
                   _hd123533124165_
                   _tl123532124167_))
              (___match126662126663_
               _e123531124154_
               _hd123530124157_
               _tl123529124159_
               _e123534124162_
               _hd123533124165_
               _tl123532124167_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126662126663_
                                                   _e123531124154_
                                                   _hd123530124157_
                                                   _tl123529124159_
                                                   _e123534124162_
                                                   _hd123533124165_
                                                   _tl123532124167_))))
                                          (___match126662126663_
                                           _e123531124154_
                                           _hd123530124157_
                                           _tl123529124159_
                                           _e123534124162_
                                           _hd123533124165_
                                           _tl123532124167_))))
                                  (___match126662126663_
                                   _e123531124154_
                                   _hd123530124157_
                                   _tl123529124159_
                                   _e123534124162_
                                   _hd123533124165_
                                   _tl123532124167_))))
                          (___match126796126797_
                           _e123531124154_
                           _hd123530124157_
                           _tl123529124159_)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx126477126478_))
                  (let ((_e123522124371_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx126477126478_))))
                    (let ((_tl123520124376_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123522124371_)))
                          (_hd123521124374_
                           (let ()
                             (declare (not safe))
                             (##car _e123522124371_))))
                      (if (gxc#current-compile-type-closure)
                          (let ((_L124379_ _tl123520124376_))
                            (___kont126479126480_ _L124379_))
                          (___match126504126505_
                           _e123522124371_
                           _hd123521124374_
                           _tl123520124376_))))
                  (let () (declare (not safe)) (_g123517123713_))))))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_stx123466_)
        (letrec ((_clause-e123468_
                  (lambda (_form123509_)
                    (let ((__obj128150
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
                       __obj128150
                       'case-lambda-clause
                       (let ()
                         (declare (not safe))
                         (gxc#lambda-form-arity _form123509_))
                       (if (let ((__tmp128217
                                  (gxc#current-compile-type-closure)))
                             (declare (not safe))
                             (not __tmp128217))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form? _form123509_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form-delegate
                                  _form123509_))
                               '#f)
                           '#f))
                      __obj128150))))
          (let* ((_g123470123480_
                  (lambda (_g123471123477_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g123471123477_))))
                 (_g123469123506_
                  (lambda (_g123471123483_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g123471123483_))
                        (let ((_e123475123485_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g123471123483_))))
                          (let ((_hd123474123488_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123475123485_)))
                                (_tl123473123490_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123475123485_))))
                            ((lambda (_L123493_)
                               (let ((_clauses123504_
                                      (map _clause-e123468_ _L123493_)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#!case-lambda::t
                                  'case-lambda
                                  _clauses123504_)))
                             _tl123473123490_)))
                        (let ()
                          (declare (not safe))
                          (_g123470123480_ _g123471123483_))))))
            (declare (not safe))
            (_g123469123506_ _stx123466_)))))
    (define gxc#basic-expression-type-let-values%
      (lambda (_stx123398_)
        (let* ((_g123400123417_
                (lambda (_g123401123414_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g123401123414_))))
               (_g123399123463_
                (lambda (_g123401123420_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g123401123420_))
                      (let ((_e123406123422_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g123401123420_))))
                        (let ((_hd123405123425_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123406123422_)))
                              (_tl123404123427_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123406123422_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl123404123427_))
                              (let ((_e123409123430_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl123404123427_))))
                                (let ((_hd123408123433_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123409123430_)))
                                      (_tl123407123435_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123409123430_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl123407123435_))
                                      (let ((_e123412123438_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl123407123435_))))
                                        (let ((_hd123411123441_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123412123438_)))
                                              (_tl123410123443_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123412123438_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123410123443_))
                                              ((lambda (_L123446_ _L123447_)
                                                 (let ((__tmp128218
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _L123446_)))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp128218
                                                    gxc#current-compile-type-closure
                                                    '#t)))
                                               _hd123411123441_
                                               _hd123408123433_)
                                              (let ()
                                                (declare (not safe))
                                                (_g123400123417_
                                                 _g123401123420_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g123400123417_ _g123401123420_)))))
                              (let ()
                                (declare (not safe))
                                (_g123400123417_ _g123401123420_)))))
                      (let ()
                        (declare (not safe))
                        (_g123400123417_ _g123401123420_))))))
          (declare (not safe))
          (_g123399123463_ _stx123398_))))
    (define gxc#basic-expression-type-builtin
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-call%
      (lambda (_stx123303_)
        (let* ((___stx126805126806_ _stx123303_)
               (_g123306123326_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126805126806_)))))
          (let ((___kont126807126808_
                 (lambda (_L123370_ _L123371_)
                   (let ((_type-e123388123390_
                          (let ((__tmp128219
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L123371_))))
                            (declare (not safe))
                            (hash-get
                             gxc#basic-expression-type-builtin
                             __tmp128219))))
                     (if _type-e123388123390_
                         (let ((_type-e123393_ _type-e123388123390_))
                           (_type-e123393_ _stx123303_ _L123370_))
                         '#f))))
                (___kont126809126810_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx126805126806_))
                (let ((_e123312123338_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx126805126806_))))
                  (let ((_tl123310123343_
                         (let () (declare (not safe)) (##cdr _e123312123338_)))
                        (_hd123311123341_
                         (let ()
                           (declare (not safe))
                           (##car _e123312123338_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl123310123343_))
                        (let ((_e123315123346_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl123310123343_))))
                          (let ((_tl123313123351_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123315123346_)))
                                (_hd123314123349_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123315123346_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd123314123349_))
                                (let ((_e123318123354_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd123314123349_))))
                                  (let ((_tl123316123359_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123318123354_)))
                                        (_hd123317123357_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123318123354_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd123317123357_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd123317123357_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl123316123359_))
                                                (let ((_e123321123362_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl123316123359_))))
                                                  (let ((_tl123319123367_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123321123362_)))
                                                        (_hd123320123365_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123321123362_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl123319123367_))
                                                        (___kont126807126808_
                                                         _tl123313123351_
                                                         _hd123320123365_)
                                                        (___kont126809126810_))))
                                                (___kont126809126810_))
                                            (___kont126809126810_))
                                        (___kont126809126810_))))
                                (___kont126809126810_))))
                        (___kont126809126810_))))
                (___kont126809126810_))))))
    (define gxc#basic-expression-type-ref%
      (lambda (_stx123252_)
        (let* ((_g123254123267_
                (lambda (_g123255123264_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g123255123264_))))
               (_g123253123300_
                (lambda (_g123255123270_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g123255123270_))
                      (let ((_e123259123272_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g123255123270_))))
                        (let ((_hd123258123275_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123259123272_)))
                              (_tl123257123277_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123259123272_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl123257123277_))
                              (let ((_e123262123280_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl123257123277_))))
                                (let ((_hd123261123283_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123262123280_)))
                                      (_tl123260123285_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123262123280_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl123260123285_))
                                      ((lambda (_L123288_)
                                         (let ((__tmp128220
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L123288_))))
                                           (declare (not safe))
                                           (gxc#optimizer-lookup-type
                                            __tmp128220)))
                                       _hd123261123283_)
                                      (let ()
                                        (declare (not safe))
                                        (_g123254123267_ _g123255123270_)))))
                              (let ()
                                (declare (not safe))
                                (_g123254123267_ _g123255123270_)))))
                      (let ()
                        (declare (not safe))
                        (_g123254123267_ _g123255123270_))))))
          (declare (not safe))
          (_g123253123300_ _stx123252_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_form122486_)
        (let* ((___stx126843126844_ _form122486_)
               (_g122491122648_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126843126844_)))))
          (let ((___kont126845126846_
                 (lambda (_L123172_ _L123173_ _L123174_) '#t))
                (___kont126851126852_
                 (lambda (_L122960_
                          _L122961_
                          _L122962_
                          _L122963_
                          _L122964_
                          _L122965_)
                   '#t))
                (___kont126857126858_
                 (lambda (_L122756_ _L122757_ _L122758_ _L122759_) '#t))
                (___kont126859126860_ (lambda () '#f)))
            (let* ((___match126984126985_
                    (lambda (_e122610122660_
                             _hd122609122663_
                             _tl122608122665_
                             _e122613122668_
                             _hd122612122671_
                             _tl122611122673_
                             _e122616122676_
                             _hd122615122679_
                             _tl122614122681_
                             _e122619122684_
                             _hd122618122687_
                             _tl122617122689_
                             _e122622122692_
                             _hd122621122695_
                             _tl122620122697_
                             _e122625122700_
                             _hd122624122703_
                             _tl122623122705_
                             _e122628122708_
                             _hd122627122711_
                             _tl122626122713_
                             _e122631122716_
                             _hd122630122719_
                             _tl122629122721_
                             _e122634122724_
                             _hd122633122727_
                             _tl122632122729_
                             _e122637122732_
                             _hd122636122735_
                             _tl122635122737_
                             _e122640122740_
                             _hd122639122743_
                             _tl122638122745_
                             _e122643122748_
                             _hd122642122751_
                             _tl122641122753_)
                      (let ((_L122756_ _hd122642122751_)
                            (_L122757_ _hd122633122727_)
                            (_L122758_ _hd122624122703_)
                            (_L122759_ _hd122609122663_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L122759_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L122758_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L122759_ _L122756_))
                                 (let ((__tmp128221
                                        (let ()
                                          (declare (not safe))
                                          (gx#free-identifier=?
                                           _L122757_
                                           _L122759_))))
                                   (declare (not safe))
                                   (not __tmp128221)))
                            (___kont126857126858_
                             _L122756_
                             _L122757_
                             _L122758_
                             _L122759_)
                            (___kont126859126860_)))))
                   (___match126956126957_
                    (lambda (_e122610122660_
                             _hd122609122663_
                             _tl122608122665_
                             _e122613122668_
                             _hd122612122671_
                             _tl122611122673_
                             _e122616122676_
                             _hd122615122679_
                             _tl122614122681_
                             _e122619122684_
                             _hd122618122687_
                             _tl122617122689_
                             _e122622122692_
                             _hd122621122695_
                             _tl122620122697_
                             _e122625122700_
                             _hd122624122703_
                             _tl122623122705_
                             _e122628122708_
                             _hd122627122711_
                             _tl122626122713_
                             _e122631122716_
                             _hd122630122719_
                             _tl122629122721_
                             _e122634122724_
                             _hd122633122727_
                             _tl122632122729_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl122626122713_))
                          (let ((_e122637122732_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl122626122713_))))
                            (let ((_tl122635122737_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e122637122732_)))
                                  (_hd122636122735_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e122637122732_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd122636122735_))
                                  (let ((_e122640122740_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd122636122735_))))
                                    (let ((_tl122638122745_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e122640122740_)))
                                          (_hd122639122743_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e122640122740_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd122639122743_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd122639122743_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl122638122745_))
                                                  (let ((_e122643122748_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl122638122745_))))
                                                    (let ((_tl122641122753_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e122643122748_)))
                                                          (_hd122642122751_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e122643122748_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl122641122753_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl122635122737_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl122611122673_))
                          (___match126984126985_
                           _e122610122660_
                           _hd122609122663_
                           _tl122608122665_
                           _e122613122668_
                           _hd122612122671_
                           _tl122611122673_
                           _e122616122676_
                           _hd122615122679_
                           _tl122614122681_
                           _e122619122684_
                           _hd122618122687_
                           _tl122617122689_
                           _e122622122692_
                           _hd122621122695_
                           _tl122620122697_
                           _e122625122700_
                           _hd122624122703_
                           _tl122623122705_
                           _e122628122708_
                           _hd122627122711_
                           _tl122626122713_
                           _e122631122716_
                           _hd122630122719_
                           _tl122629122721_
                           _e122634122724_
                           _hd122633122727_
                           _tl122632122729_
                           _e122637122732_
                           _hd122636122735_
                           _tl122635122737_
                           _e122640122740_
                           _hd122639122743_
                           _tl122638122745_
                           _e122643122748_
                           _hd122642122751_
                           _tl122641122753_)
                          (___kont126859126860_))
                      (___kont126859126860_))
                  (___kont126859126860_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont126859126860_))
                                              (___kont126859126860_))
                                          (___kont126859126860_))))
                                  (___kont126859126860_))))
                          (___kont126859126860_))))
                   (___match126886126887_
                    (lambda (_e122546122800_
                             _hd122545122803_
                             _tl122544122805_
                             ___splice126853126854_
                             _target122547122808_
                             _tl122549122810_)
                      (letrec ((_loop122550122813_
                                (lambda (_hd122548122816_ _arg122554122818_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd122548122816_))
                                      (let ((_e122551122821_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd122548122816_))))
                                        (let ((_lp-tl122553122826_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122551122821_)))
                                              (_lp-hd122552122824_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122551122821_))))
                                          (let ((__tmp128236
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd122552122824_
                                                         _arg122554122818_))))
                                            (declare (not safe))
                                            (_loop122550122813_
                                             _lp-tl122553122826_
                                             __tmp128236))))
                                      (let ((_arg122555122829_
                                             (reverse _arg122554122818_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl122544122805_))
                                            (let ((_e122558122832_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl122544122805_))))
                                              (let ((_tl122556122837_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122558122832_)))
                                                    (_hd122557122835_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122558122832_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd122557122835_))
                                                    (let ((_e122561122840_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd122557122835_))))
                                                      (let ((_tl122559122845_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122561122840_)))
                    (_hd122560122843_
                     (let () (declare (not safe)) (##car _e122561122840_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd122560122843_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd122560122843_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122559122845_))
                            (let ((_e122564122848_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122559122845_))))
                              (let ((_tl122562122853_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122564122848_)))
                                    (_hd122563122851_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122564122848_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd122563122851_))
                                    (let ((_e122567122856_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd122563122851_))))
                                      (let ((_tl122565122861_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e122567122856_)))
                                            (_hd122566122859_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e122567122856_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd122566122859_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd122566122859_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl122565122861_))
                                                    (let ((_e122570122864_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl122565122861_))))
                                                      (let ((_tl122568122869_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122570122864_)))
                    (_hd122569122867_
                     (let () (declare (not safe)) (##car _e122570122864_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl122568122869_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl122562122853_))
                        (let ((_e122573122872_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl122562122853_))))
                          (let ((_tl122571122877_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e122573122872_)))
                                (_hd122572122875_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e122573122872_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd122572122875_))
                                (let ((_e122576122880_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd122572122875_))))
                                  (let ((_tl122574122885_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122576122880_)))
                                        (_hd122575122883_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122576122880_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd122575122883_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd122575122883_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl122574122885_))
                                                (let ((_e122579122888_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl122574122885_))))
                                                  (let ((_tl122577122893_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122579122888_)))
                                                        (_hd122578122891_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122579122888_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl122577122893_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _tl122571122877_))
                                                            (if (fx>= (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#stx-length _tl122571122877_))
                              '1)
                        (let ((___splice126855126856_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl122571122877_
                                  '1))))
                          (let ((_tl122582122898_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice126855126856_ '1)))
                                (_target122580122896_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice126855126856_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl122582122898_))
                                (let ((_e122591122901_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl122582122898_))))
                                  (let ((_tl122589122906_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122591122901_)))
                                        (_hd122590122904_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122591122901_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd122590122904_))
                                        (let ((_e122594122909_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd122590122904_))))
                                          (let ((_tl122592122914_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e122594122909_)))
                                                (_hd122593122912_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e122594122909_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd122593122912_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd122593122912_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl122592122914_))
                                                        (let ((_e122597122917_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl122592122914_))))
                  (let ((_tl122595122922_
                         (let () (declare (not safe)) (##cdr _e122597122917_)))
                        (_hd122596122920_
                         (let ()
                           (declare (not safe))
                           (##car _e122597122917_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl122595122922_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl122589122906_))
                            (letrec ((_loop122583122925_
                                      (lambda (_hd122581122928_
                                               _xarg122587122930_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd122581122928_))
                                            (let ((_e122584122933_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd122581122928_))))
                                              (let ((_lp-tl122586122938_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122584122933_)))
                                                    (_lp-hd122585122936_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122584122933_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _lp-hd122585122936_))
                                                    (let ((_e122600122941_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _lp-hd122585122936_))))
                                                      (let ((_tl122598122946_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122600122941_)))
                    (_hd122599122944_
                     (let () (declare (not safe)) (##car _e122600122941_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd122599122944_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd122599122944_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122598122946_))
                            (let ((_e122603122949_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122598122946_))))
                              (let ((_tl122601122954_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122603122949_)))
                                    (_hd122602122952_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122603122949_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl122601122954_))
                                    (let ((__tmp128235
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd122602122952_
                                                   _xarg122587122930_))))
                                      (declare (not safe))
                                      (_loop122583122925_
                                       _lp-tl122586122938_
                                       __tmp128235))
                                    (___match126956126957_
                                     _e122546122800_
                                     _hd122545122803_
                                     _tl122544122805_
                                     _e122558122832_
                                     _hd122557122835_
                                     _tl122556122837_
                                     _e122561122840_
                                     _hd122560122843_
                                     _tl122559122845_
                                     _e122564122848_
                                     _hd122563122851_
                                     _tl122562122853_
                                     _e122567122856_
                                     _hd122566122859_
                                     _tl122565122861_
                                     _e122570122864_
                                     _hd122569122867_
                                     _tl122568122869_
                                     _e122573122872_
                                     _hd122572122875_
                                     _tl122571122877_
                                     _e122576122880_
                                     _hd122575122883_
                                     _tl122574122885_
                                     _e122579122888_
                                     _hd122578122891_
                                     _tl122577122893_))))
                            (___match126956126957_
                             _e122546122800_
                             _hd122545122803_
                             _tl122544122805_
                             _e122558122832_
                             _hd122557122835_
                             _tl122556122837_
                             _e122561122840_
                             _hd122560122843_
                             _tl122559122845_
                             _e122564122848_
                             _hd122563122851_
                             _tl122562122853_
                             _e122567122856_
                             _hd122566122859_
                             _tl122565122861_
                             _e122570122864_
                             _hd122569122867_
                             _tl122568122869_
                             _e122573122872_
                             _hd122572122875_
                             _tl122571122877_
                             _e122576122880_
                             _hd122575122883_
                             _tl122574122885_
                             _e122579122888_
                             _hd122578122891_
                             _tl122577122893_))
                        (___match126956126957_
                         _e122546122800_
                         _hd122545122803_
                         _tl122544122805_
                         _e122558122832_
                         _hd122557122835_
                         _tl122556122837_
                         _e122561122840_
                         _hd122560122843_
                         _tl122559122845_
                         _e122564122848_
                         _hd122563122851_
                         _tl122562122853_
                         _e122567122856_
                         _hd122566122859_
                         _tl122565122861_
                         _e122570122864_
                         _hd122569122867_
                         _tl122568122869_
                         _e122573122872_
                         _hd122572122875_
                         _tl122571122877_
                         _e122576122880_
                         _hd122575122883_
                         _tl122574122885_
                         _e122579122888_
                         _hd122578122891_
                         _tl122577122893_))
                    (___match126956126957_
                     _e122546122800_
                     _hd122545122803_
                     _tl122544122805_
                     _e122558122832_
                     _hd122557122835_
                     _tl122556122837_
                     _e122561122840_
                     _hd122560122843_
                     _tl122559122845_
                     _e122564122848_
                     _hd122563122851_
                     _tl122562122853_
                     _e122567122856_
                     _hd122566122859_
                     _tl122565122861_
                     _e122570122864_
                     _hd122569122867_
                     _tl122568122869_
                     _e122573122872_
                     _hd122572122875_
                     _tl122571122877_
                     _e122576122880_
                     _hd122575122883_
                     _tl122574122885_
                     _e122579122888_
                     _hd122578122891_
                     _tl122577122893_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match126956126957_
                                                     _e122546122800_
                                                     _hd122545122803_
                                                     _tl122544122805_
                                                     _e122558122832_
                                                     _hd122557122835_
                                                     _tl122556122837_
                                                     _e122561122840_
                                                     _hd122560122843_
                                                     _tl122559122845_
                                                     _e122564122848_
                                                     _hd122563122851_
                                                     _tl122562122853_
                                                     _e122567122856_
                                                     _hd122566122859_
                                                     _tl122565122861_
                                                     _e122570122864_
                                                     _hd122569122867_
                                                     _tl122568122869_
                                                     _e122573122872_
                                                     _hd122572122875_
                                                     _tl122571122877_
                                                     _e122576122880_
                                                     _hd122575122883_
                                                     _tl122574122885_
                                                     _e122579122888_
                                                     _hd122578122891_
                                                     _tl122577122893_))))
                                            (let ((_xarg122588122957_
                                                   (reverse _xarg122587122930_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl122556122837_))
                                                  (let ((_L122960_
                                                         _hd122596122920_)
                                                        (_L122961_
                                                         _xarg122588122957_)
                                                        (_L122962_
                                                         _hd122578122891_)
                                                        (_L122963_
                                                         _hd122569122867_)
                                                        (_L122964_
                                                         _tl122549122810_)
                                                        (_L122965_
                                                         _arg122555122829_))
                                                    (if (and (let ((__tmp128233
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp128234
                                   (lambda (_g123008123011_ _g123009123013_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g123008123011_
                                             _g123009123013_)))))
                              (declare (not safe))
                              (foldr1 __tmp128234 '() _L122965_))))
                       (declare (not safe))
                       (gx#identifier-list? __tmp128233))
                     (let () (declare (not safe)) (gx#identifier? _L122964_))
                     (let ()
                       (declare (not safe))
                       (gxc#runtime-identifier=? _L122963_ 'apply))
                     (fx= (length (let ((__tmp128231
                                         (lambda (_g123015123018_
                                                  _g123016123020_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g123015123018_
                                                   _g123016123020_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp128231 '() _L122965_)))
                          (length (let ((__tmp128232
                                         (lambda (_g123022123025_
                                                  _g123023123027_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g123022123025_
                                                   _g123023123027_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp128232 '() _L122961_))))
                     (let ((__tmp128229
                            (let ((__tmp128230
                                   (lambda (_g123029123032_ _g123030123034_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g123029123032_
                                             _g123030123034_)))))
                              (declare (not safe))
                              (foldr1 __tmp128230 '() _L122965_)))
                           (__tmp128227
                            (let ((__tmp128228
                                   (lambda (_g123036123039_ _g123037123041_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g123036123039_
                                             _g123037123041_)))))
                              (declare (not safe))
                              (foldr1 __tmp128228 '() _L122961_))))
                       (declare (not safe))
                       (andmap2 gx#free-identifier=? __tmp128229 __tmp128227))
                     (let ()
                       (declare (not safe))
                       (gx#free-identifier=? _L122964_ _L122960_))
                     (let ((__tmp128222
                            (let ((__tmp128226
                                   (lambda (_g123043123045_)
                                     (let ()
                                       (declare (not safe))
                                       (gx#free-identifier=?
                                        _g123043123045_
                                        _L122962_))))
                                  (__tmp128223
                                   (let ((__tmp128225
                                          (lambda (_g123047123050_
                                                   _g123048123052_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g123047123050_
                                                    _g123048123052_))))
                                         (__tmp128224
                                          (let ()
                                            (declare (not safe))
                                            (cons _L122964_ '()))))
                                     (declare (not safe))
                                     (foldr1 __tmp128225
                                             __tmp128224
                                             _L122965_))))
                              (declare (not safe))
                              (find __tmp128226 __tmp128223))))
                       (declare (not safe))
                       (not __tmp128222)))
                (___kont126851126852_
                 _L122960_
                 _L122961_
                 _L122962_
                 _L122963_
                 _L122964_
                 _L122965_)
                (___match126956126957_
                 _e122546122800_
                 _hd122545122803_
                 _tl122544122805_
                 _e122558122832_
                 _hd122557122835_
                 _tl122556122837_
                 _e122561122840_
                 _hd122560122843_
                 _tl122559122845_
                 _e122564122848_
                 _hd122563122851_
                 _tl122562122853_
                 _e122567122856_
                 _hd122566122859_
                 _tl122565122861_
                 _e122570122864_
                 _hd122569122867_
                 _tl122568122869_
                 _e122573122872_
                 _hd122572122875_
                 _tl122571122877_
                 _e122576122880_
                 _hd122575122883_
                 _tl122574122885_
                 _e122579122888_
                 _hd122578122891_
                 _tl122577122893_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126956126957_
                                                   _e122546122800_
                                                   _hd122545122803_
                                                   _tl122544122805_
                                                   _e122558122832_
                                                   _hd122557122835_
                                                   _tl122556122837_
                                                   _e122561122840_
                                                   _hd122560122843_
                                                   _tl122559122845_
                                                   _e122564122848_
                                                   _hd122563122851_
                                                   _tl122562122853_
                                                   _e122567122856_
                                                   _hd122566122859_
                                                   _tl122565122861_
                                                   _e122570122864_
                                                   _hd122569122867_
                                                   _tl122568122869_
                                                   _e122573122872_
                                                   _hd122572122875_
                                                   _tl122571122877_
                                                   _e122576122880_
                                                   _hd122575122883_
                                                   _tl122574122885_
                                                   _e122579122888_
                                                   _hd122578122891_
                                                   _tl122577122893_)))))))
                              (let ()
                                (declare (not safe))
                                (_loop122583122925_ _target122580122896_ '())))
                            (___match126956126957_
                             _e122546122800_
                             _hd122545122803_
                             _tl122544122805_
                             _e122558122832_
                             _hd122557122835_
                             _tl122556122837_
                             _e122561122840_
                             _hd122560122843_
                             _tl122559122845_
                             _e122564122848_
                             _hd122563122851_
                             _tl122562122853_
                             _e122567122856_
                             _hd122566122859_
                             _tl122565122861_
                             _e122570122864_
                             _hd122569122867_
                             _tl122568122869_
                             _e122573122872_
                             _hd122572122875_
                             _tl122571122877_
                             _e122576122880_
                             _hd122575122883_
                             _tl122574122885_
                             _e122579122888_
                             _hd122578122891_
                             _tl122577122893_))
                        (___match126956126957_
                         _e122546122800_
                         _hd122545122803_
                         _tl122544122805_
                         _e122558122832_
                         _hd122557122835_
                         _tl122556122837_
                         _e122561122840_
                         _hd122560122843_
                         _tl122559122845_
                         _e122564122848_
                         _hd122563122851_
                         _tl122562122853_
                         _e122567122856_
                         _hd122566122859_
                         _tl122565122861_
                         _e122570122864_
                         _hd122569122867_
                         _tl122568122869_
                         _e122573122872_
                         _hd122572122875_
                         _tl122571122877_
                         _e122576122880_
                         _hd122575122883_
                         _tl122574122885_
                         _e122579122888_
                         _hd122578122891_
                         _tl122577122893_))))
                (___match126956126957_
                 _e122546122800_
                 _hd122545122803_
                 _tl122544122805_
                 _e122558122832_
                 _hd122557122835_
                 _tl122556122837_
                 _e122561122840_
                 _hd122560122843_
                 _tl122559122845_
                 _e122564122848_
                 _hd122563122851_
                 _tl122562122853_
                 _e122567122856_
                 _hd122566122859_
                 _tl122565122861_
                 _e122570122864_
                 _hd122569122867_
                 _tl122568122869_
                 _e122573122872_
                 _hd122572122875_
                 _tl122571122877_
                 _e122576122880_
                 _hd122575122883_
                 _tl122574122885_
                 _e122579122888_
                 _hd122578122891_
                 _tl122577122893_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match126956126957_
                                                     _e122546122800_
                                                     _hd122545122803_
                                                     _tl122544122805_
                                                     _e122558122832_
                                                     _hd122557122835_
                                                     _tl122556122837_
                                                     _e122561122840_
                                                     _hd122560122843_
                                                     _tl122559122845_
                                                     _e122564122848_
                                                     _hd122563122851_
                                                     _tl122562122853_
                                                     _e122567122856_
                                                     _hd122566122859_
                                                     _tl122565122861_
                                                     _e122570122864_
                                                     _hd122569122867_
                                                     _tl122568122869_
                                                     _e122573122872_
                                                     _hd122572122875_
                                                     _tl122571122877_
                                                     _e122576122880_
                                                     _hd122575122883_
                                                     _tl122574122885_
                                                     _e122579122888_
                                                     _hd122578122891_
                                                     _tl122577122893_))
                                                (___match126956126957_
                                                 _e122546122800_
                                                 _hd122545122803_
                                                 _tl122544122805_
                                                 _e122558122832_
                                                 _hd122557122835_
                                                 _tl122556122837_
                                                 _e122561122840_
                                                 _hd122560122843_
                                                 _tl122559122845_
                                                 _e122564122848_
                                                 _hd122563122851_
                                                 _tl122562122853_
                                                 _e122567122856_
                                                 _hd122566122859_
                                                 _tl122565122861_
                                                 _e122570122864_
                                                 _hd122569122867_
                                                 _tl122568122869_
                                                 _e122573122872_
                                                 _hd122572122875_
                                                 _tl122571122877_
                                                 _e122576122880_
                                                 _hd122575122883_
                                                 _tl122574122885_
                                                 _e122579122888_
                                                 _hd122578122891_
                                                 _tl122577122893_))))
                                        (___match126956126957_
                                         _e122546122800_
                                         _hd122545122803_
                                         _tl122544122805_
                                         _e122558122832_
                                         _hd122557122835_
                                         _tl122556122837_
                                         _e122561122840_
                                         _hd122560122843_
                                         _tl122559122845_
                                         _e122564122848_
                                         _hd122563122851_
                                         _tl122562122853_
                                         _e122567122856_
                                         _hd122566122859_
                                         _tl122565122861_
                                         _e122570122864_
                                         _hd122569122867_
                                         _tl122568122869_
                                         _e122573122872_
                                         _hd122572122875_
                                         _tl122571122877_
                                         _e122576122880_
                                         _hd122575122883_
                                         _tl122574122885_
                                         _e122579122888_
                                         _hd122578122891_
                                         _tl122577122893_))))
                                (___match126956126957_
                                 _e122546122800_
                                 _hd122545122803_
                                 _tl122544122805_
                                 _e122558122832_
                                 _hd122557122835_
                                 _tl122556122837_
                                 _e122561122840_
                                 _hd122560122843_
                                 _tl122559122845_
                                 _e122564122848_
                                 _hd122563122851_
                                 _tl122562122853_
                                 _e122567122856_
                                 _hd122566122859_
                                 _tl122565122861_
                                 _e122570122864_
                                 _hd122569122867_
                                 _tl122568122869_
                                 _e122573122872_
                                 _hd122572122875_
                                 _tl122571122877_
                                 _e122576122880_
                                 _hd122575122883_
                                 _tl122574122885_
                                 _e122579122888_
                                 _hd122578122891_
                                 _tl122577122893_))))
                        (___match126956126957_
                         _e122546122800_
                         _hd122545122803_
                         _tl122544122805_
                         _e122558122832_
                         _hd122557122835_
                         _tl122556122837_
                         _e122561122840_
                         _hd122560122843_
                         _tl122559122845_
                         _e122564122848_
                         _hd122563122851_
                         _tl122562122853_
                         _e122567122856_
                         _hd122566122859_
                         _tl122565122861_
                         _e122570122864_
                         _hd122569122867_
                         _tl122568122869_
                         _e122573122872_
                         _hd122572122875_
                         _tl122571122877_
                         _e122576122880_
                         _hd122575122883_
                         _tl122574122885_
                         _e122579122888_
                         _hd122578122891_
                         _tl122577122893_))
                    (___match126956126957_
                     _e122546122800_
                     _hd122545122803_
                     _tl122544122805_
                     _e122558122832_
                     _hd122557122835_
                     _tl122556122837_
                     _e122561122840_
                     _hd122560122843_
                     _tl122559122845_
                     _e122564122848_
                     _hd122563122851_
                     _tl122562122853_
                     _e122567122856_
                     _hd122566122859_
                     _tl122565122861_
                     _e122570122864_
                     _hd122569122867_
                     _tl122568122869_
                     _e122573122872_
                     _hd122572122875_
                     _tl122571122877_
                     _e122576122880_
                     _hd122575122883_
                     _tl122574122885_
                     _e122579122888_
                     _hd122578122891_
                     _tl122577122893_))
                (___kont126859126860_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont126859126860_))
                                            (___kont126859126860_))
                                        (___kont126859126860_))))
                                (___kont126859126860_))))
                        (___kont126859126860_))
                    (___kont126859126860_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont126859126860_))
                                                (___kont126859126860_))
                                            (___kont126859126860_))))
                                    (___kont126859126860_))))
                            (___kont126859126860_))
                        (___kont126859126860_))
                    (___kont126859126860_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont126859126860_))))
                                            (___kont126859126860_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop122550122813_ _target122547122808_ '())))))
                   (___match126874126875_
                    (lambda (_e122498123060_
                             _hd122497123063_
                             _tl122496123065_
                             ___splice126847126848_
                             _target122499123068_
                             _tl122501123070_)
                      (letrec ((_loop122502123073_
                                (lambda (_hd122500123076_ _arg122506123078_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd122500123076_))
                                      (let ((_e122503123081_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd122500123076_))))
                                        (let ((_lp-tl122505123086_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122503123081_)))
                                              (_lp-hd122504123084_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122503123081_))))
                                          (let ((__tmp128250
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd122504123084_
                                                         _arg122506123078_))))
                                            (declare (not safe))
                                            (_loop122502123073_
                                             _lp-tl122505123086_
                                             __tmp128250))))
                                      (let ((_arg122507123089_
                                             (reverse _arg122506123078_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl122496123065_))
                                            (let ((_e122510123092_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl122496123065_))))
                                              (let ((_tl122508123097_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122510123092_)))
                                                    (_hd122509123095_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122510123092_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd122509123095_))
                                                    (let ((_e122513123100_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd122509123095_))))
                                                      (let ((_tl122511123105_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122513123100_)))
                    (_hd122512123103_
                     (let () (declare (not safe)) (##car _e122513123100_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd122512123103_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd122512123103_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122511123105_))
                            (let ((_e122516123108_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122511123105_))))
                              (let ((_tl122514123113_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122516123108_)))
                                    (_hd122515123111_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122516123108_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd122515123111_))
                                    (let ((_e122519123116_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd122515123111_))))
                                      (let ((_tl122517123121_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e122519123116_)))
                                            (_hd122518123119_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e122519123116_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd122518123119_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd122518123119_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl122517123121_))
                                                    (let ((_e122522123124_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl122517123121_))))
                                                      (let ((_tl122520123129_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122522123124_)))
                    (_hd122521123127_
                     (let () (declare (not safe)) (##car _e122522123124_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl122520123129_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl122514123113_))
                        (let ((___splice126849126850_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl122514123113_
                                  '0))))
                          (let ((_tl122525123134_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice126849126850_ '1)))
                                (_target122523123132_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice126849126850_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl122525123134_))
                                (letrec ((_loop122526123137_
                                          (lambda (_hd122524123140_
                                                   _xarg122530123142_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd122524123140_))
                                                (let ((_e122527123145_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd122524123140_))))
                                                  (let ((_lp-tl122529123150_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122527123145_)))
                                                        (_lp-hd122528123148_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122527123145_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd122528123148_))
                                                        (let ((_e122534123153_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd122528123148_))))
                  (let ((_tl122532123158_
                         (let () (declare (not safe)) (##cdr _e122534123153_)))
                        (_hd122533123156_
                         (let ()
                           (declare (not safe))
                           (##car _e122534123153_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd122533123156_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd122533123156_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl122532123158_))
                                (let ((_e122537123161_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl122532123158_))))
                                  (let ((_tl122535123166_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122537123161_)))
                                        (_hd122536123164_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122537123161_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl122535123166_))
                                        (let ((__tmp128249
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd122536123164_
                                                       _xarg122530123142_))))
                                          (declare (not safe))
                                          (_loop122526123137_
                                           _lp-tl122529123150_
                                           __tmp128249))
                                        (___match126886126887_
                                         _e122498123060_
                                         _hd122497123063_
                                         _tl122496123065_
                                         ___splice126847126848_
                                         _target122499123068_
                                         _tl122501123070_))))
                                (___match126886126887_
                                 _e122498123060_
                                 _hd122497123063_
                                 _tl122496123065_
                                 ___splice126847126848_
                                 _target122499123068_
                                 _tl122501123070_))
                            (___match126886126887_
                             _e122498123060_
                             _hd122497123063_
                             _tl122496123065_
                             ___splice126847126848_
                             _target122499123068_
                             _tl122501123070_))
                        (___match126886126887_
                         _e122498123060_
                         _hd122497123063_
                         _tl122496123065_
                         ___splice126847126848_
                         _target122499123068_
                         _tl122501123070_))))
                (___match126886126887_
                 _e122498123060_
                 _hd122497123063_
                 _tl122496123065_
                 ___splice126847126848_
                 _target122499123068_
                 _tl122501123070_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg122531123169_
                                                       (reverse _xarg122530123142_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl122508123097_))
                                                      (let ((_L123172_
                                                             _xarg122531123169_)
                                                            (_L123173_
                                                             _hd122521123127_)
                                                            (_L123174_
                                                             _arg122507123089_))
                                                        (if (and (let ((__tmp128247
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp128248
                                       (lambda (_g123202123205_
                                                _g123203123207_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g123202123205_
                                                 _g123203123207_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp128248 '() _L123174_))))
                           (declare (not safe))
                           (gx#identifier-list? __tmp128247))
                         (fx= (length (let ((__tmp128245
                                             (lambda (_g123209123212_
                                                      _g123210123214_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g123209123212_
                                                       _g123210123214_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp128245 '() _L123174_)))
                              (length (let ((__tmp128246
                                             (lambda (_g123216123219_
                                                      _g123217123221_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g123216123219_
                                                       _g123217123221_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp128246 '() _L123172_))))
                         (let ((__tmp128243
                                (let ((__tmp128244
                                       (lambda (_g123223123226_
                                                _g123224123228_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g123223123226_
                                                 _g123224123228_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp128244 '() _L123174_)))
                               (__tmp128241
                                (let ((__tmp128242
                                       (lambda (_g123230123233_
                                                _g123231123235_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g123230123233_
                                                 _g123231123235_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp128242 '() _L123172_))))
                           (declare (not safe))
                           (andmap2 gx#free-identifier=?
                                    __tmp128243
                                    __tmp128241))
                         (let ((__tmp128237
                                (let ((__tmp128240
                                       (lambda (_g123237123239_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _g123237123239_
                                            _L123173_))))
                                      (__tmp128238
                                       (let ((__tmp128239
                                              (lambda (_g123241123244_
                                                       _g123242123246_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g123241123244_
                                                        _g123242123246_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp128239 '() _L123174_))))
                                  (declare (not safe))
                                  (find __tmp128240 __tmp128238))))
                           (declare (not safe))
                           (not __tmp128237)))
                    (___kont126845126846_ _L123172_ _L123173_ _L123174_)
                    (___match126886126887_
                     _e122498123060_
                     _hd122497123063_
                     _tl122496123065_
                     ___splice126847126848_
                     _target122499123068_
                     _tl122501123070_)))
              (___match126886126887_
               _e122498123060_
               _hd122497123063_
               _tl122496123065_
               ___splice126847126848_
               _target122499123068_
               _tl122501123070_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (let ()
                                    (declare (not safe))
                                    (_loop122526123137_
                                     _target122523123132_
                                     '())))
                                (___match126886126887_
                                 _e122498123060_
                                 _hd122497123063_
                                 _tl122496123065_
                                 ___splice126847126848_
                                 _target122499123068_
                                 _tl122501123070_))))
                        (___match126886126887_
                         _e122498123060_
                         _hd122497123063_
                         _tl122496123065_
                         ___splice126847126848_
                         _target122499123068_
                         _tl122501123070_))
                    (___match126886126887_
                     _e122498123060_
                     _hd122497123063_
                     _tl122496123065_
                     ___splice126847126848_
                     _target122499123068_
                     _tl122501123070_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match126886126887_
                                                     _e122498123060_
                                                     _hd122497123063_
                                                     _tl122496123065_
                                                     ___splice126847126848_
                                                     _target122499123068_
                                                     _tl122501123070_))
                                                (___match126886126887_
                                                 _e122498123060_
                                                 _hd122497123063_
                                                 _tl122496123065_
                                                 ___splice126847126848_
                                                 _target122499123068_
                                                 _tl122501123070_))
                                            (___match126886126887_
                                             _e122498123060_
                                             _hd122497123063_
                                             _tl122496123065_
                                             ___splice126847126848_
                                             _target122499123068_
                                             _tl122501123070_))))
                                    (___match126886126887_
                                     _e122498123060_
                                     _hd122497123063_
                                     _tl122496123065_
                                     ___splice126847126848_
                                     _target122499123068_
                                     _tl122501123070_))))
                            (___match126886126887_
                             _e122498123060_
                             _hd122497123063_
                             _tl122496123065_
                             ___splice126847126848_
                             _target122499123068_
                             _tl122501123070_))
                        (___match126886126887_
                         _e122498123060_
                         _hd122497123063_
                         _tl122496123065_
                         ___splice126847126848_
                         _target122499123068_
                         _tl122501123070_))
                    (___match126886126887_
                     _e122498123060_
                     _hd122497123063_
                     _tl122496123065_
                     ___splice126847126848_
                     _target122499123068_
                     _tl122501123070_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match126886126887_
                                                     _e122498123060_
                                                     _hd122497123063_
                                                     _tl122496123065_
                                                     ___splice126847126848_
                                                     _target122499123068_
                                                     _tl122501123070_))))
                                            (___match126886126887_
                                             _e122498123060_
                                             _hd122497123063_
                                             _tl122496123065_
                                             ___splice126847126848_
                                             _target122499123068_
                                             _tl122501123070_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop122502123073_ _target122499123068_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx126843126844_))
                  (let ((_e122498123060_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx126843126844_))))
                    (let ((_tl122496123065_
                           (let ()
                             (declare (not safe))
                             (##cdr _e122498123060_)))
                          (_hd122497123063_
                           (let ()
                             (declare (not safe))
                             (##car _e122498123060_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd122497123063_))
                          (let ((___splice126847126848_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd122497123063_
                                    '0))))
                            (let ((_tl122501123070_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice126847126848_ '1)))
                                  (_target122499123068_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice126847126848_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl122501123070_))
                                  (___match126874126875_
                                   _e122498123060_
                                   _hd122497123063_
                                   _tl122496123065_
                                   ___splice126847126848_
                                   _target122499123068_
                                   _tl122501123070_)
                                  (___match126886126887_
                                   _e122498123060_
                                   _hd122497123063_
                                   _tl122496123065_
                                   ___splice126847126848_
                                   _target122499123068_
                                   _tl122501123070_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl122496123065_))
                              (let ((_e122613122668_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl122496123065_))))
                                (let ((_tl122611122673_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e122613122668_)))
                                      (_hd122612122671_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e122613122668_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd122612122671_))
                                      (let ((_e122616122676_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd122612122671_))))
                                        (let ((_tl122614122681_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122616122676_)))
                                              (_hd122615122679_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122616122676_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd122615122679_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd122615122679_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl122614122681_))
                                                      (let ((_e122619122684_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl122614122681_))))
                (let ((_tl122617122689_
                       (let () (declare (not safe)) (##cdr _e122619122684_)))
                      (_hd122618122687_
                       (let () (declare (not safe)) (##car _e122619122684_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd122618122687_))
                      (let ((_e122622122692_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd122618122687_))))
                        (let ((_tl122620122697_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e122622122692_)))
                              (_hd122621122695_
                               (let ()
                                 (declare (not safe))
                                 (##car _e122622122692_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd122621122695_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd122621122695_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl122620122697_))
                                      (let ((_e122625122700_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl122620122697_))))
                                        (let ((_tl122623122705_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122625122700_)))
                                              (_hd122624122703_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122625122700_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl122623122705_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl122617122689_))
                                                  (let ((_e122628122708_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl122617122689_))))
                                                    (let ((_tl122626122713_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e122628122708_)))
                                                          (_hd122627122711_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e122628122708_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd122627122711_))
                                                          (let ((_e122631122716_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd122627122711_))))
                    (let ((_tl122629122721_
                           (let ()
                             (declare (not safe))
                             (##cdr _e122631122716_)))
                          (_hd122630122719_
                           (let ()
                             (declare (not safe))
                             (##car _e122631122716_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd122630122719_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd122630122719_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl122629122721_))
                                  (let ((_e122634122724_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl122629122721_))))
                                    (let ((_tl122632122729_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e122634122724_)))
                                          (_hd122633122727_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e122634122724_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl122632122729_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl122626122713_))
                                              (let ((_e122637122732_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl122626122713_))))
                                                (let ((_tl122635122737_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e122637122732_)))
                                                      (_hd122636122735_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e122637122732_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd122636122735_))
                                                      (let ((_e122640122740_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd122636122735_))))
                (let ((_tl122638122745_
                       (let () (declare (not safe)) (##cdr _e122640122740_)))
                      (_hd122639122743_
                       (let () (declare (not safe)) (##car _e122640122740_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd122639122743_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd122639122743_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl122638122745_))
                              (let ((_e122643122748_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl122638122745_))))
                                (let ((_tl122641122753_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e122643122748_)))
                                      (_hd122642122751_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e122643122748_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl122641122753_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl122635122737_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl122611122673_))
                                              (___match126984126985_
                                               _e122498123060_
                                               _hd122497123063_
                                               _tl122496123065_
                                               _e122613122668_
                                               _hd122612122671_
                                               _tl122611122673_
                                               _e122616122676_
                                               _hd122615122679_
                                               _tl122614122681_
                                               _e122619122684_
                                               _hd122618122687_
                                               _tl122617122689_
                                               _e122622122692_
                                               _hd122621122695_
                                               _tl122620122697_
                                               _e122625122700_
                                               _hd122624122703_
                                               _tl122623122705_
                                               _e122628122708_
                                               _hd122627122711_
                                               _tl122626122713_
                                               _e122631122716_
                                               _hd122630122719_
                                               _tl122629122721_
                                               _e122634122724_
                                               _hd122633122727_
                                               _tl122632122729_
                                               _e122637122732_
                                               _hd122636122735_
                                               _tl122635122737_
                                               _e122640122740_
                                               _hd122639122743_
                                               _tl122638122745_
                                               _e122643122748_
                                               _hd122642122751_
                                               _tl122641122753_)
                                              (___kont126859126860_))
                                          (___kont126859126860_))
                                      (___kont126859126860_))))
                              (___kont126859126860_))
                          (___kont126859126860_))
                      (___kont126859126860_))))
              (___kont126859126860_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont126859126860_))
                                          (___kont126859126860_))))
                                  (___kont126859126860_))
                              (___kont126859126860_))
                          (___kont126859126860_))))
                  (___kont126859126860_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont126859126860_))
                                              (___kont126859126860_))))
                                      (___kont126859126860_))
                                  (___kont126859126860_))
                              (___kont126859126860_))))
                      (___kont126859126860_))))
              (___kont126859126860_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont126859126860_))
                                              (___kont126859126860_))))
                                      (___kont126859126860_))))
                              (___kont126859126860_)))))
                  (___kont126859126860_)))))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_form121954_)
        (let* ((___stx126987126988_ _form121954_)
               (_g121958122082_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126987126988_)))))
          (let ((___kont126989126990_
                 (lambda (_L122452_ _L122453_ _L122454_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L122453_))))
                (___kont126995126996_
                 (lambda (_L122300_ _L122301_ _L122302_ _L122303_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L122300_))))
                (___kont126999127000_
                 (lambda (_L122167_ _L122168_ _L122169_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L122167_)))))
            (let* ((___match127096127097_
                    (lambda (_e122050122087_
                             _hd122049122090_
                             _tl122048122092_
                             _e122053122095_
                             _hd122052122098_
                             _tl122051122100_
                             _e122056122103_
                             _hd122055122106_
                             _tl122054122108_
                             _e122059122111_
                             _hd122058122114_
                             _tl122057122116_
                             _e122062122119_
                             _hd122061122122_
                             _tl122060122124_
                             _e122065122127_
                             _hd122064122130_
                             _tl122063122132_
                             _e122068122135_
                             _hd122067122138_
                             _tl122066122140_
                             _e122071122143_
                             _hd122070122146_
                             _tl122069122148_
                             _e122074122151_
                             _hd122073122154_
                             _tl122072122156_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl122066122140_))
                          (let ((_e122077122159_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl122066122140_))))
                            (let ((_tl122075122164_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e122077122159_)))
                                  (_hd122076122162_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e122077122159_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl122075122164_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl122051122100_))
                                      (___kont126999127000_
                                       _hd122073122154_
                                       _hd122064122130_
                                       _hd122049122090_)
                                      (let ()
                                        (declare (not safe))
                                        (_g121958122082_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g121958122082_)))))
                          (let () (declare (not safe)) (_g121958122082_)))))
                   (___match127026127027_
                    (lambda (_e122011122204_
                             _hd122010122207_
                             _tl122009122209_
                             ___splice126997126998_
                             _target122012122212_
                             _tl122014122214_)
                      (letrec ((_loop122015122217_
                                (lambda (_hd122013122220_ _arg122019122222_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd122013122220_))
                                      (let ((_e122016122225_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd122013122220_))))
                                        (let ((_lp-tl122018122230_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122016122225_)))
                                              (_lp-hd122017122228_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122016122225_))))
                                          (let ((__tmp128251
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd122017122228_
                                                         _arg122019122222_))))
                                            (declare (not safe))
                                            (_loop122015122217_
                                             _lp-tl122018122230_
                                             __tmp128251))))
                                      (let ((_arg122020122233_
                                             (reverse _arg122019122222_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl122009122209_))
                                            (let ((_e122023122236_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl122009122209_))))
                                              (let ((_tl122021122241_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122023122236_)))
                                                    (_hd122022122239_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122023122236_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd122022122239_))
                                                    (let ((_e122026122244_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd122022122239_))))
                                                      (let ((_tl122024122249_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122026122244_)))
                    (_hd122025122247_
                     (let () (declare (not safe)) (##car _e122026122244_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd122025122247_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd122025122247_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122024122249_))
                            (let ((_e122029122252_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122024122249_))))
                              (let ((_tl122027122257_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122029122252_)))
                                    (_hd122028122255_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122029122252_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd122028122255_))
                                    (let ((_e122032122260_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd122028122255_))))
                                      (let ((_tl122030122265_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e122032122260_)))
                                            (_hd122031122263_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e122032122260_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd122031122263_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd122031122263_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl122030122265_))
                                                    (let ((_e122035122268_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl122030122265_))))
                                                      (let ((_tl122033122273_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122035122268_)))
                    (_hd122034122271_
                     (let () (declare (not safe)) (##car _e122035122268_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl122033122273_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl122027122257_))
                        (let ((_e122038122276_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl122027122257_))))
                          (let ((_tl122036122281_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e122038122276_)))
                                (_hd122037122279_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e122038122276_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd122037122279_))
                                (let ((_e122041122284_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd122037122279_))))
                                  (let ((_tl122039122289_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122041122284_)))
                                        (_hd122040122287_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122041122284_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd122040122287_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd122040122287_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl122039122289_))
                                                (let ((_e122044122292_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl122039122289_))))
                                                  (let ((_tl122042122297_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122044122292_)))
                                                        (_hd122043122295_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122044122292_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl122042122297_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl122021122241_))
                                                            (___kont126995126996_
                                                             _hd122043122295_
                                                             _hd122034122271_
                                                             _tl122014122214_
                                                             _arg122020122233_)
                                                            (___match127096127097_
                                                             _e122011122204_
                                                             _hd122010122207_
                                                             _tl122009122209_
                                                             _e122023122236_
                                                             _hd122022122239_
                                                             _tl122021122241_
                                                             _e122026122244_
                                                             _hd122025122247_
                                                             _tl122024122249_
                                                             _e122029122252_
                                                             _hd122028122255_
                                                             _tl122027122257_
                                                             _e122032122260_
                                                             _hd122031122263_
                                                             _tl122030122265_
                                                             _e122035122268_
                                                             _hd122034122271_
                                                             _tl122033122273_
                                                             _e122038122276_
                                                             _hd122037122279_
                                                             _tl122036122281_
                                                             _e122041122284_
                                                             _hd122040122287_
                                                             _tl122039122289_
                                                             _e122044122292_
                                                             _hd122043122295_
                                                             _tl122042122297_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g121958122082_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g121958122082_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g121958122082_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g121958122082_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g121958122082_)))))
                        (let () (declare (not safe)) (_g121958122082_)))
                    (let () (declare (not safe)) (_g121958122082_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g121958122082_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g121958122082_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g121958122082_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g121958122082_)))))
                            (let () (declare (not safe)) (_g121958122082_)))
                        (let () (declare (not safe)) (_g121958122082_)))
                    (let () (declare (not safe)) (_g121958122082_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g121958122082_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g121958122082_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop122015122217_ _target122012122212_ '())))))
                   (___match127014127015_
                    (lambda (_e121965122340_
                             _hd121964122343_
                             _tl121963122345_
                             ___splice126991126992_
                             _target121966122348_
                             _tl121968122350_)
                      (letrec ((_loop121969122353_
                                (lambda (_hd121967122356_ _arg121973122358_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd121967122356_))
                                      (let ((_e121970122361_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd121967122356_))))
                                        (let ((_lp-tl121972122366_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e121970122361_)))
                                              (_lp-hd121971122364_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e121970122361_))))
                                          (let ((__tmp128253
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd121971122364_
                                                         _arg121973122358_))))
                                            (declare (not safe))
                                            (_loop121969122353_
                                             _lp-tl121972122366_
                                             __tmp128253))))
                                      (let ((_arg121974122369_
                                             (reverse _arg121973122358_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl121963122345_))
                                            (let ((_e121977122372_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl121963122345_))))
                                              (let ((_tl121975122377_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e121977122372_)))
                                                    (_hd121976122375_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e121977122372_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd121976122375_))
                                                    (let ((_e121980122380_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd121976122375_))))
                                                      (let ((_tl121978122385_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121980122380_)))
                    (_hd121979122383_
                     (let () (declare (not safe)) (##car _e121980122380_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd121979122383_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd121979122383_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121978122385_))
                            (let ((_e121983122388_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121978122385_))))
                              (let ((_tl121981122393_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121983122388_)))
                                    (_hd121982122391_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121983122388_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd121982122391_))
                                    (let ((_e121986122396_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd121982122391_))))
                                      (let ((_tl121984122401_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121986122396_)))
                                            (_hd121985122399_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121986122396_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd121985122399_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd121985122399_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl121984122401_))
                                                    (let ((_e121989122404_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl121984122401_))))
                                                      (let ((_tl121987122409_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121989122404_)))
                    (_hd121988122407_
                     (let () (declare (not safe)) (##car _e121989122404_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl121987122409_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl121981122393_))
                        (let ((___splice126993126994_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl121981122393_
                                  '0))))
                          (let ((_tl121992122414_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice126993126994_ '1)))
                                (_target121990122412_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice126993126994_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl121992122414_))
                                (letrec ((_loop121993122417_
                                          (lambda (_hd121991122420_
                                                   _xarg121997122422_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd121991122420_))
                                                (let ((_e121994122425_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd121991122420_))))
                                                  (let ((_lp-tl121996122430_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121994122425_)))
                                                        (_lp-hd121995122428_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121994122425_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd121995122428_))
                                                        (let ((_e122001122433_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd121995122428_))))
                  (let ((_tl121999122438_
                         (let () (declare (not safe)) (##cdr _e122001122433_)))
                        (_hd122000122436_
                         (let ()
                           (declare (not safe))
                           (##car _e122001122433_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd122000122436_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd122000122436_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl121999122438_))
                                (let ((_e122004122441_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl121999122438_))))
                                  (let ((_tl122002122446_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122004122441_)))
                                        (_hd122003122444_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122004122441_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl122002122446_))
                                        (let ((__tmp128252
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd122003122444_
                                                       _xarg121997122422_))))
                                          (declare (not safe))
                                          (_loop121993122417_
                                           _lp-tl121996122430_
                                           __tmp128252))
                                        (___match127026127027_
                                         _e121965122340_
                                         _hd121964122343_
                                         _tl121963122345_
                                         ___splice126991126992_
                                         _target121966122348_
                                         _tl121968122350_))))
                                (___match127026127027_
                                 _e121965122340_
                                 _hd121964122343_
                                 _tl121963122345_
                                 ___splice126991126992_
                                 _target121966122348_
                                 _tl121968122350_))
                            (___match127026127027_
                             _e121965122340_
                             _hd121964122343_
                             _tl121963122345_
                             ___splice126991126992_
                             _target121966122348_
                             _tl121968122350_))
                        (___match127026127027_
                         _e121965122340_
                         _hd121964122343_
                         _tl121963122345_
                         ___splice126991126992_
                         _target121966122348_
                         _tl121968122350_))))
                (___match127026127027_
                 _e121965122340_
                 _hd121964122343_
                 _tl121963122345_
                 ___splice126991126992_
                 _target121966122348_
                 _tl121968122350_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg121998122449_
                                                       (reverse _xarg121997122422_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl121975122377_))
                                                      (___kont126989126990_
                                                       _xarg121998122449_
                                                       _hd121988122407_
                                                       _arg121974122369_)
                                                      (___match127026127027_
                                                       _e121965122340_
                                                       _hd121964122343_
                                                       _tl121963122345_
                                                       ___splice126991126992_
                                                       _target121966122348_
                                                       _tl121968122350_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_loop121993122417_
                                     _target121990122412_
                                     '())))
                                (___match127026127027_
                                 _e121965122340_
                                 _hd121964122343_
                                 _tl121963122345_
                                 ___splice126991126992_
                                 _target121966122348_
                                 _tl121968122350_))))
                        (___match127026127027_
                         _e121965122340_
                         _hd121964122343_
                         _tl121963122345_
                         ___splice126991126992_
                         _target121966122348_
                         _tl121968122350_))
                    (___match127026127027_
                     _e121965122340_
                     _hd121964122343_
                     _tl121963122345_
                     ___splice126991126992_
                     _target121966122348_
                     _tl121968122350_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127026127027_
                                                     _e121965122340_
                                                     _hd121964122343_
                                                     _tl121963122345_
                                                     ___splice126991126992_
                                                     _target121966122348_
                                                     _tl121968122350_))
                                                (___match127026127027_
                                                 _e121965122340_
                                                 _hd121964122343_
                                                 _tl121963122345_
                                                 ___splice126991126992_
                                                 _target121966122348_
                                                 _tl121968122350_))
                                            (___match127026127027_
                                             _e121965122340_
                                             _hd121964122343_
                                             _tl121963122345_
                                             ___splice126991126992_
                                             _target121966122348_
                                             _tl121968122350_))))
                                    (___match127026127027_
                                     _e121965122340_
                                     _hd121964122343_
                                     _tl121963122345_
                                     ___splice126991126992_
                                     _target121966122348_
                                     _tl121968122350_))))
                            (___match127026127027_
                             _e121965122340_
                             _hd121964122343_
                             _tl121963122345_
                             ___splice126991126992_
                             _target121966122348_
                             _tl121968122350_))
                        (___match127026127027_
                         _e121965122340_
                         _hd121964122343_
                         _tl121963122345_
                         ___splice126991126992_
                         _target121966122348_
                         _tl121968122350_))
                    (___match127026127027_
                     _e121965122340_
                     _hd121964122343_
                     _tl121963122345_
                     ___splice126991126992_
                     _target121966122348_
                     _tl121968122350_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127026127027_
                                                     _e121965122340_
                                                     _hd121964122343_
                                                     _tl121963122345_
                                                     ___splice126991126992_
                                                     _target121966122348_
                                                     _tl121968122350_))))
                                            (___match127026127027_
                                             _e121965122340_
                                             _hd121964122343_
                                             _tl121963122345_
                                             ___splice126991126992_
                                             _target121966122348_
                                             _tl121968122350_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop121969122353_ _target121966122348_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx126987126988_))
                  (let ((_e121965122340_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx126987126988_))))
                    (let ((_tl121963122345_
                           (let ()
                             (declare (not safe))
                             (##cdr _e121965122340_)))
                          (_hd121964122343_
                           (let ()
                             (declare (not safe))
                             (##car _e121965122340_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd121964122343_))
                          (let ((___splice126991126992_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd121964122343_
                                    '0))))
                            (let ((_tl121968122350_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice126991126992_ '1)))
                                  (_target121966122348_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice126991126992_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl121968122350_))
                                  (___match127014127015_
                                   _e121965122340_
                                   _hd121964122343_
                                   _tl121963122345_
                                   ___splice126991126992_
                                   _target121966122348_
                                   _tl121968122350_)
                                  (___match127026127027_
                                   _e121965122340_
                                   _hd121964122343_
                                   _tl121963122345_
                                   ___splice126991126992_
                                   _target121966122348_
                                   _tl121968122350_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl121963122345_))
                              (let ((_e122053122095_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl121963122345_))))
                                (let ((_tl122051122100_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e122053122095_)))
                                      (_hd122052122098_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e122053122095_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd122052122098_))
                                      (let ((_e122056122103_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd122052122098_))))
                                        (let ((_tl122054122108_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122056122103_)))
                                              (_hd122055122106_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122056122103_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd122055122106_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd122055122106_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl122054122108_))
                                                      (let ((_e122059122111_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl122054122108_))))
                (let ((_tl122057122116_
                       (let () (declare (not safe)) (##cdr _e122059122111_)))
                      (_hd122058122114_
                       (let () (declare (not safe)) (##car _e122059122111_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd122058122114_))
                      (let ((_e122062122119_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd122058122114_))))
                        (let ((_tl122060122124_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e122062122119_)))
                              (_hd122061122122_
                               (let ()
                                 (declare (not safe))
                                 (##car _e122062122119_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd122061122122_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd122061122122_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl122060122124_))
                                      (let ((_e122065122127_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl122060122124_))))
                                        (let ((_tl122063122132_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122065122127_)))
                                              (_hd122064122130_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122065122127_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl122063122132_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl122057122116_))
                                                  (let ((_e122068122135_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl122057122116_))))
                                                    (let ((_tl122066122140_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e122068122135_)))
                                                          (_hd122067122138_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e122068122135_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd122067122138_))
                                                          (let ((_e122071122143_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd122067122138_))))
                    (let ((_tl122069122148_
                           (let ()
                             (declare (not safe))
                             (##cdr _e122071122143_)))
                          (_hd122070122146_
                           (let ()
                             (declare (not safe))
                             (##car _e122071122143_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd122070122146_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd122070122146_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl122069122148_))
                                  (let ((_e122074122151_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl122069122148_))))
                                    (let ((_tl122072122156_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e122074122151_)))
                                          (_hd122073122154_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e122074122151_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl122072122156_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl122066122140_))
                                              (let ((_e122077122159_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl122066122140_))))
                                                (let ((_tl122075122164_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e122077122159_)))
                                                      (_hd122076122162_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e122077122159_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl122075122164_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl122051122100_))
                                                          (___kont126999127000_
                                                           _hd122073122154_
                                                           _hd122064122130_
                                                           _hd121964122343_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g121958122082_)))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g121958122082_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g121958122082_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g121958122082_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g121958122082_)))
                              (let () (declare (not safe)) (_g121958122082_)))
                          (let () (declare (not safe)) (_g121958122082_)))))
                  (let () (declare (not safe)) (_g121958122082_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g121958122082_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g121958122082_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g121958122082_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g121958122082_)))
                              (let ()
                                (declare (not safe))
                                (_g121958122082_)))))
                      (let () (declare (not safe)) (_g121958122082_)))))
              (let () (declare (not safe)) (_g121958122082_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g121958122082_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g121958122082_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g121958122082_)))))
                              (let ()
                                (declare (not safe))
                                (_g121958122082_))))))
                  (let () (declare (not safe)) (_g121958122082_))))))))
    (define gxc#lambda-form-arity
      (lambda (_form121758_)
        (let* ((_g121760121774_
                (lambda (_g121761121771_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g121761121771_))))
               (_g121759121951_
                (lambda (_g121761121777_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g121761121777_))
                      (let ((_e121766121779_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g121761121777_))))
                        (let ((_hd121765121782_
                               (let ()
                                 (declare (not safe))
                                 (##car _e121766121779_)))
                              (_tl121764121784_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e121766121779_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl121764121784_))
                              (let ((_e121769121787_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl121764121784_))))
                                (let ((_hd121768121790_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e121769121787_)))
                                      (_tl121767121792_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e121769121787_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl121767121792_))
                                      ((lambda (_L121795_ _L121796_)
                                         (let* ((___stx127109127110_ _L121796_)
                                                (_g121811121839_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx127109127110_)))))
                                           (let ((___kont127111127112_
                                                  (lambda (_L121930_)
                                                    (length (let ((__tmp128254
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g121940121943_ _g121941121945_)
                             (let ()
                               (declare (not safe))
                               (cons _g121940121943_ _g121941121945_)))))
                      (declare (not safe))
                      (foldr1 __tmp128254 '() _L121930_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont127115127116_
                                                  (lambda (_L121881_ _L121882_)
                                                    (let ((__tmp128255
                                                           (length (let ((__tmp128256
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g121893121896_ _g121894121898_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g121893121896_
                                            _g121894121898_)))))
                             (declare (not safe))
                             (foldr1 __tmp128256 '() _L121882_)))))
              (declare (not safe))
              (cons __tmp128255 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont127119127120_
                                                  (lambda (_L121844_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '())))))
                                             (let* ((___match127134127135_
                                                     (lambda (___splice127117127118_
                                                              _target121825121857_
                                                              _tl121827121859_)
                                                       (letrec ((_loop121828121862_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd121826121865_ _arg121832121867_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd121826121865_))
                               (let ((_e121829121870_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd121826121865_))))
                                 (let ((_lp-tl121831121875_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e121829121870_)))
                                       (_lp-hd121830121873_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e121829121870_))))
                                   (let ((__tmp128257
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd121830121873_
                                                  _arg121832121867_))))
                                     (declare (not safe))
                                     (_loop121828121862_
                                      _lp-tl121831121875_
                                      __tmp128257))))
                               (let ((_arg121833121878_
                                      (reverse _arg121832121867_)))
                                 (___kont127115127116_
                                  _tl121827121859_
                                  _arg121833121878_))))))
                 (let ()
                   (declare (not safe))
                   (_loop121828121862_ _target121825121857_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127128127129_
                                                     (lambda (___splice127113127114_
                                                              _target121814121906_
                                                              _tl121816121908_)
                                                       (letrec ((_loop121817121911_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd121815121914_ _arg121821121916_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd121815121914_))
                               (let ((_e121818121919_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd121815121914_))))
                                 (let ((_lp-tl121820121924_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e121818121919_)))
                                       (_lp-hd121819121922_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e121818121919_))))
                                   (let ((__tmp128258
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd121819121922_
                                                  _arg121821121916_))))
                                     (declare (not safe))
                                     (_loop121817121911_
                                      _lp-tl121820121924_
                                      __tmp128258))))
                               (let ((_arg121822121927_
                                      (reverse _arg121821121916_)))
                                 (___kont127111127112_ _arg121822121927_))))))
                 (let ()
                   (declare (not safe))
                   (_loop121817121911_ _target121814121906_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair/null?
                                                      ___stx127109127110_))
                                                   (let ((___splice127113127114_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-split-splice
                                                             ___stx127109127110_
                                                             '0))))
                                                     (let ((_tl121816121908_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice127113127114_
                                                               '1)))
                                                           (_target121814121906_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice127113127114_
                                                               '0))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl121816121908_))
                                                           (___match127128127129_
                                                            ___splice127113127114_
                                                            _target121814121906_
                                                            _tl121816121908_)
                                                           (___match127134127135_
                                                            ___splice127113127114_
                                                            _target121814121906_
                                                            _tl121816121908_))))
                                                   (___kont127119127120_
                                                    ___stx127109127110_))))))
                                       _hd121768121790_
                                       _hd121765121782_)
                                      (let ()
                                        (declare (not safe))
                                        (_g121760121774_ _g121761121777_)))))
                              (let ()
                                (declare (not safe))
                                (_g121760121774_ _g121761121777_)))))
                      (let ()
                        (declare (not safe))
                        (_g121760121774_ _g121761121777_))))))
          (declare (not safe))
          (_g121759121951_ _form121758_))))
    (define gxc#lambda-expr?
      (lambda (_expr121711_)
        (let* ((___stx127137127138_ _expr121711_)
               (_g121714121724_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127137127138_)))))
          (let ((___kont127139127140_ (lambda (_L121744_) '#t))
                (___kont127141127142_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127137127138_))
                (let ((_e121719121736_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127137127138_))))
                  (let ((_tl121717121741_
                         (let () (declare (not safe)) (##cdr _e121719121736_)))
                        (_hd121718121739_
                         (let ()
                           (declare (not safe))
                           (##car _e121719121736_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd121718121739_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#lambda _hd121718121739_))
                            (___kont127139127140_ _tl121717121741_)
                            (___kont127141127142_))
                        (___kont127141127142_))))
                (___kont127141127142_))))))
    (define gxc#case-lambda-expr?
      (lambda (_expr121664_)
        (let* ((___stx127155127156_ _expr121664_)
               (_g121667121677_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127155127156_)))))
          (let ((___kont127157127158_ (lambda (_L121697_) '#t))
                (___kont127159127160_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127155127156_))
                (let ((_e121672121689_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127155127156_))))
                  (let ((_tl121670121694_
                         (let () (declare (not safe)) (##cdr _e121672121689_)))
                        (_hd121671121692_
                         (let ()
                           (declare (not safe))
                           (##car _e121672121689_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd121671121692_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#case-lambda _hd121671121692_))
                            (___kont127157127158_ _tl121670121694_)
                            (___kont127159127160_))
                        (___kont127159127160_))))
                (___kont127159127160_))))))
    (define gxc#opt-lambda-expr?
      (lambda (_expr121533_)
        (let* ((___stx127173127174_ _expr121533_)
               (_g121536121566_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127173127174_)))))
          (let ((___kont127175127176_
                 (lambda (_L121634_ _L121635_ _L121636_)
                   (if (let () (declare (not safe)) (gx#identifier? _L121636_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#lambda-expr? _L121635_))
                           (let ()
                             (declare (not safe))
                             (gxc#case-lambda-expr? _L121634_))
                           '#f)
                       '#f)))
                (___kont127177127178_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127173127174_))
                (let ((_e121543121578_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127173127174_))))
                  (let ((_tl121541121583_
                         (let () (declare (not safe)) (##cdr _e121543121578_)))
                        (_hd121542121581_
                         (let ()
                           (declare (not safe))
                           (##car _e121543121578_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd121542121581_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd121542121581_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl121541121583_))
                                (let ((_e121546121586_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl121541121583_))))
                                  (let ((_tl121544121591_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121546121586_)))
                                        (_hd121545121589_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121546121586_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd121545121589_))
                                        (let ((_e121549121594_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd121545121589_))))
                                          (let ((_tl121547121599_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e121549121594_)))
                                                (_hd121548121597_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e121549121594_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd121548121597_))
                                                (let ((_e121552121602_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd121548121597_))))
                                                  (let ((_tl121550121607_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121552121602_)))
                                                        (_hd121551121605_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121552121602_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd121551121605_))
                                                        (let ((_e121555121610_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd121551121605_))))
                  (let ((_tl121553121615_
                         (let () (declare (not safe)) (##cdr _e121555121610_)))
                        (_hd121554121613_
                         (let ()
                           (declare (not safe))
                           (##car _e121555121610_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl121553121615_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121550121607_))
                            (let ((_e121558121618_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121550121607_))))
                              (let ((_tl121556121623_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121558121618_)))
                                    (_hd121557121621_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121558121618_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl121556121623_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl121547121599_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl121544121591_))
                                            (let ((_e121561121626_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl121544121591_))))
                                              (let ((_tl121559121631_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e121561121626_)))
                                                    (_hd121560121629_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e121561121626_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl121559121631_))
                                                    (___kont127175127176_
                                                     _hd121560121629_
                                                     _hd121557121621_
                                                     _hd121554121613_)
                                                    (___kont127177127178_))))
                                            (___kont127177127178_))
                                        (___kont127177127178_))
                                    (___kont127177127178_))))
                            (___kont127177127178_))
                        (___kont127177127178_))))
                (___kont127177127178_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127177127178_))))
                                        (___kont127177127178_))))
                                (___kont127177127178_))
                            (___kont127177127178_))
                        (___kont127177127178_))))
                (___kont127177127178_))))))
    (define gxc#kw-lambda-expr?
      (lambda (_expr120858_)
        (let* ((___stx127235127236_ _expr120858_)
               (_g120861121019_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127235127236_)))))
          (let ((___kont127237127238_
                 (lambda (_L121407_
                          _L121408_
                          _L121409_
                          _L121410_
                          _L121411_
                          _L121412_
                          _L121413_
                          _L121414_
                          _L121415_
                          _L121416_
                          _L121417_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#runtime-identifier=? _L121414_ 'apply))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L121410_ 'apply))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#runtime-identifier=?
                                  _L121409_
                                  'keyword-dispatch))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L121417_
                                      _L121408_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L121416_
                                          _L121413_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L121411_
                                              _L121407_))
                                           (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L121415_
                                              _L121412_))
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)))
                (___kont127239127240_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127235127236_))
                (let ((_e120876121031_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127235127236_))))
                  (let ((_tl120874121036_
                         (let () (declare (not safe)) (##cdr _e120876121031_)))
                        (_hd120875121034_
                         (let ()
                           (declare (not safe))
                           (##car _e120876121031_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd120875121034_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd120875121034_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl120874121036_))
                                (let ((_e120879121039_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl120874121036_))))
                                  (let ((_tl120877121044_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e120879121039_)))
                                        (_hd120878121042_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e120879121039_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd120878121042_))
                                        (let ((_e120882121047_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd120878121042_))))
                                          (let ((_tl120880121052_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e120882121047_)))
                                                (_hd120881121050_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e120882121047_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd120881121050_))
                                                (let ((_e120885121055_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd120881121050_))))
                                                  (let ((_tl120883121060_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120885121055_)))
                                                        (_hd120884121058_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120885121055_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd120884121058_))
                                                        (let ((_e120888121063_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd120884121058_))))
                  (let ((_tl120886121068_
                         (let () (declare (not safe)) (##cdr _e120888121063_)))
                        (_hd120887121066_
                         (let ()
                           (declare (not safe))
                           (##car _e120888121063_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl120886121068_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl120883121060_))
                            (let ((_e120891121071_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl120883121060_))))
                              (let ((_tl120889121076_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e120891121071_)))
                                    (_hd120890121074_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e120891121071_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd120890121074_))
                                    (let ((_e120894121079_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd120890121074_))))
                                      (let ((_tl120892121084_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e120894121079_)))
                                            (_hd120893121082_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e120894121079_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd120893121082_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#let-values
                                                   _hd120893121082_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl120892121084_))
                                                    (let ((_e120897121087_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl120892121084_))))
                                                      (let ((_tl120895121092_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e120897121087_)))
                    (_hd120896121090_
                     (let () (declare (not safe)) (##car _e120897121087_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd120896121090_))
                    (let ((_e120900121095_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd120896121090_))))
                      (let ((_tl120898121100_
                             (let ()
                               (declare (not safe))
                               (##cdr _e120900121095_)))
                            (_hd120899121098_
                             (let ()
                               (declare (not safe))
                               (##car _e120900121095_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd120899121098_))
                            (let ((_e120903121103_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd120899121098_))))
                              (let ((_tl120901121108_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e120903121103_)))
                                    (_hd120902121106_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e120903121103_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd120902121106_))
                                    (let ((_e120906121111_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd120902121106_))))
                                      (let ((_tl120904121116_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e120906121111_)))
                                            (_hd120905121114_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e120906121111_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl120904121116_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl120901121108_))
                                                (let ((_e120909121119_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl120901121108_))))
                                                  (let ((_tl120907121124_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120909121119_)))
                                                        (_hd120908121122_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120909121119_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl120907121124_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl120898121100_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl120895121092_))
                        (let ((_e120912121127_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl120895121092_))))
                          (let ((_tl120910121132_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e120912121127_)))
                                (_hd120911121130_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e120912121127_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd120911121130_))
                                (let ((_e120915121135_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd120911121130_))))
                                  (let ((_tl120913121140_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e120915121135_)))
                                        (_hd120914121138_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e120915121135_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd120914121138_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#lambda
                                               _hd120914121138_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl120913121140_))
                                                (let ((_e120918121143_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl120913121140_))))
                                                  (let ((_tl120916121148_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120918121143_)))
                                                        (_hd120917121146_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120918121143_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd120917121146_))
                                                        (let ((_e120921121151_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd120917121146_))))
                  (let ((_tl120919121156_
                         (let () (declare (not safe)) (##cdr _e120921121151_)))
                        (_hd120920121154_
                         (let ()
                           (declare (not safe))
                           (##car _e120921121151_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl120916121148_))
                        (let ((_e120924121159_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl120916121148_))))
                          (let ((_tl120922121164_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e120924121159_)))
                                (_hd120923121162_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e120924121159_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd120923121162_))
                                (let ((_e120927121167_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd120923121162_))))
                                  (let ((_tl120925121172_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e120927121167_)))
                                        (_hd120926121170_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e120927121167_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd120926121170_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#call
                                               _hd120926121170_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl120925121172_))
                                                (let ((_e120930121175_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl120925121172_))))
                                                  (let ((_tl120928121180_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120930121175_)))
                                                        (_hd120929121178_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120930121175_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd120929121178_))
                                                        (let ((_e120933121183_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd120929121178_))))
                  (let ((_tl120931121188_
                         (let () (declare (not safe)) (##cdr _e120933121183_)))
                        (_hd120932121186_
                         (let ()
                           (declare (not safe))
                           (##car _e120933121183_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd120932121186_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd120932121186_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl120931121188_))
                                (let ((_e120936121191_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl120931121188_))))
                                  (let ((_tl120934121196_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e120936121191_)))
                                        (_hd120935121194_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e120936121191_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl120934121196_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl120928121180_))
                                            (let ((_e120939121199_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl120928121180_))))
                                              (let ((_tl120937121204_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e120939121199_)))
                                                    (_hd120938121202_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e120939121199_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd120938121202_))
                                                    (let ((_e120942121207_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd120938121202_))))
                                                      (let ((_tl120940121212_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e120942121207_)))
                    (_hd120941121210_
                     (let () (declare (not safe)) (##car _e120942121207_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd120941121210_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd120941121210_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl120940121212_))
                            (let ((_e120945121215_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl120940121212_))))
                              (let ((_tl120943121220_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e120945121215_)))
                                    (_hd120944121218_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e120945121215_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl120943121220_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl120937121204_))
                                        (let ((_e120948121223_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl120937121204_))))
                                          (let ((_tl120946121228_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e120948121223_)))
                                                (_hd120947121226_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e120948121223_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd120947121226_))
                                                (let ((_e120951121231_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd120947121226_))))
                                                  (let ((_tl120949121236_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120951121231_)))
                                                        (_hd120950121234_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120951121231_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd120950121234_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd120950121234_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl120949121236_))
                        (let ((_e120954121239_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl120949121236_))))
                          (let ((_tl120952121244_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e120954121239_)))
                                (_hd120953121242_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e120954121239_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl120952121244_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl120922121164_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl120910121132_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl120889121076_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl120880121052_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl120877121044_))
                                                    (let ((_e120957121247_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl120877121044_))))
                                                      (let ((_tl120955121252_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e120957121247_)))
                    (_hd120956121250_
                     (let () (declare (not safe)) (##car _e120957121247_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd120956121250_))
                    (let ((_e120960121255_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd120956121250_))))
                      (let ((_tl120958121260_
                             (let ()
                               (declare (not safe))
                               (##cdr _e120960121255_)))
                            (_hd120959121258_
                             (let ()
                               (declare (not safe))
                               (##car _e120960121255_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd120959121258_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#lambda _hd120959121258_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl120958121260_))
                                    (let ((_e120963121263_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl120958121260_))))
                                      (let ((_tl120961121268_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e120963121263_)))
                                            (_hd120962121266_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e120963121263_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl120961121268_))
                                            (let ((_e120966121271_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl120961121268_))))
                                              (let ((_tl120964121276_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e120966121271_)))
                                                    (_hd120965121274_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e120966121271_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd120965121274_))
                                                    (let ((_e120969121279_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd120965121274_))))
                                                      (let ((_tl120967121284_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e120969121279_)))
                    (_hd120968121282_
                     (let () (declare (not safe)) (##car _e120969121279_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd120968121282_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd120968121282_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl120967121284_))
                            (let ((_e120972121287_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl120967121284_))))
                              (let ((_tl120970121292_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e120972121287_)))
                                    (_hd120971121290_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e120972121287_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd120971121290_))
                                    (let ((_e120975121295_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd120971121290_))))
                                      (let ((_tl120973121300_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e120975121295_)))
                                            (_hd120974121298_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e120975121295_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd120974121298_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd120974121298_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl120973121300_))
                                                    (let ((_e120978121303_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl120973121300_))))
                                                      (let ((_tl120976121308_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e120978121303_)))
                    (_hd120977121306_
                     (let () (declare (not safe)) (##car _e120978121303_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl120976121308_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl120970121292_))
                        (let ((_e120981121311_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl120970121292_))))
                          (let ((_tl120979121316_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e120981121311_)))
                                (_hd120980121314_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e120981121311_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd120980121314_))
                                (let ((_e120984121319_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd120980121314_))))
                                  (let ((_tl120982121324_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e120984121319_)))
                                        (_hd120983121322_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e120984121319_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd120983121322_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd120983121322_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl120982121324_))
                                                (let ((_e120987121327_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl120982121324_))))
                                                  (let ((_tl120985121332_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120987121327_)))
                                                        (_hd120986121330_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120987121327_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl120985121332_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl120979121316_))
                                                            (let ((_e120990121335_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl120979121316_))))
                      (let ((_tl120988121340_
                             (let ()
                               (declare (not safe))
                               (##cdr _e120990121335_)))
                            (_hd120989121338_
                             (let ()
                               (declare (not safe))
                               (##car _e120990121335_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd120989121338_))
                            (let ((_e120993121343_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd120989121338_))))
                              (let ((_tl120991121348_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e120993121343_)))
                                    (_hd120992121346_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e120993121343_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd120992121346_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd120992121346_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl120991121348_))
                                            (let ((_e120996121351_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl120991121348_))))
                                              (let ((_tl120994121356_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e120996121351_)))
                                                    (_hd120995121354_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e120996121351_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl120994121356_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl120988121340_))
                                                        (let ((_e120999121359_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl120988121340_))))
                  (let ((_tl120997121364_
                         (let () (declare (not safe)) (##cdr _e120999121359_)))
                        (_hd120998121362_
                         (let ()
                           (declare (not safe))
                           (##car _e120999121359_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd120998121362_))
                        (let ((_e121002121367_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd120998121362_))))
                          (let ((_tl121000121372_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e121002121367_)))
                                (_hd121001121370_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e121002121367_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd121001121370_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd121001121370_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl121000121372_))
                                        (let ((_e121005121375_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl121000121372_))))
                                          (let ((_tl121003121380_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e121005121375_)))
                                                (_hd121004121378_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e121005121375_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl121003121380_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl120997121364_))
                                                    (let ((_e121008121383_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl120997121364_))))
                                                      (let ((_tl121006121388_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121008121383_)))
                    (_hd121007121386_
                     (let () (declare (not safe)) (##car _e121008121383_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd121007121386_))
                    (let ((_e121011121391_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd121007121386_))))
                      (let ((_tl121009121396_
                             (let ()
                               (declare (not safe))
                               (##cdr _e121011121391_)))
                            (_hd121010121394_
                             (let ()
                               (declare (not safe))
                               (##car _e121011121391_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd121010121394_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#ref _hd121010121394_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl121009121396_))
                                    (let ((_e121014121399_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl121009121396_))))
                                      (let ((_tl121012121404_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121014121399_)))
                                            (_hd121013121402_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121014121399_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl121012121404_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl121006121388_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl120964121276_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl120955121252_))
                                                        (___kont127237127238_
                                                         _hd121013121402_
                                                         _hd121004121378_
                                                         _hd120986121330_
                                                         _hd120977121306_
                                                         _hd120962121266_
                                                         _hd120953121242_
                                                         _hd120944121218_
                                                         _hd120935121194_
                                                         _hd120920121154_
                                                         _hd120905121114_
                                                         _hd120887121066_)
                                                        (___kont127239127240_))
                                                    (___kont127239127240_))
                                                (___kont127239127240_))
                                            (___kont127239127240_))))
                                    (___kont127239127240_))
                                (___kont127239127240_))
                            (___kont127239127240_))))
                    (___kont127239127240_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127239127240_))
                                                (___kont127239127240_))))
                                        (___kont127239127240_))
                                    (___kont127239127240_))
                                (___kont127239127240_))))
                        (___kont127239127240_))))
                (___kont127239127240_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127239127240_))))
                                            (___kont127239127240_))
                                        (___kont127239127240_))
                                    (___kont127239127240_))))
                            (___kont127239127240_))))
                    (___kont127239127240_))
                (___kont127239127240_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127239127240_))
                                            (___kont127239127240_))
                                        (___kont127239127240_))))
                                (___kont127239127240_))))
                        (___kont127239127240_))
                    (___kont127239127240_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127239127240_))
                                                (___kont127239127240_))
                                            (___kont127239127240_))))
                                    (___kont127239127240_))))
                            (___kont127239127240_))
                        (___kont127239127240_))
                    (___kont127239127240_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127239127240_))))
                                            (___kont127239127240_))))
                                    (___kont127239127240_))
                                (___kont127239127240_))
                            (___kont127239127240_))))
                    (___kont127239127240_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127239127240_))
                                                (___kont127239127240_))
                                            (___kont127239127240_))
                                        (___kont127239127240_))
                                    (___kont127239127240_))
                                (___kont127239127240_))))
                        (___kont127239127240_))
                    (___kont127239127240_))
                (___kont127239127240_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127239127240_))))
                                        (___kont127239127240_))
                                    (___kont127239127240_))))
                            (___kont127239127240_))
                        (___kont127239127240_))
                    (___kont127239127240_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127239127240_))))
                                            (___kont127239127240_))
                                        (___kont127239127240_))))
                                (___kont127239127240_))
                            (___kont127239127240_))
                        (___kont127239127240_))))
                (___kont127239127240_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127239127240_))
                                            (___kont127239127240_))
                                        (___kont127239127240_))))
                                (___kont127239127240_))))
                        (___kont127239127240_))))
                (___kont127239127240_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127239127240_))
                                            (___kont127239127240_))
                                        (___kont127239127240_))))
                                (___kont127239127240_))))
                        (___kont127239127240_))
                    (___kont127239127240_))
                (___kont127239127240_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127239127240_))
                                            (___kont127239127240_))))
                                    (___kont127239127240_))))
                            (___kont127239127240_))))
                    (___kont127239127240_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127239127240_))
                                                (___kont127239127240_))
                                            (___kont127239127240_))))
                                    (___kont127239127240_))))
                            (___kont127239127240_))
                        (___kont127239127240_))))
                (___kont127239127240_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127239127240_))))
                                        (___kont127239127240_))))
                                (___kont127239127240_))
                            (___kont127239127240_))
                        (___kont127239127240_))))
                (___kont127239127240_))))))
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx120600_ _id120601_ _clauses120602_ _gensym?120603_)
        (let _lp120605_ ((_rest120607_ _clauses120602_)
                         (_ids120608_ '())
                         (_impls120609_ '())
                         (_clauses120610_ '()))
          (let* ((_rest120611120619_ _rest120607_)
                 (_else120613120627_
                  (lambda ()
                    (values (reverse _ids120608_)
                            (reverse _impls120609_)
                            (reverse _clauses120610_))))
                 (_K120615120832_
                  (lambda (_rest120630_ _clause120631_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#dispatch-lambda-form? _clause120631_))
                        (let ((__tmp128314
                               (let ()
                                 (declare (not safe))
                                 (cons _clause120631_ _clauses120610_))))
                          (declare (not safe))
                          (_lp120605_
                           _rest120630_
                           _ids120608_
                           _impls120609_
                           __tmp128314))
                        (let* ((_g120633120644_
                                (lambda (_g120634120641_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g120634120641_))))
                               (_g120632120829_
                                (lambda (_g120634120647_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _g120634120647_))
                                      (let ((_e120639120649_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _g120634120647_))))
                                        (let ((_hd120638120652_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e120639120649_)))
                                              (_tl120637120654_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e120639120649_))))
                                          ((lambda (_L120657_ _L120658_)
                                             (let* ((_id120675_
                                                     (let ((__tmp128261
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _id120601_)))
                                                           (__tmp128260
                                                            (length _clauses120610_))
                                                           (__tmp128259
                                                            (if _gensym?120603_
                                                                (gensym '__)
                                                                '"")))
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        __tmp128261
                                                        '"__"
                                                        __tmp128260
                                                        __tmp128259)))
                                                    (_id120677_
                                                     (let ((__tmp128262
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-source
                                                               _stx120600_))))
                                                       (declare (not safe))
                                                       (gx#core-quote-syntax__1
                                                        _id120675_
                                                        __tmp128262)))
                                                    (_impl120679_
                                                     (let ((__tmp128263
                                                            (let ((__tmp128265
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '%#lambda)))
                          (__tmp128264
                           (let ()
                             (declare (not safe))
                             (cons _L120658_ _L120657_))))
                      (declare (not safe))
                      (cons __tmp128265 __tmp128264))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp128263 _stx120600_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause120826_
                                                     (let* ((___stx127619127620_
                                                             _L120658_)
                                                            (_g120683120711_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx127619127620_)))))
               (let ((___kont127621127622_
                      (lambda (_L120805_)
                        (let ((__tmp128266
                               (let ((__tmp128267
                                      (let ((__tmp128268
                                             (let ((__tmp128269
                                                    (let ((__tmp128275
                                                           (let ((__tmp128276
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id120677_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp128276)))
                  (__tmp128270
                   (let ((__tmp128271
                          (lambda (_g120815120818_ _g120816120820_)
                            (let ((__tmp128272
                                   (let ((__tmp128274
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp128273
                                          (let ()
                                            (declare (not safe))
                                            (cons _g120815120818_ '()))))
                                     (declare (not safe))
                                     (cons __tmp128274 __tmp128273))))
                              (declare (not safe))
                              (cons __tmp128272 _g120816120820_)))))
                     (declare (not safe))
                     (foldr1 __tmp128271 '() _L120805_))))
              (declare (not safe))
              (cons __tmp128275 __tmp128270))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp128269))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp128268
                                         _stx120600_))))
                                 (declare (not safe))
                                 (cons __tmp128267 '()))))
                          (declare (not safe))
                          (cons _L120658_ __tmp128266))))
                     (___kont127625127626_
                      (lambda (_L120756_ _L120757_)
                        (let ((__tmp128277
                               (let ((__tmp128278
                                      (let ((__tmp128279
                                             (let ((__tmp128280
                                                    (let ((__tmp128294
                                                           (let ((__tmp128295
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp128295)))
                  (__tmp128281
                   (let ((__tmp128292
                          (let ((__tmp128293
                                 (let ()
                                   (declare (not safe))
                                   (cons _id120677_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp128293)))
                         (__tmp128282
                          (let ((__tmp128288
                                 (let ((__tmp128289
                                        (let ((__tmp128291
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)))
                                              (__tmp128290
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L120756_ '()))))
                                          (declare (not safe))
                                          (cons __tmp128291 __tmp128290))))
                                   (declare (not safe))
                                   (cons __tmp128289 '())))
                                (__tmp128283
                                 (let ((__tmp128284
                                        (lambda (_g120768120771_
                                                 _g120769120773_)
                                          (let ((__tmp128285
                                                 (let ((__tmp128287
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)))
                                                       (__tmp128286
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g120768120771_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp128287
                                                         __tmp128286))))
                                            (declare (not safe))
                                            (cons __tmp128285
                                                  _g120769120773_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp128284 '() _L120757_))))
                            (declare (not safe))
                            (foldr1 cons __tmp128288 __tmp128283))))
                     (declare (not safe))
                     (cons __tmp128292 __tmp128282))))
              (declare (not safe))
              (cons __tmp128294 __tmp128281))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp128280))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp128279
                                         _stx120600_))))
                                 (declare (not safe))
                                 (cons __tmp128278 '()))))
                          (declare (not safe))
                          (cons _L120658_ __tmp128277))))
                     (___kont127629127630_
                      (lambda (_L120716_)
                        (let ((__tmp128296
                               (let ((__tmp128297
                                      (let ((__tmp128298
                                             (let ((__tmp128299
                                                    (let ((__tmp128307
                                                           (let ((__tmp128308
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp128308)))
                  (__tmp128300
                   (let ((__tmp128305
                          (let ((__tmp128306
                                 (let ()
                                   (declare (not safe))
                                   (cons _id120677_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp128306)))
                         (__tmp128301
                          (let ((__tmp128302
                                 (let ((__tmp128304
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '%#ref)))
                                       (__tmp128303
                                        (let ()
                                          (declare (not safe))
                                          (cons _L120716_ '()))))
                                   (declare (not safe))
                                   (cons __tmp128304 __tmp128303))))
                            (declare (not safe))
                            (cons __tmp128302 '()))))
                     (declare (not safe))
                     (cons __tmp128305 __tmp128301))))
              (declare (not safe))
              (cons __tmp128307 __tmp128300))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp128299))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp128298
                                         _stx120600_))))
                                 (declare (not safe))
                                 (cons __tmp128297 '()))))
                          (declare (not safe))
                          (cons _L120658_ __tmp128296)))))
                 (let* ((___match127644127645_
                         (lambda (___splice127627127628_
                                  _target120697120732_
                                  _tl120699120734_)
                           (letrec ((_loop120700120737_
                                     (lambda (_hd120698120740_
                                              _arg120704120742_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd120698120740_))
                                           (let ((_e120701120745_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd120698120740_))))
                                             (let ((_lp-tl120703120750_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e120701120745_)))
                                                   (_lp-hd120702120748_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e120701120745_))))
                                               (let ((__tmp128309
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd120702120748_
                                                              _arg120704120742_))))
                                                 (declare (not safe))
                                                 (_loop120700120737_
                                                  _lp-tl120703120750_
                                                  __tmp128309))))
                                           (let ((_arg120705120753_
                                                  (reverse _arg120704120742_)))
                                             (___kont127625127626_
                                              _tl120699120734_
                                              _arg120705120753_))))))
                             (let ()
                               (declare (not safe))
                               (_loop120700120737_
                                _target120697120732_
                                '())))))
                        (___match127638127639_
                         (lambda (___splice127623127624_
                                  _target120686120781_
                                  _tl120688120783_)
                           (letrec ((_loop120689120786_
                                     (lambda (_hd120687120789_
                                              _arg120693120791_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd120687120789_))
                                           (let ((_e120690120794_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd120687120789_))))
                                             (let ((_lp-tl120692120799_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e120690120794_)))
                                                   (_lp-hd120691120797_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e120690120794_))))
                                               (let ((__tmp128310
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd120691120797_
                                                              _arg120693120791_))))
                                                 (declare (not safe))
                                                 (_loop120689120786_
                                                  _lp-tl120692120799_
                                                  __tmp128310))))
                                           (let ((_arg120694120802_
                                                  (reverse _arg120693120791_)))
                                             (___kont127621127622_
                                              _arg120694120802_))))))
                             (let ()
                               (declare (not safe))
                               (_loop120689120786_
                                _target120686120781_
                                '()))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? ___stx127619127620_))
                       (let ((___splice127623127624_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 ___stx127619127620_
                                 '0))))
                         (let ((_tl120688120783_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice127623127624_ '1)))
                               (_target120686120781_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice127623127624_ '0))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl120688120783_))
                               (___match127638127639_
                                ___splice127623127624_
                                _target120686120781_
                                _tl120688120783_)
                               (___match127644127645_
                                ___splice127623127624_
                                _target120686120781_
                                _tl120688120783_))))
                       (___kont127629127630_ ___stx127619127620_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp128313
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _id120677_
                                                              _ids120608_)))
                                                     (__tmp128312
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _impl120679_
                                                              _impls120609_)))
                                                     (__tmp128311
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _clause120826_
                                                              _clauses120610_))))
                                                 (declare (not safe))
                                                 (_lp120605_
                                                  _rest120630_
                                                  __tmp128313
                                                  __tmp128312
                                                  __tmp128311))))
                                           _tl120637120654_
                                           _hd120638120652_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g120633120644_ _g120634120647_))))))
                          (declare (not safe))
                          (_g120632120829_ _clause120631_))))))
            (if (let () (declare (not safe)) (##pair? _rest120611120619_))
                (let ((_hd120616120835_
                       (let ()
                         (declare (not safe))
                         (##car _rest120611120619_)))
                      (_tl120617120837_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest120611120619_))))
                  (let* ((_clause120840_ _hd120616120835_)
                         (_rest120842_ _tl120617120837_))
                    (declare (not safe))
                    (_K120615120832_ _rest120842_ _clause120840_)))
                (let () (declare (not safe)) (_else120613120627_)))))))
    (define gxc#lift-case-lambda-clauses__0
      (lambda (_stx120847_ _id120848_ _clauses120849_)
        (let ((_gensym?120851_ '#f))
          (declare (not safe))
          (gxc#lift-case-lambda-clauses__%
           _stx120847_
           _id120848_
           _clauses120849_
           _gensym?120851_))))
    (define gxc#lift-case-lambda-clauses
      (lambda _g128316_
        (let ((_g128315_ (let () (declare (not safe)) (##length _g128316_))))
          (cond ((let () (declare (not safe)) (##fx= _g128315_ 3))
                 (apply (lambda (_stx120847_ _id120848_ _clauses120849_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__0
                             _stx120847_
                             _id120848_
                             _clauses120849_)))
                        _g128316_))
                ((let () (declare (not safe)) (##fx= _g128315_ 4))
                 (apply (lambda (_stx120853_
                                 _id120854_
                                 _clauses120855_
                                 _gensym?120856_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__%
                             _stx120853_
                             _id120854_
                             _clauses120855_
                             _gensym?120856_)))
                        _g128316_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#lift-case-lambda-clauses
                  _g128316_))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_stx119877_)
        (letrec ((_case-lambda-clause-def119879_
                  (lambda (_id120596_ _impl120597_)
                    (let ((__tmp128317
                           (let ((__tmp128318
                                  (let ((__tmp128321
                                         (let ()
                                           (declare (not safe))
                                           (cons _id120596_ '())))
                                        (__tmp128319
                                         (let ((__tmp128320
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _impl120597_))))
                                           (declare (not safe))
                                           (cons __tmp128320 '()))))
                                    (declare (not safe))
                                    (cons __tmp128321 __tmp128319))))
                             (declare (not safe))
                             (cons '%#define-values __tmp128318))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp128317 _stx119877_))))
                 (_opt-lambda-dispatch-name119880_
                  (lambda (_id120592_)
                    (if (uninterned-symbol? _id120592_)
                        (let ((_str120594_ (symbol->string _id120592_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"opt-lambda" _str120594_))
                              '"%"
                              _id120592_))
                        _id120592_)))
                 (_kw-lambda-dispatch-name119881_
                  (lambda (_id120587_ _name120588_)
                    (if (uninterned-symbol? _id120587_)
                        (let ((_str120590_ (symbol->string _id120587_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"kw-lambda" _str120590_))
                              _name120588_
                              _id120587_))
                        _id120587_))))
          (let* ((___stx127667127668_ _stx119877_)
                 (_g119886119945_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx127667127668_)))))
            (let ((___kont127669127670_
                   (lambda (_L120496_ _L120497_)
                     (let* ((___stx127647127648_ _L120496_)
                            (_g120514120528_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx127647127648_)))))
                       (let ((___kont127649127650_
                              (lambda (_L120572_) _stx119877_))
                             (___kont127651127652_
                              (lambda (_L120541_)
                                (let ((_g128322_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#lift-case-lambda-clauses__0
                                          _stx119877_
                                          _L120497_
                                          _L120541_))))
                                  (begin
                                    (let ((_g128323_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g128322_)
                                                 (##vector-length _g128322_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g128323_ 3)))
                                          (error "Context expects 3 values"
                                                 _g128323_)))
                                    (let ((_ids120551_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g128322_ 0)))
                                          (_impls120552_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g128322_ 1)))
                                          (_clauses120553_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g128322_ 2))))
                                      (let* ((_g128324_
                                              (for-each
                                               gx#core-bind-runtime!
                                               _ids120551_))
                                             (_defs120556_
                                              (map _case-lambda-clause-def119879_
                                                   _ids120551_
                                                   _impls120552_)))
                                        (let ((__tmp128326
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L120497_)))
                                              (__tmp128325
                                               (map gxc#identifier-symbol
                                                    _ids120551_)))
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"lift case-lambda clauses "
                                           __tmp128326
                                           '" => "
                                           __tmp128325))
                                        (let ((__tmp128327
                                               (let ((__tmp128328
                                                      (let ((__tmp128329
                                                             (let ((__tmp128330
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp128331
                                   (let ((__tmp128332
                                          (let ((__tmp128337
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L120497_ '())))
                                                (__tmp128333
                                                 (let ((__tmp128334
                                                        (let ((__tmp128336
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '%#case-lambda _clauses120553_)))
                      (__tmp128335
                       (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp128336 __tmp128335))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp128334 '()))))
                                            (declare (not safe))
                                            (cons __tmp128337 __tmp128333))))
                                     (declare (not safe))
                                     (cons '%#define-values __tmp128332))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp128331
                               _stx119877_))))
                       (declare (not safe))
                       (cons __tmp128330 '()))))
                (declare (not safe))
                (foldr1 cons __tmp128329 _defs120556_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#begin __tmp128328))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp128327
                                           _stx119877_)))))))))
                         (let ((___match127658127659_
                                (lambda (_e120519120564_
                                         _hd120518120567_
                                         _tl120517120569_)
                                  (let ((_L120572_ _tl120517120569_))
                                    (if (let ()
                                          (declare (not safe))
                                          (andmap1 gxc#dispatch-lambda-form?
                                                   _L120572_))
                                        (___kont127649127650_ _L120572_)
                                        (___kont127651127652_
                                         _tl120517120569_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? ___stx127647127648_))
                               (let ((_e120519120564_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e ___stx127647127648_))))
                                 (let ((_tl120517120569_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e120519120564_)))
                                       (_hd120518120567_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e120519120564_))))
                                   (___match127658127659_
                                    _e120519120564_
                                    _hd120518120567_
                                    _tl120517120569_)))
                               (let ()
                                 (declare (not safe))
                                 (_g120514120528_))))))))
                  (___kont127671127672_
                   (lambda (_L120314_ _L120315_)
                     (let* ((_g120331120361_
                             (lambda (_g120332120358_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g120332120358_))))
                            (_g120330120456_
                             (lambda (_g120332120364_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g120332120364_))
                                   (let ((_e120338120366_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g120332120364_))))
                                     (let ((_hd120337120369_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e120338120366_)))
                                           (_tl120336120371_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e120338120366_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl120336120371_))
                                           (let ((_e120341120374_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl120336120371_))))
                                             (let ((_hd120340120377_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e120341120374_)))
                                                   (_tl120339120379_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e120341120374_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd120340120377_))
                                                   (let ((_e120344120382_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd120340120377_))))
                                                     (let ((_hd120343120385_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e120344120382_)))
                                                           (_tl120342120387_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e120344120382_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd120343120385_))
                                                           (let ((_e120347120390_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd120343120385_))))
                     (let ((_hd120346120393_
                            (let ()
                              (declare (not safe))
                              (##car _e120347120390_)))
                           (_tl120345120395_
                            (let ()
                              (declare (not safe))
                              (##cdr _e120347120390_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd120346120393_))
                           (let ((_e120350120398_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd120346120393_))))
                             (let ((_hd120349120401_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e120350120398_)))
                                   (_tl120348120403_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e120350120398_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl120348120403_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl120345120395_))
                                       (let ((_e120353120406_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl120345120395_))))
                                         (let ((_hd120352120409_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e120353120406_)))
                                               (_tl120351120411_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e120353120406_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl120351120411_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl120342120387_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl120339120379_))
                                                       (let ((_e120356120414_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl120339120379_))))
                 (let ((_hd120355120417_
                        (let () (declare (not safe)) (##car _e120356120414_)))
                       (_tl120354120419_
                        (let () (declare (not safe)) (##cdr _e120356120414_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl120354120419_))
                       ((lambda (_L120422_ _L120423_ _L120424_)
                          (let* ((_lambda-id120448_
                                  (let ((__tmp128340
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L120315_)))
                                        (__tmp128338
                                         (let ((__tmp128339
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L120424_))))
                                           (declare (not safe))
                                           (_opt-lambda-dispatch-name119880_
                                            __tmp128339))))
                                    (declare (not safe))
                                    (make-symbol__1
                                     __tmp128340
                                     '"__"
                                     __tmp128338)))
                                 (_lambda-id120450_
                                  (let ((__tmp128341
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-source _stx119877_))))
                                    (declare (not safe))
                                    (gx#core-quote-syntax__1
                                     _lambda-id120448_
                                     __tmp128341)))
                                 (_g128342_
                                  (let ()
                                    (declare (not safe))
                                    (gx#core-bind-runtime!__0
                                     _lambda-id120450_)))
                                 (_new-case-lambda-expr120453_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-expression-subst
                                     _L120422_
                                     _L120424_
                                     _lambda-id120450_))))
                            (let ((__tmp128344
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol _L120315_)))
                                  (__tmp128343
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol
                                      _lambda-id120450_))))
                              (declare (not safe))
                              (gxc#verbose
                               '"lift opt-lambda dispatch "
                               __tmp128344
                               '" => "
                               __tmp128343))
                            (let ((__tmp128345
                                   (let ((__tmp128346
                                          (let ((__tmp128354
                                                 (let ((__tmp128355
                                                        (let ((__tmp128356
                                                               (let ((__tmp128359
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _lambda-id120450_ '())))
                             (__tmp128357
                              (let ((__tmp128358
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L120423_))))
                                (declare (not safe))
                                (cons __tmp128358 '()))))
                         (declare (not safe))
                         (cons __tmp128359 __tmp128357))))
                  (declare (not safe))
                  (cons '%#define-values __tmp128356))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp128355
                                                    _stx119877_)))
                                                (__tmp128347
                                                 (let ((__tmp128348
                                                        (let ((__tmp128349
                                                               (let ((__tmp128350
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp128351
                                     (let ((__tmp128353
                                            (let ()
                                              (declare (not safe))
                                              (cons _L120315_ '())))
                                           (__tmp128352
                                            (let ()
                                              (declare (not safe))
                                              (cons _new-case-lambda-expr120453_
                                                    '()))))
                                       (declare (not safe))
                                       (cons __tmp128353 __tmp128352))))
                                (declare (not safe))
                                (cons '%#define-values __tmp128351))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp128350 _stx119877_))))
                  (declare (not safe))
                  (gxc#lift-top-lambda-define-values% __tmp128349))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp128348 '()))))
                                            (declare (not safe))
                                            (cons __tmp128354 __tmp128347))))
                                     (declare (not safe))
                                     (cons '%#begin __tmp128346))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp128345
                               _stx119877_))))
                        _hd120355120417_
                        _hd120352120409_
                        _hd120349120401_)
                       (let ()
                         (declare (not safe))
                         (_g120331120361_ _g120332120364_)))))
               (let () (declare (not safe)) (_g120331120361_ _g120332120364_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g120331120361_
                                                      _g120332120364_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g120331120361_
                                                  _g120332120364_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g120331120361_ _g120332120364_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g120331120361_ _g120332120364_)))))
                           (let ()
                             (declare (not safe))
                             (_g120331120361_ _g120332120364_)))))
                   (let ()
                     (declare (not safe))
                     (_g120331120361_ _g120332120364_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g120331120361_
                                                      _g120332120364_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g120331120361_
                                              _g120332120364_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g120331120361_ _g120332120364_))))))
                       (declare (not safe))
                       (_g120330120456_ _L120314_))))
                  (___kont127673127674_
                   (lambda (_L120028_ _L120029_)
                     (let* ((_g120045120098_
                             (lambda (_g120046120095_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g120046120095_))))
                            (_g120044120274_
                             (lambda (_g120046120101_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g120046120101_))
                                   (let ((_e120054120103_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g120046120101_))))
                                     (let ((_hd120053120106_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e120054120103_)))
                                           (_tl120052120108_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e120054120103_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl120052120108_))
                                           (let ((_e120057120111_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl120052120108_))))
                                             (let ((_hd120056120114_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e120057120111_)))
                                                   (_tl120055120116_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e120057120111_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd120056120114_))
                                                   (let ((_e120060120119_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd120056120114_))))
                                                     (let ((_hd120059120122_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e120060120119_)))
                                                           (_tl120058120124_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e120060120119_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd120059120122_))
                                                           (let ((_e120063120127_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd120059120122_))))
                     (let ((_hd120062120130_
                            (let ()
                              (declare (not safe))
                              (##car _e120063120127_)))
                           (_tl120061120132_
                            (let ()
                              (declare (not safe))
                              (##cdr _e120063120127_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd120062120130_))
                           (let ((_e120066120135_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd120062120130_))))
                             (let ((_hd120065120138_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e120066120135_)))
                                   (_tl120064120140_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e120066120135_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl120064120140_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl120061120132_))
                                       (let ((_e120069120143_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl120061120132_))))
                                         (let ((_hd120068120146_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e120069120143_)))
                                               (_tl120067120148_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e120069120143_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd120068120146_))
                                               (let ((_e120072120151_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd120068120146_))))
                                                 (let ((_hd120071120154_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e120072120151_)))
                                                       (_tl120070120156_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e120072120151_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl120070120156_))
                                                       (let ((_e120075120159_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl120070120156_))))
                 (let ((_hd120074120162_
                        (let () (declare (not safe)) (##car _e120075120159_)))
                       (_tl120073120164_
                        (let () (declare (not safe)) (##cdr _e120075120159_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _hd120074120162_))
                       (let ((_e120078120167_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _hd120074120162_))))
                         (let ((_hd120077120170_
                                (let ()
                                  (declare (not safe))
                                  (##car _e120078120167_)))
                               (_tl120076120172_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e120078120167_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd120077120170_))
                               (let ((_e120081120175_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd120077120170_))))
                                 (let ((_hd120080120178_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e120081120175_)))
                                       (_tl120079120180_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e120081120175_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd120080120178_))
                                       (let ((_e120084120183_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd120080120178_))))
                                         (let ((_hd120083120186_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e120084120183_)))
                                               (_tl120082120188_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e120084120183_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl120082120188_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl120079120180_))
                                                   (let ((_e120087120191_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl120079120180_))))
                                                     (let ((_hd120086120194_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e120087120191_)))
                                                           (_tl120085120196_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e120087120191_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl120085120196_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-null? _tl120076120172_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl120073120164_))
                           (let ((_e120090120199_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl120073120164_))))
                             (let ((_hd120089120202_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e120090120199_)))
                                   (_tl120088120204_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e120090120199_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl120088120204_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl120067120148_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl120058120124_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl120055120116_))
                                               (let ((_e120093120207_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl120055120116_))))
                                                 (let ((_hd120092120210_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e120093120207_)))
                                                       (_tl120091120212_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e120093120207_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl120091120212_))
                                                       ((lambda (_L120215_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L120216_
                         _L120217_
                         _L120218_
                         _L120219_)
                  (let* ((_get-kws-id120259_
                          (let ((__tmp128362
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L120029_)))
                                (__tmp128360
                                 (let ((__tmp128361
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L120219_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name119881_
                                    __tmp128361
                                    '"@"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp128362 '"__" __tmp128360)))
                         (_get-kws-id120261_
                          (let ((__tmp128363
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx119877_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _get-kws-id120259_
                             __tmp128363)))
                         (_main-id120263_
                          (let ((__tmp128366
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L120029_)))
                                (__tmp128364
                                 (let ((__tmp128365
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L120218_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name119881_
                                    __tmp128365
                                    '"%"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp128366 '"__" __tmp128364)))
                         (_main-id120265_
                          (let ((__tmp128367
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx119877_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _main-id120263_
                             __tmp128367)))
                         (_g128368_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _get-kws-id120261_)))
                         (_g128369_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _main-id120265_)))
                         (_new-kw-dispatch120269_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L120215_
                             _L120219_
                             _get-kws-id120261_)))
                         (_new-get-kws120271_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L120216_
                             _L120218_
                             _main-id120265_))))
                    (let ((__tmp128372
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L120029_)))
                          (__tmp128371
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _get-kws-id120261_)))
                          (__tmp128370
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _main-id120265_))))
                      (declare (not safe))
                      (gxc#verbose
                       '"lift kw-lambda dispatch "
                       __tmp128372
                       '" => "
                       __tmp128371
                       '" => "
                       __tmp128370))
                    (let ((__tmp128373
                           (let ((__tmp128374
                                  (let ((__tmp128387
                                         (let ((__tmp128388
                                                (let ((__tmp128389
                                                       (let ((__tmp128390
                                                              (let ((__tmp128392
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _main-id120265_ '())))
                            (__tmp128391
                             (let ()
                               (declare (not safe))
                               (cons _L120217_ '()))))
                        (declare (not safe))
                        (cons __tmp128392 __tmp128391))))
                 (declare (not safe))
                 (cons '%#define-values __tmp128390))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp128389
                                                   _stx119877_))))
                                           (declare (not safe))
                                           (gxc#lift-top-lambda-define-values%
                                            __tmp128388)))
                                        (__tmp128375
                                         (let ((__tmp128382
                                                (let ((__tmp128383
                                                       (let ((__tmp128384
                                                              (let ((__tmp128386
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _get-kws-id120261_ '())))
                            (__tmp128385
                             (let ()
                               (declare (not safe))
                               (cons _new-get-kws120271_ '()))))
                        (declare (not safe))
                        (cons __tmp128386 __tmp128385))))
                 (declare (not safe))
                 (cons '%#define-values __tmp128384))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp128383
                                                   _stx119877_)))
                                               (__tmp128376
                                                (let ((__tmp128377
                                                       (let ((__tmp128378
                                                              (let ((__tmp128379
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp128381
                                    (let ()
                                      (declare (not safe))
                                      (cons _L120029_ '())))
                                   (__tmp128380
                                    (let ()
                                      (declare (not safe))
                                      (cons _new-kw-dispatch120269_ '()))))
                               (declare (not safe))
                               (cons __tmp128381 __tmp128380))))
                        (declare (not safe))
                        (cons '%#define-values __tmp128379))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp128378 _stx119877_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp128377 '()))))
                                           (declare (not safe))
                                           (cons __tmp128382 __tmp128376))))
                                    (declare (not safe))
                                    (cons __tmp128387 __tmp128375))))
                             (declare (not safe))
                             (cons '%#begin __tmp128374))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp128373 _stx119877_))))
                _hd120092120210_
                _hd120089120202_
                _hd120086120194_
                _hd120083120186_
                _hd120065120138_)
               (let ()
                 (declare (not safe))
                 (_g120045120098_ _g120046120101_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g120045120098_
                                                  _g120046120101_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g120045120098_
                                              _g120046120101_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g120045120098_ _g120046120101_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g120045120098_ _g120046120101_)))))
                           (let ()
                             (declare (not safe))
                             (_g120045120098_ _g120046120101_)))
                       (let ()
                         (declare (not safe))
                         (_g120045120098_ _g120046120101_)))
                   (let ()
                     (declare (not safe))
                     (_g120045120098_ _g120046120101_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g120045120098_
                                                      _g120046120101_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g120045120098_
                                                  _g120046120101_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g120045120098_ _g120046120101_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g120045120098_ _g120046120101_)))))
                       (let ()
                         (declare (not safe))
                         (_g120045120098_ _g120046120101_)))))
               (let ()
                 (declare (not safe))
                 (_g120045120098_ _g120046120101_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g120045120098_
                                                  _g120046120101_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g120045120098_ _g120046120101_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g120045120098_ _g120046120101_)))))
                           (let ()
                             (declare (not safe))
                             (_g120045120098_ _g120046120101_)))))
                   (let ()
                     (declare (not safe))
                     (_g120045120098_ _g120046120101_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g120045120098_
                                                      _g120046120101_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g120045120098_
                                              _g120046120101_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g120045120098_ _g120046120101_))))))
                       (declare (not safe))
                       (_g120044120274_ _L120028_))))
                  (___kont127675127676_
                   (lambda (_L119974_ _L119975_)
                     (let ((__tmp128393
                            (let ((__tmp128394
                                   (let ((__tmp128395
                                          (let ((__tmp128396
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L119974_))))
                                            (declare (not safe))
                                            (cons __tmp128396 '()))))
                                     (declare (not safe))
                                     (cons _L119975_ __tmp128395))))
                              (declare (not safe))
                              (cons '%#define-values __tmp128394))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp128393 _stx119877_)))))
              (let* ((___match127760127761_
                      (lambda (_e119920119996_
                               _hd119919119999_
                               _tl119918120001_
                               _e119923120004_
                               _hd119922120007_
                               _tl119921120009_
                               _e119926120012_
                               _hd119925120015_
                               _tl119924120017_
                               _e119929120020_
                               _hd119928120023_
                               _tl119927120025_)
                        (let ((_L120028_ _hd119928120023_)
                              (_L120029_ _hd119925120015_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L120029_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L120028_)))
                              (___kont127673127674_ _L120028_ _L120029_)
                              (___kont127675127676_
                               _hd119928120023_
                               _hd119922120007_)))))
                     (___match127732127733_
                      (lambda (_e119906120282_
                               _hd119905120285_
                               _tl119904120287_
                               _e119909120290_
                               _hd119908120293_
                               _tl119907120295_
                               _e119912120298_
                               _hd119911120301_
                               _tl119910120303_
                               _e119915120306_
                               _hd119914120309_
                               _tl119913120311_)
                        (let ((_L120314_ _hd119914120309_)
                              (_L120315_ _hd119911120301_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L120315_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr? _L120314_)))
                              (___kont127671127672_ _L120314_ _L120315_)
                              (___match127760127761_
                               _e119906120282_
                               _hd119905120285_
                               _tl119904120287_
                               _e119909120290_
                               _hd119908120293_
                               _tl119907120295_
                               _e119912120298_
                               _hd119911120301_
                               _tl119910120303_
                               _e119915120306_
                               _hd119914120309_
                               _tl119913120311_)))))
                     (___match127704127705_
                      (lambda (_e119892120464_
                               _hd119891120467_
                               _tl119890120469_
                               _e119895120472_
                               _hd119894120475_
                               _tl119893120477_
                               _e119898120480_
                               _hd119897120483_
                               _tl119896120485_
                               _e119901120488_
                               _hd119900120491_
                               _tl119899120493_)
                        (let ((_L120496_ _hd119900120491_)
                              (_L120497_ _hd119897120483_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L120497_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#case-lambda-expr? _L120496_)))
                              (___kont127669127670_ _L120496_ _L120497_)
                              (___match127732127733_
                               _e119892120464_
                               _hd119891120467_
                               _tl119890120469_
                               _e119895120472_
                               _hd119894120475_
                               _tl119893120477_
                               _e119898120480_
                               _hd119897120483_
                               _tl119896120485_
                               _e119901120488_
                               _hd119900120491_
                               _tl119899120493_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx127667127668_))
                    (let ((_e119892120464_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx127667127668_))))
                      (let ((_tl119890120469_
                             (let ()
                               (declare (not safe))
                               (##cdr _e119892120464_)))
                            (_hd119891120467_
                             (let ()
                               (declare (not safe))
                               (##car _e119892120464_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl119890120469_))
                            (let ((_e119895120472_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl119890120469_))))
                              (let ((_tl119893120477_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e119895120472_)))
                                    (_hd119894120475_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e119895120472_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd119894120475_))
                                    (let ((_e119898120480_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd119894120475_))))
                                      (let ((_tl119896120485_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e119898120480_)))
                                            (_hd119897120483_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e119898120480_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl119896120485_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl119893120477_))
                                                (let ((_e119901120488_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl119893120477_))))
                                                  (let ((_tl119899120493_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e119901120488_)))
                                                        (_hd119900120491_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e119901120488_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl119899120493_))
                                                        (___match127704127705_
                                                         _e119892120464_
                                                         _hd119891120467_
                                                         _tl119890120469_
                                                         _e119895120472_
                                                         _hd119894120475_
                                                         _tl119893120477_
                                                         _e119898120480_
                                                         _hd119897120483_
                                                         _tl119896120485_
                                                         _e119901120488_
                                                         _hd119900120491_
                                                         _tl119899120493_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g119886119945_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g119886119945_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl119893120477_))
                                                (let ((_e119940119966_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl119893120477_))))
                                                  (let ((_tl119938119971_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e119940119966_)))
                                                        (_hd119939119969_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e119940119966_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl119938119971_))
                                                        (___kont127675127676_
                                                         _hd119939119969_
                                                         _hd119894120475_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g119886119945_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g119886119945_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl119893120477_))
                                        (let ((_e119940119966_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl119893120477_))))
                                          (let ((_tl119938119971_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e119940119966_)))
                                                (_hd119939119969_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e119940119966_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl119938119971_))
                                                (___kont127675127676_
                                                 _hd119939119969_
                                                 _hd119894120475_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g119886119945_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g119886119945_))))))
                            (let () (declare (not safe)) (_g119886119945_)))))
                    (let () (declare (not safe)) (_g119886119945_)))))))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_stx118809_)
        (letrec* ((_bind-e__126063126064_
                   (lambda (_id119861_ _expr119862_ _compile?119863_)
                     (let ((__tmp128399
                            (let ()
                              (declare (not safe))
                              (cons _id119861_ '())))
                           (__tmp128397
                            (let ((__tmp128398
                                   (if _compile?119863_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr119862_))
                                       _expr119862_)))
                              (declare (not safe))
                              (cons __tmp128398 '()))))
                       (declare (not safe))
                       (cons __tmp128399 __tmp128397))))
                  (_bind-e__0__126065126066_
                   (lambda (_id119868_ _expr119869_)
                     (let ((_compile?119871_ '#t))
                       (declare (not safe))
                       (_bind-e__126063126064_
                        _id119868_
                        _expr119869_
                        _compile?119871_))))
                  (_bind-e118811_
                   (lambda _g128401_
                     (let ((_g128400_
                            (let ()
                              (declare (not safe))
                              (##length _g128401_))))
                       (cond ((let () (declare (not safe)) (##fx= _g128400_ 2))
                              (apply (lambda (_id119868_ _expr119869_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__126065126066_
                                          _id119868_
                                          _expr119869_)))
                                     _g128401_))
                             ((let () (declare (not safe)) (##fx= _g128400_ 3))
                              (apply (lambda (_id119873_
                                              _expr119874_
                                              _compile?119875_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__126063126064_
                                          _id119873_
                                          _expr119874_
                                          _compile?119875_)))
                                     _g128401_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g128401_))))))
                  (_compile-bindings118812_
                   (lambda (_bindings119445_)
                     (let _lp119447_ ((_rest119449_ _bindings119445_)
                                      (_lift1119450_ '())
                                      (_lift2119451_ '())
                                      (_bind119452_ '()))
                       (let* ((_rest119453119461_ _rest119449_)
                              (_else119455119469_
                               (lambda ()
                                 (values (reverse _lift1119450_)
                                         (reverse _lift2119451_)
                                         (reverse _bind119452_))))
                              (_K119457119848_
                               (lambda (_rest119472_ _hd119473_)
                                 (let* ((___stx127803127804_ _hd119473_)
                                        (_g119477119513_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx127803127804_)))))
                                   (let ((___kont127805127806_
                                          (lambda (_L119755_ _L119756_)
                                            (let* ((___stx127783127784_
                                                    _L119755_)
                                                   (_g119771119785_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx127783127784_)))))
                                              (let ((___kont127785127786_
                                                     (lambda (_L119833_)
                                                       (let ((__tmp128402
                                                              (let ((__tmp128403
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__126063126064_
                                _L119756_
                                _L119755_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp128403 _bind119452_))))
                 (declare (not safe))
                 (_lp119447_
                  _rest119472_
                  _lift1119450_
                  _lift2119451_
                  __tmp128402))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127787127788_
                                                     (lambda (_L119798_)
                                                       (let ((_g128404_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx118809_
                         _L119756_
                         _L119798_
                         '#t))))
                 (begin
                   (let ((_g128405_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g128404_)
                                (##vector-length _g128404_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g128405_ 3)))
                         (error "Context expects 3 values" _g128405_)))
                   (let ((_ids119808_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g128404_ 0)))
                         (_impls119809_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g128404_ 1)))
                         (_clauses119810_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g128404_ 2))))
                     (let* ((_g128406_
                             (for-each gx#core-bind-runtime! _ids119808_))
                            (_xbind119813_
                             (map _bind-e118811_ _ids119808_ _impls119809_))
                            (_expr*119815_
                             (let ((__tmp128408
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses119810_)))
                                   (__tmp128407
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp128408
                                __tmp128407)))
                            (_bind*119817_
                             (let ()
                               (declare (not safe))
                               (_bind-e__126063126064_
                                _L119756_
                                _expr*119815_
                                '#f))))
                       (let ((__tmp128410
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L119756_)))
                             (__tmp128409
                              (map gxc#identifier-symbol _ids119808_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp128410
                          '" => "
                          __tmp128409))
                       (let ((__tmp128412
                              (let ()
                                (declare (not safe))
                                (foldl1 cons _lift2119451_ _xbind119813_)))
                             (__tmp128411
                              (let ()
                                (declare (not safe))
                                (cons _bind*119817_ _bind119452_))))
                         (declare (not safe))
                         (_lp119447_
                          _rest119472_
                          _lift1119450_
                          __tmp128412
                          __tmp128411)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match127794127795_
                                                       (lambda (_e119776119825_
                                                                _hd119775119828_
                                                                _tl119774119830_)
                                                         (let ((_L119833_
                                                                _tl119774119830_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L119833_))
                       (___kont127785127786_ _L119833_)
                       (___kont127787127788_ _tl119774119830_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx127783127784_))
                                                      (let ((_e119776119825_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx127783127784_))))
                (let ((_tl119774119830_
                       (let () (declare (not safe)) (##cdr _e119776119825_)))
                      (_hd119775119828_
                       (let () (declare (not safe)) (##car _e119776119825_))))
                  (___match127794127795_
                   _e119776119825_
                   _hd119775119828_
                   _tl119774119830_)))
              (let () (declare (not safe)) (_g119771119785_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont127807127808_
                                          (lambda (_L119583_ _L119584_)
                                            (let* ((_g119598119628_
                                                    (lambda (_g119599119625_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g119599119625_))))
                                                   (_g119597119723_
                                                    (lambda (_g119599119631_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g119599119631_))
                                                          (let ((_e119605119633_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g119599119631_))))
                    (let ((_hd119604119636_
                           (let ()
                             (declare (not safe))
                             (##car _e119605119633_)))
                          (_tl119603119638_
                           (let ()
                             (declare (not safe))
                             (##cdr _e119605119633_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl119603119638_))
                          (let ((_e119608119641_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl119603119638_))))
                            (let ((_hd119607119644_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e119608119641_)))
                                  (_tl119606119646_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e119608119641_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd119607119644_))
                                  (let ((_e119611119649_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd119607119644_))))
                                    (let ((_hd119610119652_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e119611119649_)))
                                          (_tl119609119654_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e119611119649_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd119610119652_))
                                          (let ((_e119614119657_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd119610119652_))))
                                            (let ((_hd119613119660_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e119614119657_)))
                                                  (_tl119612119662_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e119614119657_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd119613119660_))
                                                  (let ((_e119617119665_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd119613119660_))))
                                                    (let ((_hd119616119668_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e119617119665_)))
                                                          (_tl119615119670_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e119617119665_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl119615119670_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl119612119662_))
                      (let ((_e119620119673_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl119612119662_))))
                        (let ((_hd119619119676_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119620119673_)))
                              (_tl119618119678_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119620119673_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl119618119678_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl119609119654_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl119606119646_))
                                      (let ((_e119623119681_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl119606119646_))))
                                        (let ((_hd119622119684_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e119623119681_)))
                                              (_tl119621119686_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e119623119681_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl119621119686_))
                                              ((lambda (_L119689_
                                                        _L119690_
                                                        _L119691_)
                                                 (let* ((_lambda-id119715_
                                                         (let ((__tmp128414
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L119584_)))
                       (__tmp128413 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp128414 __tmp128413)))
                (_lambda-id119717_
                 (let ((__tmp128415
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx118809_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id119715_ __tmp128415)))
                (_g128416_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id119717_)))
                (_new-case-lambda-expr119720_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L119689_
                    _L119691_
                    _lambda-id119717_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp128418
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L119584_)))
                                                         (__tmp128417
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id119717_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp128418
                                                      '" => "
                                                      __tmp128417))
                                                   (let ((__tmp128421
                                                          (let ((__tmp128422
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__126063126064_
                            _L119584_
                            _new-case-lambda-expr119720_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp128422 _rest119472_)))
                 (__tmp128419
                  (let ((__tmp128420
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__126065126066_
                            _lambda-id119717_
                            _L119690_))))
                    (declare (not safe))
                    (cons __tmp128420 _lift1119450_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp119447_
                                                      __tmp128421
                                                      __tmp128419
                                                      _lift2119451_
                                                      _bind119452_))))
                                               _hd119622119684_
                                               _hd119619119676_
                                               _hd119616119668_)
                                              (let ()
                                                (declare (not safe))
                                                (_g119598119628_
                                                 _g119599119631_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g119598119628_ _g119599119631_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g119598119628_ _g119599119631_)))
                              (let ()
                                (declare (not safe))
                                (_g119598119628_ _g119599119631_)))))
                      (let ()
                        (declare (not safe))
                        (_g119598119628_ _g119599119631_)))
                  (let ()
                    (declare (not safe))
                    (_g119598119628_ _g119599119631_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g119598119628_
                                                     _g119599119631_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g119598119628_
                                             _g119599119631_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g119598119628_ _g119599119631_)))))
                          (let ()
                            (declare (not safe))
                            (_g119598119628_ _g119599119631_)))))
                  (let ()
                    (declare (not safe))
                    (_g119598119628_ _g119599119631_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g119597119723_ _L119583_))))
                                         (___kont127809127810_
                                          (lambda (_L119534_ _L119535_)
                                            (let ((__tmp128423
                                                   (let ((__tmp128424
                                                          (let ((__tmp128425
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp128426
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L119534_))))
                           (declare (not safe))
                           (cons __tmp128426 '()))))
                    (declare (not safe))
                    (cons _L119535_ __tmp128425))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp128424
                                                           _bind119452_))))
                                              (declare (not safe))
                                              (_lp119447_
                                               _rest119472_
                                               _lift1119450_
                                               _lift2119451_
                                               __tmp128423)))))
                                     (let* ((___match127854127855_
                                             (lambda (_e119494119559_
                                                      _hd119493119562_
                                                      _tl119492119564_
                                                      _e119497119567_
                                                      _hd119496119570_
                                                      _tl119495119572_
                                                      _e119500119575_
                                                      _hd119499119578_
                                                      _tl119498119580_)
                                               (let ((_L119583_
                                                      _hd119499119578_)
                                                     (_L119584_
                                                      _hd119496119570_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L119584_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L119583_)))
                                                     (___kont127807127808_
                                                      _L119583_
                                                      _L119584_)
                                                     (___kont127809127810_
                                                      _hd119499119578_
                                                      _hd119493119562_)))))
                                            (___match127832127833_
                                             (lambda (_e119483119731_
                                                      _hd119482119734_
                                                      _tl119481119736_
                                                      _e119486119739_
                                                      _hd119485119742_
                                                      _tl119484119744_
                                                      _e119489119747_
                                                      _hd119488119750_
                                                      _tl119487119752_)
                                               (let ((_L119755_
                                                      _hd119488119750_)
                                                     (_L119756_
                                                      _hd119485119742_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L119756_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L119755_)))
                                                     (___kont127805127806_
                                                      _L119755_
                                                      _L119756_)
                                                     (___match127854127855_
                                                      _e119483119731_
                                                      _hd119482119734_
                                                      _tl119481119736_
                                                      _e119486119739_
                                                      _hd119485119742_
                                                      _tl119484119744_
                                                      _e119489119747_
                                                      _hd119488119750_
                                                      _tl119487119752_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx127803127804_))
                                           (let ((_e119483119731_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx127803127804_))))
                                             (let ((_tl119481119736_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e119483119731_)))
                                                   (_hd119482119734_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e119483119731_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd119482119734_))
                                                   (let ((_e119486119739_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd119482119734_))))
                                                     (let ((_tl119484119744_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e119486119739_)))
                                                           (_hd119485119742_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e119486119739_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl119484119744_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl119481119736_))
                       (let ((_e119489119747_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl119481119736_))))
                         (let ((_tl119487119752_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e119489119747_)))
                               (_hd119488119750_
                                (let ()
                                  (declare (not safe))
                                  (##car _e119489119747_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl119487119752_))
                               (___match127832127833_
                                _e119483119731_
                                _hd119482119734_
                                _tl119481119736_
                                _e119486119739_
                                _hd119485119742_
                                _tl119484119744_
                                _e119489119747_
                                _hd119488119750_
                                _tl119487119752_)
                               (let ()
                                 (declare (not safe))
                                 (_g119477119513_)))))
                       (let () (declare (not safe)) (_g119477119513_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl119481119736_))
                       (let ((_e119508119526_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl119481119736_))))
                         (let ((_tl119506119531_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e119508119526_)))
                               (_hd119507119529_
                                (let ()
                                  (declare (not safe))
                                  (##car _e119508119526_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl119506119531_))
                               (___kont127809127810_
                                _hd119507119529_
                                _hd119482119734_)
                               (let ()
                                 (declare (not safe))
                                 (_g119477119513_)))))
                       (let () (declare (not safe)) (_g119477119513_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl119481119736_))
                                                       (let ((_e119508119526_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl119481119736_))))
                 (let ((_tl119506119531_
                        (let () (declare (not safe)) (##cdr _e119508119526_)))
                       (_hd119507119529_
                        (let () (declare (not safe)) (##car _e119508119526_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl119506119531_))
                       (___kont127809127810_ _hd119507119529_ _hd119482119734_)
                       (let () (declare (not safe)) (_g119477119513_)))))
               (let () (declare (not safe)) (_g119477119513_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g119477119513_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest119453119461_))
                             (let ((_hd119458119851_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest119453119461_)))
                                   (_tl119459119853_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest119453119461_))))
                               (let* ((_hd119856_ _hd119458119851_)
                                      (_rest119858_ _tl119459119853_))
                                 (declare (not safe))
                                 (_K119457119848_ _rest119858_ _hd119856_)))
                             (let ()
                               (declare (not safe))
                               (_else119455119469_)))))))
                  (_lift-kw-lambda?118813_
                   (lambda (_bind119369_)
                     (let* ((___stx127871127872_ _bind119369_)
                            (_g119372119389_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx127871127872_)))))
                       (let ((___kont127873127874_
                              (lambda (_L119425_ _L119426_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _L119426_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#kw-lambda-expr? _L119425_))
                                    '#f)))
                             (___kont127875127876_ (lambda () '#f)))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? ___stx127871127872_))
                             (let ((_e119378119401_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e ___stx127871127872_))))
                               (let ((_tl119376119406_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e119378119401_)))
                                     (_hd119377119404_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e119378119401_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd119377119404_))
                                     (let ((_e119381119409_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd119377119404_))))
                                       (let ((_tl119379119414_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e119381119409_)))
                                             (_hd119380119412_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e119381119409_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl119379119414_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl119376119406_))
                                                 (let ((_e119384119417_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl119376119406_))))
                                                   (let ((_tl119382119422_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e119384119417_)))
                                                         (_hd119383119420_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e119384119417_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl119382119422_))
                                                         (___kont127873127874_
                                                          _hd119383119420_
                                                          _hd119380119412_)
                                                         (___kont127875127876_))))
                                                 (___kont127875127876_))
                                             (___kont127875127876_))))
                                     (___kont127875127876_))))
                             (___kont127875127876_))))))
                  (_lift-kw-lambda-bindings118814_
                   (lambda (_bindings118981_)
                     (let _lp118983_ ((_rest118985_ _bindings118981_)
                                      (_lift1118986_ '())
                                      (_lift2118987_ '())
                                      (_bind118988_ '()))
                       (let* ((_rest118989118997_ _rest118985_)
                              (_else118991119005_
                               (lambda ()
                                 (values (reverse _lift1118986_)
                                         (reverse _lift2118987_)
                                         (reverse _bind118988_))))
                              (_K118993119357_
                               (lambda (_rest119008_ _hd119009_)
                                 (let* ((___stx127901127902_ _hd119009_)
                                        (_g119012119037_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx127901127902_)))))
                                   (let ((___kont127903127904_
                                          (lambda (_L119107_ _L119108_)
                                            (let* ((_g119122119175_
                                                    (lambda (_g119123119172_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g119123119172_))))
                                                   (_g119121119351_
                                                    (lambda (_g119123119178_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g119123119178_))
                                                          (let ((_e119131119180_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g119123119178_))))
                    (let ((_hd119130119183_
                           (let ()
                             (declare (not safe))
                             (##car _e119131119180_)))
                          (_tl119129119185_
                           (let ()
                             (declare (not safe))
                             (##cdr _e119131119180_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl119129119185_))
                          (let ((_e119134119188_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl119129119185_))))
                            (let ((_hd119133119191_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e119134119188_)))
                                  (_tl119132119193_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e119134119188_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd119133119191_))
                                  (let ((_e119137119196_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd119133119191_))))
                                    (let ((_hd119136119199_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e119137119196_)))
                                          (_tl119135119201_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e119137119196_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd119136119199_))
                                          (let ((_e119140119204_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd119136119199_))))
                                            (let ((_hd119139119207_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e119140119204_)))
                                                  (_tl119138119209_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e119140119204_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd119139119207_))
                                                  (let ((_e119143119212_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd119139119207_))))
                                                    (let ((_hd119142119215_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e119143119212_)))
                                                          (_tl119141119217_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e119143119212_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl119141119217_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl119138119209_))
                      (let ((_e119146119220_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl119138119209_))))
                        (let ((_hd119145119223_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119146119220_)))
                              (_tl119144119225_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119146119220_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd119145119223_))
                              (let ((_e119149119228_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd119145119223_))))
                                (let ((_hd119148119231_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e119149119228_)))
                                      (_tl119147119233_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e119149119228_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl119147119233_))
                                      (let ((_e119152119236_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl119147119233_))))
                                        (let ((_hd119151119239_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e119152119236_)))
                                              (_tl119150119241_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e119152119236_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd119151119239_))
                                              (let ((_e119155119244_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd119151119239_))))
                                                (let ((_hd119154119247_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e119155119244_)))
                                                      (_tl119153119249_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e119155119244_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd119154119247_))
                                                      (let ((_e119158119252_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd119154119247_))))
                (let ((_hd119157119255_
                       (let () (declare (not safe)) (##car _e119158119252_)))
                      (_tl119156119257_
                       (let () (declare (not safe)) (##cdr _e119158119252_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd119157119255_))
                      (let ((_e119161119260_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd119157119255_))))
                        (let ((_hd119160119263_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119161119260_)))
                              (_tl119159119265_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119161119260_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl119159119265_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl119156119257_))
                                  (let ((_e119164119268_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl119156119257_))))
                                    (let ((_hd119163119271_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e119164119268_)))
                                          (_tl119162119273_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e119164119268_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl119162119273_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl119153119249_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl119150119241_))
                                                  (let ((_e119167119276_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl119150119241_))))
                                                    (let ((_hd119166119279_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e119167119276_)))
                                                          (_tl119165119281_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e119167119276_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl119165119281_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl119144119225_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl119135119201_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl119132119193_))
                              (let ((_e119170119284_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl119132119193_))))
                                (let ((_hd119169119287_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e119170119284_)))
                                      (_tl119168119289_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e119170119284_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl119168119289_))
                                      ((lambda (_L119292_
                                                _L119293_
                                                _L119294_
                                                _L119295_
                                                _L119296_)
                                         (let* ((_get-kws-id119336_
                                                 (let ((__tmp128428
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L119108_)))
                                                       (__tmp128427
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp128428
                                                    __tmp128427)))
                                                (_get-kws-id119338_
                                                 (let ((__tmp128429
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx118809_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id119336_
                                                    __tmp128429)))
                                                (_main-id119340_
                                                 (let ((__tmp128431
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L119108_)))
                                                       (__tmp128430
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp128431
                                                    __tmp128430)))
                                                (_main-id119342_
                                                 (let ((__tmp128432
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx118809_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id119340_
                                                    __tmp128432)))
                                                (_g128433_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id119338_)))
                                                (_g128434_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id119342_)))
                                                (_new-kw-dispatch119346_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L119292_
                                                    _L119296_
                                                    _get-kws-id119338_)))
                                                (_new-get-kws119348_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L119293_
                                                    _L119295_
                                                    _main-id119342_))))
                                           (let ((__tmp128437
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L119108_)))
                                                 (__tmp128436
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id119338_)))
                                                 (__tmp128435
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id119342_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp128437
                                              '" => "
                                              __tmp128436
                                              '" => "
                                              __tmp128435))
                                           (let ((__tmp128442
                                                  (let ((__tmp128443
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__126063126064_
                                                            _main-id119342_
                                                            _L119294_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp128443
                                                          _lift1118986_)))
                                                 (__tmp128440
                                                  (let ((__tmp128441
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__126063126064_
                                                            _get-kws-id119338_
                                                            _new-get-kws119348_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp128441
                                                          _lift2118987_)))
                                                 (__tmp128438
                                                  (let ((__tmp128439
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__126063126064_
                                                            _L119108_
                                                            _new-kw-dispatch119346_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp128439
                                                          _bind118988_))))
                                             (declare (not safe))
                                             (_lp118983_
                                              _rest119008_
                                              __tmp128442
                                              __tmp128440
                                              __tmp128438))))
                                       _hd119169119287_
                                       _hd119166119279_
                                       _hd119163119271_
                                       _hd119160119263_
                                       _hd119142119215_)
                                      (let ()
                                        (declare (not safe))
                                        (_g119122119175_ _g119123119178_)))))
                              (let ()
                                (declare (not safe))
                                (_g119122119175_ _g119123119178_)))
                          (let ()
                            (declare (not safe))
                            (_g119122119175_ _g119123119178_)))
                      (let ()
                        (declare (not safe))
                        (_g119122119175_ _g119123119178_)))
                  (let ()
                    (declare (not safe))
                    (_g119122119175_ _g119123119178_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g119122119175_
                                                     _g119123119178_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g119122119175_
                                                 _g119123119178_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g119122119175_
                                             _g119123119178_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g119122119175_ _g119123119178_)))
                              (let ()
                                (declare (not safe))
                                (_g119122119175_ _g119123119178_)))))
                      (let ()
                        (declare (not safe))
                        (_g119122119175_ _g119123119178_)))))
              (let ()
                (declare (not safe))
                (_g119122119175_ _g119123119178_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g119122119175_
                                                 _g119123119178_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g119122119175_ _g119123119178_)))))
                              (let ()
                                (declare (not safe))
                                (_g119122119175_ _g119123119178_)))))
                      (let ()
                        (declare (not safe))
                        (_g119122119175_ _g119123119178_)))
                  (let ()
                    (declare (not safe))
                    (_g119122119175_ _g119123119178_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g119122119175_
                                                     _g119123119178_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g119122119175_
                                             _g119123119178_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g119122119175_ _g119123119178_)))))
                          (let ()
                            (declare (not safe))
                            (_g119122119175_ _g119123119178_)))))
                  (let ()
                    (declare (not safe))
                    (_g119122119175_ _g119123119178_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g119121119351_ _L119107_))))
                                         (___kont127905127906_
                                          (lambda (_L119058_ _L119059_)
                                            (let ((__tmp128444
                                                   (let ((__tmp128445
                                                          (let ((__tmp128446
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L119058_ '()))))
                    (declare (not safe))
                    (cons _L119059_ __tmp128446))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp128445
                                                           _bind118988_))))
                                              (declare (not safe))
                                              (_lp118983_
                                               _rest119008_
                                               _lift1118986_
                                               _lift2118987_
                                               __tmp128444)))))
                                     (let ((___match127928127929_
                                            (lambda (_e119018119083_
                                                     _hd119017119086_
                                                     _tl119016119088_
                                                     _e119021119091_
                                                     _hd119020119094_
                                                     _tl119019119096_
                                                     _e119024119099_
                                                     _hd119023119102_
                                                     _tl119022119104_)
                                              (let ((_L119107_
                                                     _hd119023119102_)
                                                    (_L119108_
                                                     _hd119020119094_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _L119108_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#kw-lambda-expr?
                                                            _L119107_)))
                                                    (___kont127903127904_
                                                     _L119107_
                                                     _L119108_)
                                                    (___kont127905127906_
                                                     _hd119023119102_
                                                     _hd119017119086_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx127901127902_))
                                           (let ((_e119018119083_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx127901127902_))))
                                             (let ((_tl119016119088_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e119018119083_)))
                                                   (_hd119017119086_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e119018119083_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd119017119086_))
                                                   (let ((_e119021119091_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd119017119086_))))
                                                     (let ((_tl119019119096_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e119021119091_)))
                                                           (_hd119020119094_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e119021119091_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl119019119096_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl119016119088_))
                       (let ((_e119024119099_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl119016119088_))))
                         (let ((_tl119022119104_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e119024119099_)))
                               (_hd119023119102_
                                (let ()
                                  (declare (not safe))
                                  (##car _e119024119099_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl119022119104_))
                               (___match127928127929_
                                _e119018119083_
                                _hd119017119086_
                                _tl119016119088_
                                _e119021119091_
                                _hd119020119094_
                                _tl119019119096_
                                _e119024119099_
                                _hd119023119102_
                                _tl119022119104_)
                               (let ()
                                 (declare (not safe))
                                 (_g119012119037_)))))
                       (let () (declare (not safe)) (_g119012119037_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl119016119088_))
                       (let ((_e119032119050_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl119016119088_))))
                         (let ((_tl119030119055_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e119032119050_)))
                               (_hd119031119053_
                                (let ()
                                  (declare (not safe))
                                  (##car _e119032119050_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl119030119055_))
                               (___kont127905127906_
                                _hd119031119053_
                                _hd119017119086_)
                               (let ()
                                 (declare (not safe))
                                 (_g119012119037_)))))
                       (let () (declare (not safe)) (_g119012119037_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl119016119088_))
                                                       (let ((_e119032119050_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl119016119088_))))
                 (let ((_tl119030119055_
                        (let () (declare (not safe)) (##cdr _e119032119050_)))
                       (_hd119031119053_
                        (let () (declare (not safe)) (##car _e119032119050_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl119030119055_))
                       (___kont127905127906_ _hd119031119053_ _hd119017119086_)
                       (let () (declare (not safe)) (_g119012119037_)))))
               (let () (declare (not safe)) (_g119012119037_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g119012119037_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest118989118997_))
                             (let ((_hd118994119360_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest118989118997_)))
                                   (_tl118995119362_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest118989118997_))))
                               (let* ((_hd119365_ _hd118994119360_)
                                      (_rest119367_ _tl118995119362_))
                                 (declare (not safe))
                                 (_K118993119357_ _rest119367_ _hd119365_)))
                             (let ()
                               (declare (not safe))
                               (_else118991119005_))))))))
          (let* ((___stx127945127946_ _stx118809_)
                 (_g118817118843_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx127945127946_)))))
            (let ((___kont127947127948_
                   (lambda (_L118903_ _L118904_)
                     (let ((__tmp128448
                            (lambda ()
                              (if (let ((__tmp128475
                                         (let ((__tmp128476
                                                (lambda (_g118932118935_
                                                         _g118933118937_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g118932118935_
                                                          _g118933118937_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp128476
                                                   '()
                                                   _L118904_))))
                                    (declare (not safe))
                                    (ormap1 _lift-kw-lambda?118813_
                                            __tmp128475))
                                  (let ((_g128462_
                                         (let ((__tmp128464
                                                (let ((__tmp128465
                                                       (lambda (_g118939118942_
                                                                _g118940118944_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g118939118942_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g118940118944_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp128465
                                                          '()
                                                          _L118904_))))
                                           (declare (not safe))
                                           (_lift-kw-lambda-bindings118814_
                                            __tmp128464))))
                                    (begin
                                      (let ((_g128463_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g128462_)
                                                   (##vector-length _g128462_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g128463_ 3)))
                                            (error "Context expects 3 values"
                                                   _g128463_)))
                                      (let ((_lift1118947_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g128462_ 0)))
                                            (_lift2118948_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g128462_ 1)))
                                            (_hd118949_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g128462_ 2))))
                                        (let* ((_expr118951_
                                                (let ((__tmp128466
                                                       (let ((__tmp128467
                                                              (let ((__tmp128468
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L118903_ '()))))
                        (declare (not safe))
                        (cons _hd118949_ __tmp128468))))
                 (declare (not safe))
                 (cons '%#let-values __tmp128467))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp128466
                                                   _stx118809_)))
                                               (_expr118953_
                                                (let ((__tmp128469
                                                       (let ((__tmp128470
                                                              (let ((__tmp128471
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr118951_ '()))))
                        (declare (not safe))
                        (cons _lift2118948_ __tmp128471))))
                 (declare (not safe))
                 (cons '%#let-values __tmp128470))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp128469
                                                   _stx118809_)))
                                               (_expr118955_
                                                (let ((__tmp128472
                                                       (let ((__tmp128473
                                                              (let ((__tmp128474
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr118953_ '()))))
                        (declare (not safe))
                        (cons _lift1118947_ __tmp128474))))
                 (declare (not safe))
                 (cons '%#let-values __tmp128473))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp128472
                                                   _stx118809_))))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#lift-top-lambda-let-values%
                                             _expr118955_))))))
                                  (let ((_g128449_
                                         (let ((__tmp128451
                                                (let ((__tmp128452
                                                       (lambda (_g118957118960_
                                                                _g118958118962_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g118957118960_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g118958118962_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp128452
                                                          '()
                                                          _L118904_))))
                                           (declare (not safe))
                                           (_compile-bindings118812_
                                            __tmp128451))))
                                    (begin
                                      (let ((_g128450_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g128449_)
                                                   (##vector-length _g128449_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g128450_ 3)))
                                            (error "Context expects 3 values"
                                                   _g128450_)))
                                      (let ((_lift1118965_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g128449_ 0)))
                                            (_lift2118966_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g128449_ 1)))
                                            (_hd118967_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g128449_ 2))))
                                        (let* ((_body118969_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _L118903_)))
                                               (_expr118971_
                                                (let ((__tmp128453
                                                       (let ((__tmp128454
                                                              (let ((__tmp128455
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _body118969_ '()))))
                        (declare (not safe))
                        (cons _hd118967_ __tmp128455))))
                 (declare (not safe))
                 (cons '%#let-values __tmp128454))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp128453
                                                   _stx118809_)))
                                               (_expr118973_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift2118966_))
                                                    _expr118971_
                                                    (let ((__tmp128456
                                                           (let ((__tmp128457
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp128458
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr118971_ '()))))
                            (declare (not safe))
                            (cons _lift2118966_ __tmp128458))))
                     (declare (not safe))
                     (cons '%#let-values __tmp128457))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp128456 _stx118809_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_expr118975_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift1118965_))
                                                    _expr118973_
                                                    (let ((__tmp128459
                                                           (let ((__tmp128460
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp128461
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr118973_ '()))))
                            (declare (not safe))
                            (cons _lift1118965_ __tmp128461))))
                     (declare (not safe))
                     (cons '%#let-values __tmp128460))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp128459 _stx118809_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _expr118975_)))))))
                           (__tmp128447
                            (let ((__obj128151
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj128151)
                              __obj128151)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp128448
                        gx#current-expander-context
                        __tmp128447))))
                  (___kont127951127952_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx118809_)))))
              (let ((___match127972127973_
                     (lambda (_e118823118855_
                              _hd118822118858_
                              _tl118821118860_
                              _e118826118863_
                              _hd118825118866_
                              _tl118824118868_
                              ___splice127949127950_
                              _target118827118871_
                              _tl118829118873_)
                       (letrec ((_loop118830118876_
                                 (lambda (_hd118828118879_ _bind118834118881_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd118828118879_))
                                       (let ((_e118831118884_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd118828118879_))))
                                         (let ((_lp-tl118833118889_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e118831118884_)))
                                               (_lp-hd118832118887_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e118831118884_))))
                                           (let ((__tmp128479
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd118832118887_
                                                          _bind118834118881_))))
                                             (declare (not safe))
                                             (_loop118830118876_
                                              _lp-tl118833118889_
                                              __tmp128479))))
                                       (let ((_bind118835118892_
                                              (reverse _bind118834118881_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl118824118868_))
                                             (let ((_e118838118895_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl118824118868_))))
                                               (let ((_tl118836118900_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e118838118895_)))
                                                     (_hd118837118898_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e118838118895_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl118836118900_))
                                                     (let ((_L118903_
                                                            _hd118837118898_)
                                                           (_L118904_
                                                            _bind118835118892_))
                                                       (if (let ((__tmp128477
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp128478
                                 (lambda (_g118924118927_ _g118925118929_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g118924118927_ _g118925118929_)))))
                            (declare (not safe))
                            (foldr1 __tmp128478 '() _L118904_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp128477))
                   (___kont127947127948_ _L118903_ _L118904_)
                   (___kont127951127952_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont127951127952_))))
                                             (___kont127951127952_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop118830118876_ _target118827118871_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx127945127946_))
                    (let ((_e118823118855_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx127945127946_))))
                      (let ((_tl118821118860_
                             (let ()
                               (declare (not safe))
                               (##cdr _e118823118855_)))
                            (_hd118822118858_
                             (let ()
                               (declare (not safe))
                               (##car _e118823118855_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl118821118860_))
                            (let ((_e118826118863_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl118821118860_))))
                              (let ((_tl118824118868_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e118826118863_)))
                                    (_hd118825118866_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e118826118863_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd118825118866_))
                                    (let ((___splice127949127950_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd118825118866_
                                              '0))))
                                      (let ((_tl118829118873_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice127949127950_
                                                '1)))
                                            (_target118827118871_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice127949127950_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl118829118873_))
                                            (___match127972127973_
                                             _e118823118855_
                                             _hd118822118858_
                                             _tl118821118860_
                                             _e118826118863_
                                             _hd118825118866_
                                             _tl118824118868_
                                             ___splice127949127950_
                                             _target118827118871_
                                             _tl118829118873_)
                                            (___kont127951127952_))))
                                    (___kont127951127952_))))
                            (___kont127951127952_))))
                    (___kont127951127952_))))))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_stx117953_)
        (letrec* ((_bind-e__126068126069_
                   (lambda (_id118793_ _expr118794_ _compile?118795_)
                     (let ((__tmp128482
                            (let ()
                              (declare (not safe))
                              (cons _id118793_ '())))
                           (__tmp128480
                            (let ((__tmp128481
                                   (if _compile?118795_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr118794_))
                                       _expr118794_)))
                              (declare (not safe))
                              (cons __tmp128481 '()))))
                       (declare (not safe))
                       (cons __tmp128482 __tmp128480))))
                  (_bind-e__0__126070126071_
                   (lambda (_id118800_ _expr118801_)
                     (let ((_compile?118803_ '#t))
                       (declare (not safe))
                       (_bind-e__126068126069_
                        _id118800_
                        _expr118801_
                        _compile?118803_))))
                  (_bind-e117955_
                   (lambda _g128484_
                     (let ((_g128483_
                            (let ()
                              (declare (not safe))
                              (##length _g128484_))))
                       (cond ((let () (declare (not safe)) (##fx= _g128483_ 2))
                              (apply (lambda (_id118800_ _expr118801_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__126070126071_
                                          _id118800_
                                          _expr118801_)))
                                     _g128484_))
                             ((let () (declare (not safe)) (##fx= _g128483_ 3))
                              (apply (lambda (_id118805_
                                              _expr118806_
                                              _compile?118807_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__126068126069_
                                          _id118805_
                                          _expr118806_
                                          _compile?118807_)))
                                     _g128484_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g128484_))))))
                  (_compile-bindings117956_
                   (lambda (_rest118091_)
                     (let _lp118093_ ((_rest118095_ _rest118091_)
                                      (_bind118096_ '()))
                       (let* ((_rest118097118105_ _rest118095_)
                              (_else118099118113_
                               (lambda () (reverse _bind118096_)))
                              (_K118101118780_
                               (lambda (_rest118116_ _hd118117_)
                                 (let* ((___stx127995127996_ _hd118117_)
                                        (_g118122118169_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx127995127996_)))))
                                   (let ((___kont127997127998_
                                          (lambda (_L118687_ _L118688_)
                                            (let* ((___stx127975127976_
                                                    _L118687_)
                                                   (_g118703118717_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx127975127976_)))))
                                              (let ((___kont127977127978_
                                                     (lambda (_L118765_)
                                                       (let ((__tmp128485
                                                              (let ((__tmp128486
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__126068126069_
                                _L118688_
                                _L118687_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp128486 _bind118096_))))
                 (declare (not safe))
                 (_lp118093_ _rest118116_ __tmp128485))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127979127980_
                                                     (lambda (_L118730_)
                                                       (let ((_g128487_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx117953_
                         _L118688_
                         _L118730_
                         '#t))))
                 (begin
                   (let ((_g128488_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g128487_)
                                (##vector-length _g128487_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g128488_ 3)))
                         (error "Context expects 3 values" _g128488_)))
                   (let ((_ids118740_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g128487_ 0)))
                         (_impls118741_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g128487_ 1)))
                         (_clauses118742_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g128487_ 2))))
                     (let* ((_g128489_
                             (for-each gx#core-bind-runtime! _ids118740_))
                            (_xbind118745_
                             (map _bind-e117955_ _ids118740_ _impls118741_))
                            (_expr*118747_
                             (let ((__tmp128491
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses118742_)))
                                   (__tmp128490
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp128491
                                __tmp128490)))
                            (_bind*118749_
                             (let ()
                               (declare (not safe))
                               (_bind-e__126068126069_
                                _L118688_
                                _expr*118747_
                                '#f))))
                       (let ((__tmp128493
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L118688_)))
                             (__tmp128492
                              (map gxc#identifier-symbol _ids118740_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp128493
                          '" => "
                          __tmp128492))
                       (let ((__tmp128494
                              (let ((__tmp128495
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _bind118096_
                                               _xbind118745_))))
                                (declare (not safe))
                                (cons _bind*118749_ __tmp128495))))
                         (declare (not safe))
                         (_lp118093_ _rest118116_ __tmp128494)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match127986127987_
                                                       (lambda (_e118708118757_
                                                                _hd118707118760_
                                                                _tl118706118762_)
                                                         (let ((_L118765_
                                                                _tl118706118762_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L118765_))
                       (___kont127977127978_ _L118765_)
                       (___kont127979127980_ _tl118706118762_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx127975127976_))
                                                      (let ((_e118708118757_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx127975127976_))))
                (let ((_tl118706118762_
                       (let () (declare (not safe)) (##cdr _e118708118757_)))
                      (_hd118707118760_
                       (let () (declare (not safe)) (##car _e118708118757_))))
                  (___match127986127987_
                   _e118708118757_
                   _hd118707118760_
                   _tl118706118762_)))
              (let () (declare (not safe)) (_g118703118717_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont127999128000_
                                          (lambda (_L118515_ _L118516_)
                                            (let* ((_g118530118560_
                                                    (lambda (_g118531118557_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g118531118557_))))
                                                   (_g118529118655_
                                                    (lambda (_g118531118563_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g118531118563_))
                                                          (let ((_e118537118565_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g118531118563_))))
                    (let ((_hd118536118568_
                           (let ()
                             (declare (not safe))
                             (##car _e118537118565_)))
                          (_tl118535118570_
                           (let ()
                             (declare (not safe))
                             (##cdr _e118537118565_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl118535118570_))
                          (let ((_e118540118573_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl118535118570_))))
                            (let ((_hd118539118576_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e118540118573_)))
                                  (_tl118538118578_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e118540118573_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd118539118576_))
                                  (let ((_e118543118581_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd118539118576_))))
                                    (let ((_hd118542118584_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e118543118581_)))
                                          (_tl118541118586_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e118543118581_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd118542118584_))
                                          (let ((_e118546118589_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd118542118584_))))
                                            (let ((_hd118545118592_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e118546118589_)))
                                                  (_tl118544118594_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e118546118589_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd118545118592_))
                                                  (let ((_e118549118597_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd118545118592_))))
                                                    (let ((_hd118548118600_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e118549118597_)))
                                                          (_tl118547118602_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e118549118597_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl118547118602_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl118544118594_))
                      (let ((_e118552118605_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl118544118594_))))
                        (let ((_hd118551118608_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118552118605_)))
                              (_tl118550118610_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118552118605_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl118550118610_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl118541118586_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118538118578_))
                                      (let ((_e118555118613_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118538118578_))))
                                        (let ((_hd118554118616_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118555118613_)))
                                              (_tl118553118618_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118555118613_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118553118618_))
                                              ((lambda (_L118621_
                                                        _L118622_
                                                        _L118623_)
                                                 (let* ((_lambda-id118647_
                                                         (let ((__tmp128497
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L118516_)))
                       (__tmp128496 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp128497 __tmp128496)))
                (_lambda-id118649_
                 (let ((__tmp128498
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx117953_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id118647_ __tmp128498)))
                (_g128499_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id118649_)))
                (_new-case-lambda-expr118652_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L118621_
                    _L118623_
                    _lambda-id118649_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp128501
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L118516_)))
                                                         (__tmp128500
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id118649_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp128501
                                                      '" => "
                                                      __tmp128500))
                                                   (let ((__tmp128504
                                                          (let ((__tmp128505
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__126068126069_
                            _L118516_
                            _new-case-lambda-expr118652_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp128505 _rest118116_)))
                 (__tmp128502
                  (let ((__tmp128503
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__126070126071_
                            _lambda-id118649_
                            _L118622_))))
                    (declare (not safe))
                    (cons __tmp128503 _bind118096_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp118093_
                                                      __tmp128504
                                                      __tmp128502))))
                                               _hd118554118616_
                                               _hd118551118608_
                                               _hd118548118600_)
                                              (let ()
                                                (declare (not safe))
                                                (_g118530118560_
                                                 _g118531118563_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g118530118560_ _g118531118563_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g118530118560_ _g118531118563_)))
                              (let ()
                                (declare (not safe))
                                (_g118530118560_ _g118531118563_)))))
                      (let ()
                        (declare (not safe))
                        (_g118530118560_ _g118531118563_)))
                  (let ()
                    (declare (not safe))
                    (_g118530118560_ _g118531118563_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g118530118560_
                                                     _g118531118563_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g118530118560_
                                             _g118531118563_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g118530118560_ _g118531118563_)))))
                          (let ()
                            (declare (not safe))
                            (_g118530118560_ _g118531118563_)))))
                  (let ()
                    (declare (not safe))
                    (_g118530118560_ _g118531118563_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g118529118655_ _L118515_))))
                                         (___kont128001128002_
                                          (lambda (_L118239_ _L118240_)
                                            (let* ((_g118254118307_
                                                    (lambda (_g118255118304_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g118255118304_))))
                                                   (_g118253118483_
                                                    (lambda (_g118255118310_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g118255118310_))
                                                          (let ((_e118263118312_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g118255118310_))))
                    (let ((_hd118262118315_
                           (let ()
                             (declare (not safe))
                             (##car _e118263118312_)))
                          (_tl118261118317_
                           (let ()
                             (declare (not safe))
                             (##cdr _e118263118312_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl118261118317_))
                          (let ((_e118266118320_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl118261118317_))))
                            (let ((_hd118265118323_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e118266118320_)))
                                  (_tl118264118325_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e118266118320_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd118265118323_))
                                  (let ((_e118269118328_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd118265118323_))))
                                    (let ((_hd118268118331_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e118269118328_)))
                                          (_tl118267118333_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e118269118328_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd118268118331_))
                                          (let ((_e118272118336_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd118268118331_))))
                                            (let ((_hd118271118339_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e118272118336_)))
                                                  (_tl118270118341_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e118272118336_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd118271118339_))
                                                  (let ((_e118275118344_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd118271118339_))))
                                                    (let ((_hd118274118347_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e118275118344_)))
                                                          (_tl118273118349_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e118275118344_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl118273118349_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl118270118341_))
                      (let ((_e118278118352_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl118270118341_))))
                        (let ((_hd118277118355_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118278118352_)))
                              (_tl118276118357_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118278118352_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd118277118355_))
                              (let ((_e118281118360_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd118277118355_))))
                                (let ((_hd118280118363_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118281118360_)))
                                      (_tl118279118365_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118281118360_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118279118365_))
                                      (let ((_e118284118368_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118279118365_))))
                                        (let ((_hd118283118371_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118284118368_)))
                                              (_tl118282118373_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118284118368_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd118283118371_))
                                              (let ((_e118287118376_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd118283118371_))))
                                                (let ((_hd118286118379_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e118287118376_)))
                                                      (_tl118285118381_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e118287118376_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd118286118379_))
                                                      (let ((_e118290118384_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd118286118379_))))
                (let ((_hd118289118387_
                       (let () (declare (not safe)) (##car _e118290118384_)))
                      (_tl118288118389_
                       (let () (declare (not safe)) (##cdr _e118290118384_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd118289118387_))
                      (let ((_e118293118392_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd118289118387_))))
                        (let ((_hd118292118395_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118293118392_)))
                              (_tl118291118397_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118293118392_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl118291118397_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl118288118389_))
                                  (let ((_e118296118400_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl118288118389_))))
                                    (let ((_hd118295118403_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e118296118400_)))
                                          (_tl118294118405_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e118296118400_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl118294118405_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118285118381_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl118282118373_))
                                                  (let ((_e118299118408_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl118282118373_))))
                                                    (let ((_hd118298118411_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e118299118408_)))
                                                          (_tl118297118413_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e118299118408_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl118297118413_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl118276118357_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl118267118333_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118264118325_))
                              (let ((_e118302118416_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118264118325_))))
                                (let ((_hd118301118419_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118302118416_)))
                                      (_tl118300118421_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118302118416_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118300118421_))
                                      ((lambda (_L118424_
                                                _L118425_
                                                _L118426_
                                                _L118427_
                                                _L118428_)
                                         (let* ((_get-kws-id118468_
                                                 (let ((__tmp128507
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L118240_)))
                                                       (__tmp128506
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp128507
                                                    __tmp128506)))
                                                (_get-kws-id118470_
                                                 (let ((__tmp128508
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx117953_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id118468_
                                                    __tmp128508)))
                                                (_main-id118472_
                                                 (let ((__tmp128510
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L118240_)))
                                                       (__tmp128509
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp128510
                                                    __tmp128509)))
                                                (_main-id118474_
                                                 (let ((__tmp128511
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx117953_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id118472_
                                                    __tmp128511)))
                                                (_g128512_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id118470_)))
                                                (_g128513_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id118474_)))
                                                (_new-kw-dispatch118478_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L118424_
                                                    _L118428_
                                                    _get-kws-id118470_)))
                                                (_new-get-kws118480_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L118425_
                                                    _L118427_
                                                    _main-id118474_))))
                                           (let ((__tmp128516
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L118240_)))
                                                 (__tmp128515
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id118470_)))
                                                 (__tmp128514
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id118474_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp128516
                                              '" => "
                                              __tmp128515
                                              '" => "
                                              __tmp128514))
                                           (let ((__tmp128517
                                                  (let ((__tmp128522
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__126068126069_
                                                            _main-id118474_
                                                            _L118426_
                                                            '#f)))
                                                        (__tmp128518
                                                         (let ((__tmp128521
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_bind-e__126068126069_
                           _get-kws-id118470_
                           _new-get-kws118480_
                           '#f)))
                       (__tmp128519
                        (let ((__tmp128520
                               (let ()
                                 (declare (not safe))
                                 (_bind-e__126068126069_
                                  _L118240_
                                  _new-kw-dispatch118478_
                                  '#f))))
                          (declare (not safe))
                          (cons __tmp128520 _rest118116_))))
                   (declare (not safe))
                   (cons __tmp128521 __tmp128519))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp128522
                                                          __tmp128518))))
                                             (declare (not safe))
                                             (_lp118093_
                                              __tmp128517
                                              _bind118096_))))
                                       _hd118301118419_
                                       _hd118298118411_
                                       _hd118295118403_
                                       _hd118292118395_
                                       _hd118274118347_)
                                      (let ()
                                        (declare (not safe))
                                        (_g118254118307_ _g118255118310_)))))
                              (let ()
                                (declare (not safe))
                                (_g118254118307_ _g118255118310_)))
                          (let ()
                            (declare (not safe))
                            (_g118254118307_ _g118255118310_)))
                      (let ()
                        (declare (not safe))
                        (_g118254118307_ _g118255118310_)))
                  (let ()
                    (declare (not safe))
                    (_g118254118307_ _g118255118310_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g118254118307_
                                                     _g118255118310_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g118254118307_
                                                 _g118255118310_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g118254118307_
                                             _g118255118310_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g118254118307_ _g118255118310_)))
                              (let ()
                                (declare (not safe))
                                (_g118254118307_ _g118255118310_)))))
                      (let ()
                        (declare (not safe))
                        (_g118254118307_ _g118255118310_)))))
              (let ()
                (declare (not safe))
                (_g118254118307_ _g118255118310_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g118254118307_
                                                 _g118255118310_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g118254118307_ _g118255118310_)))))
                              (let ()
                                (declare (not safe))
                                (_g118254118307_ _g118255118310_)))))
                      (let ()
                        (declare (not safe))
                        (_g118254118307_ _g118255118310_)))
                  (let ()
                    (declare (not safe))
                    (_g118254118307_ _g118255118310_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g118254118307_
                                                     _g118255118310_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g118254118307_
                                             _g118255118310_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g118254118307_ _g118255118310_)))))
                          (let ()
                            (declare (not safe))
                            (_g118254118307_ _g118255118310_)))))
                  (let ()
                    (declare (not safe))
                    (_g118254118307_ _g118255118310_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g118253118483_ _L118239_))))
                                         (___kont128003128004_
                                          (lambda (_L118190_ _L118191_)
                                            (let ((__tmp128523
                                                   (let ((__tmp128524
                                                          (let ((__tmp128525
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp128526
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L118190_))))
                           (declare (not safe))
                           (cons __tmp128526 '()))))
                    (declare (not safe))
                    (cons _L118191_ __tmp128525))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp128524
                                                           _bind118096_))))
                                              (declare (not safe))
                                              (_lp118093_
                                               _rest118116_
                                               __tmp128523)))))
                                     (let* ((___match128070128071_
                                             (lambda (_e118150118215_
                                                      _hd118149118218_
                                                      _tl118148118220_
                                                      _e118153118223_
                                                      _hd118152118226_
                                                      _tl118151118228_
                                                      _e118156118231_
                                                      _hd118155118234_
                                                      _tl118154118236_)
                                               (let ((_L118239_
                                                      _hd118155118234_)
                                                     (_L118240_
                                                      _hd118152118226_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L118240_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#kw-lambda-expr?
                                                             _L118239_)))
                                                     (___kont128001128002_
                                                      _L118239_
                                                      _L118240_)
                                                     (___kont128003128004_
                                                      _hd118155118234_
                                                      _hd118149118218_)))))
                                            (___match128048128049_
                                             (lambda (_e118139118491_
                                                      _hd118138118494_
                                                      _tl118137118496_
                                                      _e118142118499_
                                                      _hd118141118502_
                                                      _tl118140118504_
                                                      _e118145118507_
                                                      _hd118144118510_
                                                      _tl118143118512_)
                                               (let ((_L118515_
                                                      _hd118144118510_)
                                                     (_L118516_
                                                      _hd118141118502_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L118516_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L118515_)))
                                                     (___kont127999128000_
                                                      _L118515_
                                                      _L118516_)
                                                     (___match128070128071_
                                                      _e118139118491_
                                                      _hd118138118494_
                                                      _tl118137118496_
                                                      _e118142118499_
                                                      _hd118141118502_
                                                      _tl118140118504_
                                                      _e118145118507_
                                                      _hd118144118510_
                                                      _tl118143118512_)))))
                                            (___match128026128027_
                                             (lambda (_e118128118663_
                                                      _hd118127118666_
                                                      _tl118126118668_
                                                      _e118131118671_
                                                      _hd118130118674_
                                                      _tl118129118676_
                                                      _e118134118679_
                                                      _hd118133118682_
                                                      _tl118132118684_)
                                               (let ((_L118687_
                                                      _hd118133118682_)
                                                     (_L118688_
                                                      _hd118130118674_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L118688_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L118687_)))
                                                     (___kont127997127998_
                                                      _L118687_
                                                      _L118688_)
                                                     (___match128048128049_
                                                      _e118128118663_
                                                      _hd118127118666_
                                                      _tl118126118668_
                                                      _e118131118671_
                                                      _hd118130118674_
                                                      _tl118129118676_
                                                      _e118134118679_
                                                      _hd118133118682_
                                                      _tl118132118684_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx127995127996_))
                                           (let ((_e118128118663_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx127995127996_))))
                                             (let ((_tl118126118668_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e118128118663_)))
                                                   (_hd118127118666_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e118128118663_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd118127118666_))
                                                   (let ((_e118131118671_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd118127118666_))))
                                                     (let ((_tl118129118676_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e118131118671_)))
                                                           (_hd118130118674_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e118131118671_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl118129118676_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl118126118668_))
                       (let ((_e118134118679_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl118126118668_))))
                         (let ((_tl118132118684_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e118134118679_)))
                               (_hd118133118682_
                                (let ()
                                  (declare (not safe))
                                  (##car _e118134118679_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl118132118684_))
                               (___match128026128027_
                                _e118128118663_
                                _hd118127118666_
                                _tl118126118668_
                                _e118131118671_
                                _hd118130118674_
                                _tl118129118676_
                                _e118134118679_
                                _hd118133118682_
                                _tl118132118684_)
                               (let ()
                                 (declare (not safe))
                                 (_g118122118169_)))))
                       (let () (declare (not safe)) (_g118122118169_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl118126118668_))
                       (let ((_e118164118182_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl118126118668_))))
                         (let ((_tl118162118187_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e118164118182_)))
                               (_hd118163118185_
                                (let ()
                                  (declare (not safe))
                                  (##car _e118164118182_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl118162118187_))
                               (___kont128003128004_
                                _hd118163118185_
                                _hd118127118666_)
                               (let ()
                                 (declare (not safe))
                                 (_g118122118169_)))))
                       (let () (declare (not safe)) (_g118122118169_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl118126118668_))
                                                       (let ((_e118164118182_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl118126118668_))))
                 (let ((_tl118162118187_
                        (let () (declare (not safe)) (##cdr _e118164118182_)))
                       (_hd118163118185_
                        (let () (declare (not safe)) (##car _e118164118182_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl118162118187_))
                       (___kont128003128004_ _hd118163118185_ _hd118127118666_)
                       (let () (declare (not safe)) (_g118122118169_)))))
               (let () (declare (not safe)) (_g118122118169_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g118122118169_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest118097118105_))
                             (let ((_hd118102118783_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest118097118105_)))
                                   (_tl118103118785_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest118097118105_))))
                               (let* ((_hd118788_ _hd118102118783_)
                                      (_rest118790_ _tl118103118785_))
                                 (declare (not safe))
                                 (_K118101118780_ _rest118790_ _hd118788_)))
                             (let ()
                               (declare (not safe))
                               (_else118099118113_))))))))
          (let* ((___stx128087128088_ _stx117953_)
                 (_g117959117986_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx128087128088_)))))
            (let ((___kont128089128090_
                   (lambda (_L118046_ _L118047_ _L118048_)
                     (let ((__tmp128528
                            (lambda ()
                              (let ((_hd118085_
                                     (let ((__tmp128529
                                            (let ((__tmp128530
                                                   (lambda (_g118077118080_
                                                            _g118078118082_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g118077118080_
                                                             _g118078118082_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp128530
                                                      '()
                                                      _L118047_))))
                                       (declare (not safe))
                                       (_compile-bindings117956_ __tmp128529)))
                                    (_body118086_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L118046_))))
                                (let ((__tmp128531
                                       (let ((__tmp128532
                                              (let ((__tmp128533
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body118086_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _hd118085_
                                                      __tmp128533))))
                                         (declare (not safe))
                                         (cons _L118048_ __tmp128532))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp128531
                                   _stx117953_)))))
                           (__tmp128527
                            (let ((__obj128152
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj128152)
                              __obj128152)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp128528
                        gx#current-expander-context
                        __tmp128527))))
                  (___kont128093128094_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx117953_)))))
              (let ((___match128114128115_
                     (lambda (_e117966117998_
                              _hd117965118001_
                              _tl117964118003_
                              _e117969118006_
                              _hd117968118009_
                              _tl117967118011_
                              ___splice128091128092_
                              _target117970118014_
                              _tl117972118016_)
                       (letrec ((_loop117973118019_
                                 (lambda (_hd117971118022_ _bind117977118024_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd117971118022_))
                                       (let ((_e117974118027_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd117971118022_))))
                                         (let ((_lp-tl117976118032_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e117974118027_)))
                                               (_lp-hd117975118030_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e117974118027_))))
                                           (let ((__tmp128536
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd117975118030_
                                                          _bind117977118024_))))
                                             (declare (not safe))
                                             (_loop117973118019_
                                              _lp-tl117976118032_
                                              __tmp128536))))
                                       (let ((_bind117978118035_
                                              (reverse _bind117977118024_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl117967118011_))
                                             (let ((_e117981118038_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl117967118011_))))
                                               (let ((_tl117979118043_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e117981118038_)))
                                                     (_hd117980118041_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e117981118038_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl117979118043_))
                                                     (let ((_L118046_
                                                            _hd117980118041_)
                                                           (_L118047_
                                                            _bind117978118035_)
                                                           (_L118048_
                                                            _hd117965118001_))
                                                       (if (let ((__tmp128534
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp128535
                                 (lambda (_g118069118072_ _g118070118074_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g118069118072_ _g118070118074_)))))
                            (declare (not safe))
                            (foldr1 __tmp128535 '() _L118047_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp128534))
                   (___kont128089128090_ _L118046_ _L118047_ _L118048_)
                   (___kont128093128094_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont128093128094_))))
                                             (___kont128093128094_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop117973118019_ _target117970118014_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx128087128088_))
                    (let ((_e117966117998_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx128087128088_))))
                      (let ((_tl117964118003_
                             (let ()
                               (declare (not safe))
                               (##cdr _e117966117998_)))
                            (_hd117965118001_
                             (let ()
                               (declare (not safe))
                               (##car _e117966117998_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl117964118003_))
                            (let ((_e117969118006_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl117964118003_))))
                              (let ((_tl117967118011_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e117969118006_)))
                                    (_hd117968118009_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e117969118006_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd117968118009_))
                                    (let ((___splice128091128092_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd117968118009_
                                              '0))))
                                      (let ((_tl117972118016_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice128091128092_
                                                '1)))
                                            (_target117970118014_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice128091128092_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl117972118016_))
                                            (___match128114128115_
                                             _e117966117998_
                                             _hd117965118001_
                                             _tl117964118003_
                                             _e117969118006_
                                             _hd117968118009_
                                             _tl117967118011_
                                             ___splice128091128092_
                                             _target117970118014_
                                             _tl117972118016_)
                                            (___kont128093128094_))))
                                    (___kont128093128094_))))
                            (___kont128093128094_))))
                    (___kont128093128094_))))))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_bind117871_)
        (let* ((___stx128117128118_ _bind117871_)
               (_g117874117891_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128117128118_)))))
          (let ((___kont128119128120_
                 (lambda (_L117927_ _L117928_)
                   (if (let () (declare (not safe)) (gx#identifier? _L117928_))
                       (let ((_$e117944_
                              (let ()
                                (declare (not safe))
                                (gxc#case-lambda-expr? _L117927_))))
                         (if _$e117944_
                             _$e117944_
                             (let ((_$e117947_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#opt-lambda-expr? _L117927_))))
                               (if _$e117947_
                                   _$e117947_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L117927_))))))
                       '#f)))
                (___kont128121128122_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx128117128118_))
                (let ((_e117880117903_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx128117128118_))))
                  (let ((_tl117878117908_
                         (let () (declare (not safe)) (##cdr _e117880117903_)))
                        (_hd117879117906_
                         (let ()
                           (declare (not safe))
                           (##car _e117880117903_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd117879117906_))
                        (let ((_e117883117911_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd117879117906_))))
                          (let ((_tl117881117916_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e117883117911_)))
                                (_hd117882117914_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e117883117911_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl117881117916_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl117878117908_))
                                    (let ((_e117886117919_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl117878117908_))))
                                      (let ((_tl117884117924_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e117886117919_)))
                                            (_hd117885117922_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e117886117919_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl117884117924_))
                                            (___kont128119128120_
                                             _hd117885117922_
                                             _hd117882117914_)
                                            (___kont128121128122_))))
                                    (___kont128121128122_))
                                (___kont128121128122_))))
                        (___kont128121128122_))))
                (___kont128121128122_))))))))
