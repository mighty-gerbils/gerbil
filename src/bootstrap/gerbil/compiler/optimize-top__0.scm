(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1708271180)
  (begin
    (define gxc#&collect-top-level-type-info
      (make-promise
       (lambda ()
         (let ((_tbl243972_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp250132 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl243972_ __tmp250132))
           (let ()
             (declare (not safe))
             (hash-put! _tbl243972_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl243972_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl243972_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl243972_
              '%#define-values
              gxc#collect-top-level-type-define-values%))
           _tbl243972_))))
    (define gxc#apply-collect-top-level-type-info
      (lambda (_stx243955_ . _args243957_)
        (let ((__tmp250134
               (lambda ()
                 (declare (not safe))
                 (if (null? _args243957_)
                     (gxc#compile-e__0 _stx243955_)
                     (let ((_arg1243962_ (car _args243957_))
                           (_rest243964_ (cdr _args243957_)))
                       (if (null? _rest243964_)
                           (gxc#compile-e__1 _stx243955_ _arg1243962_)
                           (let ((_arg2243967_ (car _rest243964_))
                                 (_rest243969_ (cdr _rest243964_)))
                             (if (null? _rest243969_)
                                 (gxc#compile-e__2
                                  _stx243955_
                                  _arg1243962_
                                  _arg2243967_)
                                 (apply gxc#compile-e
                                        _stx243955_
                                        _arg1243962_
                                        _arg2243967_
                                        _rest243969_))))))))
              (__tmp250133 (force gxc#&collect-top-level-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp250134
           gxc#current-compile-methods
           __tmp250133))))
    (define gxc#&basic-expression-top-level-type
      (make-promise
       (lambda ()
         (let ((_tbl243952_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp250135 (force gxc#&false)))
             (declare (not safe))
             (hash-merge! _tbl243952_ __tmp250135))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl243952_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl243952_ '%#call gxc#basic-expression-type-call%))
           _tbl243952_))))
    (define gxc#apply-basic-expression-top-level-type
      (lambda (_stx243935_ . _args243937_)
        (let ((__tmp250137
               (lambda ()
                 (declare (not safe))
                 (if (null? _args243937_)
                     (gxc#compile-e__0 _stx243935_)
                     (let ((_arg1243942_ (car _args243937_))
                           (_rest243944_ (cdr _args243937_)))
                       (if (null? _rest243944_)
                           (gxc#compile-e__1 _stx243935_ _arg1243942_)
                           (let ((_arg2243947_ (car _rest243944_))
                                 (_rest243949_ (cdr _rest243944_)))
                             (if (null? _rest243949_)
                                 (gxc#compile-e__2
                                  _stx243935_
                                  _arg1243942_
                                  _arg2243947_)
                                 (apply gxc#compile-e
                                        _stx243935_
                                        _arg1243942_
                                        _arg2243947_
                                        _rest243949_))))))))
              (__tmp250136 (force gxc#&basic-expression-top-level-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp250137
           gxc#current-compile-methods
           __tmp250136))))
    (define gxc#&collect-type-info
      (make-promise
       (lambda ()
         (let ((_tbl243932_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp250138 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl243932_ __tmp250138))
           (let ()
             (declare (not safe))
             (hash-put! _tbl243932_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl243932_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl243932_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl243932_
              '%#define-values
              gxc#collect-type-define-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl243932_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl243932_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl243932_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl243932_
              '%#let-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl243932_
              '%#letrec-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl243932_
              '%#letrec*-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl243932_ '%#call gxc#collect-type-call%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl243932_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl243932_ '%#set! gxc#collect-body-setq%))
           _tbl243932_))))
    (define gxc#apply-collect-type-info
      (lambda (_stx243915_ . _args243917_)
        (let ((__tmp250140
               (lambda ()
                 (declare (not safe))
                 (if (null? _args243917_)
                     (gxc#compile-e__0 _stx243915_)
                     (let ((_arg1243922_ (car _args243917_))
                           (_rest243924_ (cdr _args243917_)))
                       (if (null? _rest243924_)
                           (gxc#compile-e__1 _stx243915_ _arg1243922_)
                           (let ((_arg2243927_ (car _rest243924_))
                                 (_rest243929_ (cdr _rest243924_)))
                             (if (null? _rest243929_)
                                 (gxc#compile-e__2
                                  _stx243915_
                                  _arg1243922_
                                  _arg2243927_)
                                 (apply gxc#compile-e
                                        _stx243915_
                                        _arg1243922_
                                        _arg2243927_
                                        _rest243929_))))))))
              (__tmp250139 (force gxc#&collect-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp250140
           gxc#current-compile-methods
           __tmp250139))))
    (define gxc#&basic-expression-type
      (make-promise
       (lambda ()
         (let ((_tbl243912_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp250141 (force gxc#&false)))
             (declare (not safe))
             (hash-merge! _tbl243912_ __tmp250141))
           (let ()
             (declare (not safe))
             (hash-put! _tbl243912_ '%#begin gxc#basic-expression-type-begin%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl243912_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl243912_
              '%#lambda
              gxc#basic-expression-type-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl243912_
              '%#case-lambda
              gxc#basic-expression-type-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl243912_
              '%#let-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl243912_
              '%#letrec-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl243912_
              '%#letrec*-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl243912_ '%#call gxc#basic-expression-type-call%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl243912_ '%#ref gxc#basic-expression-type-ref%))
           _tbl243912_))))
    (define gxc#apply-basic-expression-type
      (lambda (_stx243895_ . _args243897_)
        (let ((__tmp250143
               (lambda ()
                 (declare (not safe))
                 (if (null? _args243897_)
                     (gxc#compile-e__0 _stx243895_)
                     (let ((_arg1243902_ (car _args243897_))
                           (_rest243904_ (cdr _args243897_)))
                       (if (null? _rest243904_)
                           (gxc#compile-e__1 _stx243895_ _arg1243902_)
                           (let ((_arg2243907_ (car _rest243904_))
                                 (_rest243909_ (cdr _rest243904_)))
                             (if (null? _rest243909_)
                                 (gxc#compile-e__2
                                  _stx243895_
                                  _arg1243902_
                                  _arg2243907_)
                                 (apply gxc#compile-e
                                        _stx243895_
                                        _arg1243902_
                                        _arg2243907_
                                        _rest243909_))))))))
              (__tmp250142 (force gxc#&basic-expression-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp250143
           gxc#current-compile-methods
           __tmp250142))))
    (define gxc#&lift-top-lambdas
      (make-promise
       (lambda ()
         (let ((_tbl243892_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp250144 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-merge! _tbl243892_ __tmp250144))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl243892_
              '%#define-values
              gxc#lift-top-lambda-define-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl243892_
              '%#let-values
              gxc#lift-top-lambda-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl243892_
              '%#letrec-values
              gxc#lift-top-lambda-letrec-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl243892_
              '%#letrec*-values
              gxc#lift-top-lambda-letrec-values%))
           _tbl243892_))))
    (define gxc#apply-lift-top-lambdas
      (lambda (_stx243875_ . _args243877_)
        (let ((__tmp250146
               (lambda ()
                 (declare (not safe))
                 (if (null? _args243877_)
                     (gxc#compile-e__0 _stx243875_)
                     (let ((_arg1243882_ (car _args243877_))
                           (_rest243884_ (cdr _args243877_)))
                       (if (null? _rest243884_)
                           (gxc#compile-e__1 _stx243875_ _arg1243882_)
                           (let ((_arg2243887_ (car _rest243884_))
                                 (_rest243889_ (cdr _rest243884_)))
                             (if (null? _rest243889_)
                                 (gxc#compile-e__2
                                  _stx243875_
                                  _arg1243882_
                                  _arg2243887_)
                                 (apply gxc#compile-e
                                        _stx243875_
                                        _arg1243882_
                                        _arg2243887_
                                        _rest243889_))))))))
              (__tmp250145 (force gxc#&lift-top-lambdas)))
          (declare (not safe))
          (call-with-parameters
           __tmp250146
           gxc#current-compile-methods
           __tmp250145))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_stx243778_)
        (let* ((___stx248052248053_ _stx243778_)
               (_g243781243801_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx248052248053_)))))
          (let ((___kont248054248055_
                 (lambda (_L243845_ _L243846_)
                   (let ((_sym243864_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L243846_))))
                     (if (let ((__tmp250147 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp250147 _sym243864_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym243864_))
                         (let ((_type243865243867_
                                (let ()
                                  (declare (not safe))
                                  (gxc#apply-basic-expression-top-level-type
                                   _L243845_))))
                           (if _type243865243867_
                               (let ((_type243870_ _type243865243867_))
                                 (declare (not safe))
                                 (gxc#optimizer-declare-type!__0
                                  _sym243864_
                                  _type243870_))
                               '#f))))))
                (___kont248056248057_ (lambda () '#!void)))
            (let ((___match248085248086_
                   (lambda (_e243785243813_
                            _hd243786243816_
                            _tl243787243818_
                            _e243788243821_
                            _hd243789243824_
                            _tl243790243826_
                            _e243791243829_
                            _hd243792243832_
                            _tl243793243834_
                            _e243794243837_
                            _hd243795243840_
                            _tl243796243842_)
                     (let ((_L243845_ _hd243795243840_)
                           (_L243846_ _hd243792243832_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L243846_))
                           (___kont248054248055_ _L243845_ _L243846_)
                           (___kont248056248057_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx248052248053_))
                  (let ((_e243785243813_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx248052248053_))))
                    (let ((_tl243787243818_
                           (let ()
                             (declare (not safe))
                             (##cdr _e243785243813_)))
                          (_hd243786243816_
                           (let ()
                             (declare (not safe))
                             (##car _e243785243813_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl243787243818_))
                          (let ((_e243788243821_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl243787243818_))))
                            (let ((_tl243790243826_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e243788243821_)))
                                  (_hd243789243824_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e243788243821_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd243789243824_))
                                  (let ((_e243791243829_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd243789243824_))))
                                    (let ((_tl243793243834_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e243791243829_)))
                                          (_hd243792243832_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e243791243829_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl243793243834_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl243790243826_))
                                              (let ((_e243794243837_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl243790243826_))))
                                                (let ((_tl243796243842_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e243794243837_)))
                                                      (_hd243795243840_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e243794243837_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl243796243842_))
                                                      (___match248085248086_
                                                       _e243785243813_
                                                       _hd243786243816_
                                                       _tl243787243818_
                                                       _e243788243821_
                                                       _hd243789243824_
                                                       _tl243790243826_
                                                       _e243791243829_
                                                       _hd243792243832_
                                                       _tl243793243834_
                                                       _e243794243837_
                                                       _hd243795243840_
                                                       _tl243796243842_)
                                                      (___kont248056248057_))))
                                              (___kont248056248057_))
                                          (___kont248056248057_))))
                                  (___kont248056248057_))))
                          (___kont248056248057_))))
                  (___kont248056248057_)))))))
    (define gxc#collect-type-define-values%
      (lambda (_stx243634_)
        (let* ((___stx248088248089_ _stx243634_)
               (_g243637243668_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx248088248089_)))))
          (let ((___kont248090248091_
                 (lambda (_L243750_ _L243751_)
                   (let ((_sym243767_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L243751_))))
                     (if (let ((__tmp250148 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp250148 _sym243767_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym243767_))
                         (if (let ()
                               (declare (not safe))
                               (gxc#optimizer-lookup-type _sym243767_))
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"skipping type inference for already declared type "
                                _sym243767_))
                             (let ((_type243768243770_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#apply-basic-expression-type
                                       _L243750_))))
                               (if _type243768243770_
                                   (let ((_type243773_ _type243768243770_))
                                     (declare (not safe))
                                     (gxc#optimizer-declare-type!__0
                                      _sym243767_
                                      _type243773_))
                                   '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__0 _L243750_)))))
                (___kont248092248093_
                 (lambda (_L243697_ _L243698_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__0 _L243697_)))))
            (let ((___match248121248122_
                   (lambda (_e243641243718_
                            _hd243642243721_
                            _tl243643243723_
                            _e243644243726_
                            _hd243645243729_
                            _tl243646243731_
                            _e243647243734_
                            _hd243648243737_
                            _tl243649243739_
                            _e243650243742_
                            _hd243651243745_
                            _tl243652243747_)
                     (let ((_L243750_ _hd243651243745_)
                           (_L243751_ _hd243648243737_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L243751_))
                           (___kont248090248091_ _L243750_ _L243751_)
                           (___kont248092248093_
                            _hd243651243745_
                            _hd243645243729_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx248088248089_))
                  (let ((_e243641243718_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx248088248089_))))
                    (let ((_tl243643243723_
                           (let ()
                             (declare (not safe))
                             (##cdr _e243641243718_)))
                          (_hd243642243721_
                           (let ()
                             (declare (not safe))
                             (##car _e243641243718_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl243643243723_))
                          (let ((_e243644243726_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl243643243723_))))
                            (let ((_tl243646243731_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e243644243726_)))
                                  (_hd243645243729_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e243644243726_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd243645243729_))
                                  (let ((_e243647243734_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd243645243729_))))
                                    (let ((_tl243649243739_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e243647243734_)))
                                          (_hd243648243737_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e243647243734_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl243649243739_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl243646243731_))
                                              (let ((_e243650243742_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl243646243731_))))
                                                (let ((_tl243652243747_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e243650243742_)))
                                                      (_hd243651243745_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e243650243742_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl243652243747_))
                                                      (___match248121248122_
                                                       _e243641243718_
                                                       _hd243642243721_
                                                       _tl243643243723_
                                                       _e243644243726_
                                                       _hd243645243729_
                                                       _tl243646243731_
                                                       _e243647243734_
                                                       _hd243648243737_
                                                       _tl243649243739_
                                                       _e243650243742_
                                                       _hd243651243745_
                                                       _tl243652243747_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g243637243668_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g243637243668_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl243646243731_))
                                              (let ((_e243661243689_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl243646243731_))))
                                                (let ((_tl243663243694_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e243661243689_)))
                                                      (_hd243662243692_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e243661243689_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl243663243694_))
                                                      (___kont248092248093_
                                                       _hd243662243692_
                                                       _hd243645243729_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g243637243668_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g243637243668_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl243646243731_))
                                      (let ((_e243661243689_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl243646243731_))))
                                        (let ((_tl243663243694_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e243661243689_)))
                                              (_hd243662243692_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e243661243689_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl243663243694_))
                                              (___kont248092248093_
                                               _hd243662243692_
                                               _hd243645243729_)
                                              (let ()
                                                (declare (not safe))
                                                (_g243637243668_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g243637243668_))))))
                          (let () (declare (not safe)) (_g243637243668_)))))
                  (let () (declare (not safe)) (_g243637243668_))))))))
    (define gxc#collect-type-let-values%
      (lambda (_stx243419_)
        (letrec ((_collect-e243421_
                  (lambda (_hd243578_ _expr243579_)
                    (let* ((___stx248144248145_ _hd243578_)
                           (_g243582243592_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx248144248145_)))))
                      (let ((___kont248146248147_
                             (lambda (_L243612_)
                               (let ((_sym243623_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#identifier-symbol _L243612_))))
                                 (if (let ((__tmp250149
                                            (gxc#current-compile-mutators)))
                                       (declare (not safe))
                                       (hash-get __tmp250149 _sym243623_))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#verbose
                                        '"skipping type declaration for mutable binding "
                                        _sym243623_))
                                     (let ((_type243624243626_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-basic-expression-type
                                               _expr243579_))))
                                       (if _type243624243626_
                                           (let ((_type243629_
                                                  _type243624243626_))
                                             (declare (not safe))
                                             (gxc#optimizer-declare-type!__%
                                              _sym243623_
                                              _type243629_
                                              '#t))
                                           '#f))))))
                            (___kont248148248149_ (lambda () '#!void)))
                        (let ((___match248157248158_
                               (lambda (_e243585243604_
                                        _hd243586243607_
                                        _tl243587243609_)
                                 (let ((_L243612_ _hd243586243607_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _L243612_))
                                       (___kont248146248147_ _L243612_)
                                       (___kont248148248149_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx248144248145_))
                              (let ((_e243585243604_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx248144248145_))))
                                (let ((_tl243587243609_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e243585243604_)))
                                      (_hd243586243607_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e243585243604_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl243587243609_))
                                      (___match248157248158_
                                       _e243585243604_
                                       _hd243586243607_
                                       _tl243587243609_)
                                      (___kont248148248149_))))
                              (___kont248148248149_))))))))
          (let* ((_g243423243458_
                  (lambda (_g243424243455_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g243424243455_))))
                 (_g243422243575_
                  (lambda (_g243424243461_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g243424243461_))
                        (let ((_e243428243463_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g243424243461_))))
                          (let ((_hd243429243466_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e243428243463_)))
                                (_tl243430243468_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e243428243463_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl243430243468_))
                                (let ((_e243431243471_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl243430243468_))))
                                  (let ((_hd243432243474_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e243431243471_)))
                                        (_tl243433243476_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e243431243471_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd243432243474_))
                                        (let ((_g250150_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd243432243474_
                                                  '0))))
                                          (begin
                                            (let ((_g250151_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g250150_)
                                                         (##vector-length
                                                          _g250150_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g250151_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g250151_)))
                                            (let ((_target243434243479_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g250150_
                                                      0)))
                                                  (_tl243436243481_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g250150_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl243436243481_))
                                                  (letrec ((_loop243437243484_
                                                            (lambda (_hd243435243487_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr243441243489_
                             _hd243442243491_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd243435243487_))
                          (let ((_e243438243494_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd243435243487_))))
                            (let ((_lp-hd243439243497_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e243438243494_)))
                                  (_lp-tl243440243499_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e243438243494_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _lp-hd243439243497_))
                                  (let ((_e243445243502_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _lp-hd243439243497_))))
                                    (let ((_hd243446243505_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e243445243502_)))
                                          (_tl243447243507_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e243445243502_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl243447243507_))
                                          (let ((_e243448243510_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl243447243507_))))
                                            (let ((_hd243449243513_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e243448243510_)))
                                                  (_tl243450243515_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e243448243510_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl243450243515_))
                                                  (let ((__tmp250153
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _hd243449243513_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr243441243489_)))
                (__tmp250152
                 (let ()
                   (declare (not safe))
                   (cons _hd243446243505_ _hd243442243491_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_loop243437243484_
                                                     _lp-tl243440243499_
                                                     __tmp250153
                                                     __tmp250152))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g243423243458_
                                                     _g243424243461_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g243423243458_
                                             _g243424243461_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g243423243458_ _g243424243461_)))))
                          (let ((_expr243443243518_
                                 (reverse _expr243441243489_))
                                (_hd243444243520_ (reverse _hd243442243491_)))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl243433243476_))
                                (let ((_e243451243523_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl243433243476_))))
                                  (let ((_hd243452243526_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e243451243523_)))
                                        (_tl243453243528_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e243451243523_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl243453243528_))
                                        ((lambda (_L243531_
                                                  _L243532_
                                                  _L243533_)
                                           (for-each
                                            _collect-e243421_
                                            (let ((__tmp250154
                                                   (lambda (_g243553243556_
                                                            _g243554243558_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g243553243556_
                                                             _g243554243558_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp250154
                                                      '()
                                                      _L243533_))
                                            (let ((__tmp250155
                                                   (lambda (_g243560243563_
                                                            _g243561243565_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g243560243563_
                                                             _g243561243565_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp250155
                                                      '()
                                                      _L243532_)))
                                           (for-each
                                            gxc#compile-e
                                            (let ((__tmp250156
                                                   (lambda (_g243567243570_
                                                            _g243568243572_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g243567243570_
                                                             _g243568243572_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp250156
                                                      '()
                                                      _L243532_)))
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _L243531_)))
                                         _hd243452243526_
                                         _expr243443243518_
                                         _hd243444243520_)
                                        (let ()
                                          (declare (not safe))
                                          (_g243423243458_ _g243424243461_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g243423243458_ _g243424243461_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop243437243484_
                                                       _target243434243479_
                                                       '()
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g243423243458_
                                                     _g243424243461_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g243423243458_ _g243424243461_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g243423243458_ _g243424243461_)))))
                        (let ()
                          (declare (not safe))
                          (_g243423243458_ _g243424243461_))))))
            (declare (not safe))
            (_g243422243575_ _stx243419_)))))
    (define gxc#collect-type-call%
      (lambda (_stx242911_)
        (let* ((___stx248160248161_ _stx242911_)
               (_g242915243030_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx248160248161_)))))
          (let ((___kont248162248163_
                 (lambda (_L243369_ _L243370_ _L243371_ _L243372_ _L243373_)
                   (let ((__tmp250160
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L243372_)))
                         (__tmp250159
                          (let () (declare (not safe)) (gx#stx-e _L243371_)))
                         (__tmp250158
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L243370_)))
                         (__tmp250157
                          (let () (declare (not safe)) (gx#stx-e _L243369_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp250160
                      __tmp250159
                      __tmp250158
                      __tmp250157))))
                (___kont248164248165_
                 (lambda (_L243197_ _L243198_ _L243199_ _L243200_)
                   (let ((__tmp250163
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L243199_)))
                         (__tmp250162
                          (let () (declare (not safe)) (gx#stx-e _L243198_)))
                         (__tmp250161
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L243197_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp250163
                      __tmp250162
                      __tmp250161
                      '#f))))
                (___kont248166248167_
                 (lambda (_L243067_)
                   (for-each
                    gxc#compile-e
                    (let ((__tmp250164
                           (lambda (_g243080243083_ _g243081243085_)
                             (let ()
                               (declare (not safe))
                               (cons _g243080243083_ _g243081243085_)))))
                      (declare (not safe))
                      (foldr1 __tmp250164 '() _L243067_))))))
            (let* ((___match248417248418_
                    (lambda (_e243014243035_
                             _hd243015243038_
                             _tl243016243040_
                             ___splice248168248169_
                             _target243017243043_
                             _tl243019243045_)
                      (letrec ((_loop243020243048_
                                (lambda (_hd243018243051_ _expr243024243053_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd243018243051_))
                                      (let ((_e243021243056_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd243018243051_))))
                                        (let ((_lp-tl243023243061_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e243021243056_)))
                                              (_lp-hd243022243059_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e243021243056_))))
                                          (let ((__tmp250165
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd243022243059_
                                                         _expr243024243053_))))
                                            (declare (not safe))
                                            (_loop243020243048_
                                             _lp-tl243023243061_
                                             __tmp250165))))
                                      (let ((_expr243025243064_
                                             (reverse _expr243024243053_)))
                                        (___kont248166248167_
                                         _expr243025243064_))))))
                        (let ()
                          (declare (not safe))
                          (_loop243020243048_ _target243017243043_ '())))))
                   (___match248297248298_
                    (lambda (_e242922243241_
                             _hd242923243244_
                             _tl242924243246_
                             _e242925243249_
                             _hd242926243252_
                             _tl242927243254_
                             _e242928243257_
                             _hd242929243260_
                             _tl242930243262_
                             _e242931243265_
                             _hd242932243268_
                             _tl242933243270_
                             _e242934243273_
                             _hd242935243276_
                             _tl242936243278_
                             _e242937243281_
                             _hd242938243284_
                             _tl242939243286_
                             _e242940243289_
                             _hd242941243292_
                             _tl242942243294_
                             _e242943243297_
                             _hd242944243300_
                             _tl242945243302_
                             _e242946243305_
                             _hd242947243308_
                             _tl242948243310_
                             _e242949243313_
                             _hd242950243316_
                             _tl242951243318_
                             _e242952243321_
                             _hd242953243324_
                             _tl242954243326_
                             _e242955243329_
                             _hd242956243332_
                             _tl242957243334_
                             _e242958243337_
                             _hd242959243340_
                             _tl242960243342_
                             _e242961243345_
                             _hd242962243348_
                             _tl242963243350_
                             _e242964243353_
                             _hd242965243356_
                             _tl242966243358_
                             _e242967243361_
                             _hd242968243364_
                             _tl242969243366_)
                      (let ((_L243369_ _hd242968243364_)
                            (_L243370_ _hd242959243340_)
                            (_L243371_ _hd242950243316_)
                            (_L243372_ _hd242941243292_)
                            (_L243373_ _hd242932243268_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _L243373_
                               'bind-method!))
                            (___kont248162248163_
                             _L243369_
                             _L243370_
                             _L243371_
                             _L243372_
                             _L243373_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl242924243246_))
                                (let ((___splice248168248169_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl242924243246_
                                          '0))))
                                  (let ((_tl243019243045_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice248168248169_
                                            '1)))
                                        (_target243017243043_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice248168248169_
                                            '0))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl243019243045_))
                                        (___match248417248418_
                                         _e242922243241_
                                         _hd242923243244_
                                         _tl242924243246_
                                         ___splice248168248169_
                                         _target243017243043_
                                         _tl243019243045_)
                                        (let ()
                                          (declare (not safe))
                                          (_g242915243030_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g242915243030_))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx248160248161_))
                  (let ((_e242922243241_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx248160248161_))))
                    (let ((_tl242924243246_
                           (let ()
                             (declare (not safe))
                             (##cdr _e242922243241_)))
                          (_hd242923243244_
                           (let ()
                             (declare (not safe))
                             (##car _e242922243241_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl242924243246_))
                          (let ((_e242925243249_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl242924243246_))))
                            (let ((_tl242927243254_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242925243249_)))
                                  (_hd242926243252_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242925243249_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd242926243252_))
                                  (let ((_e242928243257_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd242926243252_))))
                                    (let ((_tl242930243262_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e242928243257_)))
                                          (_hd242929243260_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e242928243257_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd242929243260_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd242929243260_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl242930243262_))
                                                  (let ((_e242931243265_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl242930243262_))))
                                                    (let ((_tl242933243270_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e242931243265_)))
                                                          (_hd242932243268_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e242931243265_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl242933243270_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl242927243254_))
                      (let ((_e242934243273_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl242927243254_))))
                        (let ((_tl242936243278_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e242934243273_)))
                              (_hd242935243276_
                               (let ()
                                 (declare (not safe))
                                 (##car _e242934243273_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd242935243276_))
                              (let ((_e242937243281_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd242935243276_))))
                                (let ((_tl242939243286_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e242937243281_)))
                                      (_hd242938243284_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e242937243281_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd242938243284_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd242938243284_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl242939243286_))
                                              (let ((_e242940243289_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl242939243286_))))
                                                (let ((_tl242942243294_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e242940243289_)))
                                                      (_hd242941243292_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e242940243289_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl242942243294_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl242936243278_))
                                                          (let ((_e242943243297_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl242936243278_))))
                    (let ((_tl242945243302_
                           (let ()
                             (declare (not safe))
                             (##cdr _e242943243297_)))
                          (_hd242944243300_
                           (let ()
                             (declare (not safe))
                             (##car _e242943243297_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd242944243300_))
                          (let ((_e242946243305_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd242944243300_))))
                            (let ((_tl242948243310_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242946243305_)))
                                  (_hd242947243308_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242946243305_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd242947243308_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd242947243308_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl242948243310_))
                                          (let ((_e242949243313_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl242948243310_))))
                                            (let ((_tl242951243318_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e242949243313_)))
                                                  (_hd242950243316_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e242949243313_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl242951243318_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl242945243302_))
                                                      (let ((_e242952243321_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl242945243302_))))
                (let ((_tl242954243326_
                       (let () (declare (not safe)) (##cdr _e242952243321_)))
                      (_hd242953243324_
                       (let () (declare (not safe)) (##car _e242952243321_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd242953243324_))
                      (let ((_e242955243329_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd242953243324_))))
                        (let ((_tl242957243334_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e242955243329_)))
                              (_hd242956243332_
                               (let ()
                                 (declare (not safe))
                                 (##car _e242955243329_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd242956243332_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd242956243332_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl242957243334_))
                                      (let ((_e242958243337_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl242957243334_))))
                                        (let ((_tl242960243342_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e242958243337_)))
                                              (_hd242959243340_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e242958243337_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl242960243342_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl242954243326_))
                                                  (let ((_e242961243345_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl242954243326_))))
                                                    (let ((_tl242963243350_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e242961243345_)))
                                                          (_hd242962243348_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e242961243345_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd242962243348_))
                                                          (let ((_e242964243353_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd242962243348_))))
                    (let ((_tl242966243358_
                           (let ()
                             (declare (not safe))
                             (##cdr _e242964243353_)))
                          (_hd242965243356_
                           (let ()
                             (declare (not safe))
                             (##car _e242964243353_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd242965243356_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd242965243356_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl242966243358_))
                                  (let ((_e242967243361_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl242966243358_))))
                                    (let ((_tl242969243366_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e242967243361_)))
                                          (_hd242968243364_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e242967243361_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl242969243366_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl242963243350_))
                                              (___match248297248298_
                                               _e242922243241_
                                               _hd242923243244_
                                               _tl242924243246_
                                               _e242925243249_
                                               _hd242926243252_
                                               _tl242927243254_
                                               _e242928243257_
                                               _hd242929243260_
                                               _tl242930243262_
                                               _e242931243265_
                                               _hd242932243268_
                                               _tl242933243270_
                                               _e242934243273_
                                               _hd242935243276_
                                               _tl242936243278_
                                               _e242937243281_
                                               _hd242938243284_
                                               _tl242939243286_
                                               _e242940243289_
                                               _hd242941243292_
                                               _tl242942243294_
                                               _e242943243297_
                                               _hd242944243300_
                                               _tl242945243302_
                                               _e242946243305_
                                               _hd242947243308_
                                               _tl242948243310_
                                               _e242949243313_
                                               _hd242950243316_
                                               _tl242951243318_
                                               _e242952243321_
                                               _hd242953243324_
                                               _tl242954243326_
                                               _e242955243329_
                                               _hd242956243332_
                                               _tl242957243334_
                                               _e242958243337_
                                               _hd242959243340_
                                               _tl242960243342_
                                               _e242961243345_
                                               _hd242962243348_
                                               _tl242963243350_
                                               _e242964243353_
                                               _hd242965243356_
                                               _tl242966243358_
                                               _e242967243361_
                                               _hd242968243364_
                                               _tl242969243366_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl242924243246_))
                                                  (let ((___splice248168248169_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl242924243246_
                                                            '0))))
                                                    (let ((_tl243019243045_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice248168248169_
                                                              '1)))
                                                          (_target243017243043_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice248168248169_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl243019243045_))
                                                          (___match248417248418_
                                                           _e242922243241_
                                                           _hd242923243244_
                                                           _tl242924243246_
                                                           ___splice248168248169_
                                                           _target243017243043_
                                                           _tl243019243045_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g242915243030_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g242915243030_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl242924243246_))
                                              (let ((___splice248168248169_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl242924243246_
                                                        '0))))
                                                (let ((_tl243019243045_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice248168248169_
                                                          '1)))
                                                      (_target243017243043_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice248168248169_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl243019243045_))
                                                      (___match248417248418_
                                                       _e242922243241_
                                                       _hd242923243244_
                                                       _tl242924243246_
                                                       ___splice248168248169_
                                                       _target243017243043_
                                                       _tl243019243045_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g242915243030_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g242915243030_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl242924243246_))
                                      (let ((___splice248168248169_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl242924243246_
                                                '0))))
                                        (let ((_tl243019243045_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice248168248169_
                                                  '1)))
                                              (_target243017243043_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice248168248169_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl243019243045_))
                                              (___match248417248418_
                                               _e242922243241_
                                               _hd242923243244_
                                               _tl242924243246_
                                               ___splice248168248169_
                                               _target243017243043_
                                               _tl243019243045_)
                                              (let ()
                                                (declare (not safe))
                                                (_g242915243030_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g242915243030_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl242924243246_))
                                  (let ((___splice248168248169_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl242924243246_
                                            '0))))
                                    (let ((_tl243019243045_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice248168248169_
                                              '1)))
                                          (_target243017243043_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice248168248169_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl243019243045_))
                                          (___match248417248418_
                                           _e242922243241_
                                           _hd242923243244_
                                           _tl242924243246_
                                           ___splice248168248169_
                                           _target243017243043_
                                           _tl243019243045_)
                                          (let ()
                                            (declare (not safe))
                                            (_g242915243030_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g242915243030_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl242924243246_))
                              (let ((___splice248168248169_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl242924243246_
                                        '0))))
                                (let ((_tl243019243045_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice248168248169_
                                          '1)))
                                      (_target243017243043_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice248168248169_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl243019243045_))
                                      (___match248417248418_
                                       _e242922243241_
                                       _hd242923243244_
                                       _tl242924243246_
                                       ___splice248168248169_
                                       _target243017243043_
                                       _tl243019243045_)
                                      (let ()
                                        (declare (not safe))
                                        (_g242915243030_)))))
                              (let ()
                                (declare (not safe))
                                (_g242915243030_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl242924243246_))
                      (let ((___splice248168248169_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl242924243246_ '0))))
                        (let ((_tl243019243045_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice248168248169_ '1)))
                              (_target243017243043_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice248168248169_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl243019243045_))
                              (___match248417248418_
                               _e242922243241_
                               _hd242923243244_
                               _tl242924243246_
                               ___splice248168248169_
                               _target243017243043_
                               _tl243019243045_)
                              (let ()
                                (declare (not safe))
                                (_g242915243030_)))))
                      (let () (declare (not safe)) (_g242915243030_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl242954243326_))
                                                      (if (let ((__tmp250166
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp250166 'bind-method!))
                  (let ((_L243197_ _hd242959243340_)
                        (_L243198_ _hd242950243316_)
                        (_L243199_ _hd242941243292_)
                        (_L243200_ _hd242932243268_))
                    (___kont248164248165_
                     _L243197_
                     _L243198_
                     _L243199_
                     _L243200_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl242924243246_))
                      (let ((___splice248168248169_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl242924243246_ '0))))
                        (let ((_tl243019243045_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice248168248169_ '1)))
                              (_target243017243043_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice248168248169_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl243019243045_))
                              (___match248417248418_
                               _e242922243241_
                               _hd242923243244_
                               _tl242924243246_
                               ___splice248168248169_
                               _target243017243043_
                               _tl243019243045_)
                              (let ()
                                (declare (not safe))
                                (_g242915243030_)))))
                      (let () (declare (not safe)) (_g242915243030_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl242924243246_))
                  (let ((___splice248168248169_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl242924243246_ '0))))
                    (let ((_tl243019243045_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice248168248169_ '1)))
                          (_target243017243043_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice248168248169_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl243019243045_))
                          (___match248417248418_
                           _e242922243241_
                           _hd242923243244_
                           _tl242924243246_
                           ___splice248168248169_
                           _target243017243043_
                           _tl243019243045_)
                          (let () (declare (not safe)) (_g242915243030_)))))
                  (let () (declare (not safe)) (_g242915243030_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl242924243246_))
                                                  (let ((___splice248168248169_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl242924243246_
                                                            '0))))
                                                    (let ((_tl243019243045_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice248168248169_
                                                              '1)))
                                                          (_target243017243043_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice248168248169_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl243019243045_))
                                                          (___match248417248418_
                                                           _e242922243241_
                                                           _hd242923243244_
                                                           _tl242924243246_
                                                           ___splice248168248169_
                                                           _target243017243043_
                                                           _tl243019243045_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g242915243030_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g242915243030_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl242924243246_))
                                          (let ((___splice248168248169_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl242924243246_
                                                    '0))))
                                            (let ((_tl243019243045_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice248168248169_
                                                      '1)))
                                                  (_target243017243043_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice248168248169_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl243019243045_))
                                                  (___match248417248418_
                                                   _e242922243241_
                                                   _hd242923243244_
                                                   _tl242924243246_
                                                   ___splice248168248169_
                                                   _target243017243043_
                                                   _tl243019243045_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g242915243030_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g242915243030_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl242924243246_))
                                      (let ((___splice248168248169_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl242924243246_
                                                '0))))
                                        (let ((_tl243019243045_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice248168248169_
                                                  '1)))
                                              (_target243017243043_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice248168248169_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl243019243045_))
                                              (___match248417248418_
                                               _e242922243241_
                                               _hd242923243244_
                                               _tl242924243246_
                                               ___splice248168248169_
                                               _target243017243043_
                                               _tl243019243045_)
                                              (let ()
                                                (declare (not safe))
                                                (_g242915243030_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g242915243030_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl242924243246_))
                                  (let ((___splice248168248169_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl242924243246_
                                            '0))))
                                    (let ((_tl243019243045_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice248168248169_
                                              '1)))
                                          (_target243017243043_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice248168248169_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl243019243045_))
                                          (___match248417248418_
                                           _e242922243241_
                                           _hd242923243244_
                                           _tl242924243246_
                                           ___splice248168248169_
                                           _target243017243043_
                                           _tl243019243045_)
                                          (let ()
                                            (declare (not safe))
                                            (_g242915243030_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g242915243030_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl242924243246_))
                          (let ((___splice248168248169_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl242924243246_
                                    '0))))
                            (let ((_tl243019243045_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice248168248169_ '1)))
                                  (_target243017243043_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice248168248169_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl243019243045_))
                                  (___match248417248418_
                                   _e242922243241_
                                   _hd242923243244_
                                   _tl242924243246_
                                   ___splice248168248169_
                                   _target243017243043_
                                   _tl243019243045_)
                                  (let ()
                                    (declare (not safe))
                                    (_g242915243030_)))))
                          (let () (declare (not safe)) (_g242915243030_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl242924243246_))
                  (let ((___splice248168248169_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl242924243246_ '0))))
                    (let ((_tl243019243045_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice248168248169_ '1)))
                          (_target243017243043_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice248168248169_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl243019243045_))
                          (___match248417248418_
                           _e242922243241_
                           _hd242923243244_
                           _tl242924243246_
                           ___splice248168248169_
                           _target243017243043_
                           _tl243019243045_)
                          (let () (declare (not safe)) (_g242915243030_)))))
                  (let () (declare (not safe)) (_g242915243030_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl242924243246_))
                                                      (let ((___splice248168248169_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl242924243246_ '0))))
                (let ((_tl243019243045_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice248168248169_ '1)))
                      (_target243017243043_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice248168248169_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl243019243045_))
                      (___match248417248418_
                       _e242922243241_
                       _hd242923243244_
                       _tl242924243246_
                       ___splice248168248169_
                       _target243017243043_
                       _tl243019243045_)
                      (let () (declare (not safe)) (_g242915243030_)))))
              (let () (declare (not safe)) (_g242915243030_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl242924243246_))
                                              (let ((___splice248168248169_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl242924243246_
                                                        '0))))
                                                (let ((_tl243019243045_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice248168248169_
                                                          '1)))
                                                      (_target243017243043_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice248168248169_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl243019243045_))
                                                      (___match248417248418_
                                                       _e242922243241_
                                                       _hd242923243244_
                                                       _tl242924243246_
                                                       ___splice248168248169_
                                                       _target243017243043_
                                                       _tl243019243045_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g242915243030_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g242915243030_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl242924243246_))
                                          (let ((___splice248168248169_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl242924243246_
                                                    '0))))
                                            (let ((_tl243019243045_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice248168248169_
                                                      '1)))
                                                  (_target243017243043_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice248168248169_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl243019243045_))
                                                  (___match248417248418_
                                                   _e242922243241_
                                                   _hd242923243244_
                                                   _tl242924243246_
                                                   ___splice248168248169_
                                                   _target243017243043_
                                                   _tl243019243045_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g242915243030_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g242915243030_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl242924243246_))
                                      (let ((___splice248168248169_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl242924243246_
                                                '0))))
                                        (let ((_tl243019243045_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice248168248169_
                                                  '1)))
                                              (_target243017243043_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice248168248169_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl243019243045_))
                                              (___match248417248418_
                                               _e242922243241_
                                               _hd242923243244_
                                               _tl242924243246_
                                               ___splice248168248169_
                                               _target243017243043_
                                               _tl243019243045_)
                                              (let ()
                                                (declare (not safe))
                                                (_g242915243030_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g242915243030_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl242924243246_))
                              (let ((___splice248168248169_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl242924243246_
                                        '0))))
                                (let ((_tl243019243045_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice248168248169_
                                          '1)))
                                      (_target243017243043_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice248168248169_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl243019243045_))
                                      (___match248417248418_
                                       _e242922243241_
                                       _hd242923243244_
                                       _tl242924243246_
                                       ___splice248168248169_
                                       _target243017243043_
                                       _tl243019243045_)
                                      (let ()
                                        (declare (not safe))
                                        (_g242915243030_)))))
                              (let ()
                                (declare (not safe))
                                (_g242915243030_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl242924243246_))
                      (let ((___splice248168248169_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl242924243246_ '0))))
                        (let ((_tl243019243045_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice248168248169_ '1)))
                              (_target243017243043_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice248168248169_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl243019243045_))
                              (___match248417248418_
                               _e242922243241_
                               _hd242923243244_
                               _tl242924243246_
                               ___splice248168248169_
                               _target243017243043_
                               _tl243019243045_)
                              (let ()
                                (declare (not safe))
                                (_g242915243030_)))))
                      (let () (declare (not safe)) (_g242915243030_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl242924243246_))
                  (let ((___splice248168248169_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl242924243246_ '0))))
                    (let ((_tl243019243045_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice248168248169_ '1)))
                          (_target243017243043_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice248168248169_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl243019243045_))
                          (___match248417248418_
                           _e242922243241_
                           _hd242923243244_
                           _tl242924243246_
                           ___splice248168248169_
                           _target243017243043_
                           _tl243019243045_)
                          (let () (declare (not safe)) (_g242915243030_)))))
                  (let () (declare (not safe)) (_g242915243030_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl242924243246_))
                                                  (let ((___splice248168248169_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl242924243246_
                                                            '0))))
                                                    (let ((_tl243019243045_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice248168248169_
                                                              '1)))
                                                          (_target243017243043_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice248168248169_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl243019243045_))
                                                          (___match248417248418_
                                                           _e242922243241_
                                                           _hd242923243244_
                                                           _tl242924243246_
                                                           ___splice248168248169_
                                                           _target243017243043_
                                                           _tl243019243045_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g242915243030_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g242915243030_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl242924243246_))
                                              (let ((___splice248168248169_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl242924243246_
                                                        '0))))
                                                (let ((_tl243019243045_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice248168248169_
                                                          '1)))
                                                      (_target243017243043_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice248168248169_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl243019243045_))
                                                      (___match248417248418_
                                                       _e242922243241_
                                                       _hd242923243244_
                                                       _tl242924243246_
                                                       ___splice248168248169_
                                                       _target243017243043_
                                                       _tl243019243045_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g242915243030_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g242915243030_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl242924243246_))
                                          (let ((___splice248168248169_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl242924243246_
                                                    '0))))
                                            (let ((_tl243019243045_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice248168248169_
                                                      '1)))
                                                  (_target243017243043_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice248168248169_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl243019243045_))
                                                  (___match248417248418_
                                                   _e242922243241_
                                                   _hd242923243244_
                                                   _tl242924243246_
                                                   ___splice248168248169_
                                                   _target243017243043_
                                                   _tl243019243045_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g242915243030_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g242915243030_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl242924243246_))
                                  (let ((___splice248168248169_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl242924243246_
                                            '0))))
                                    (let ((_tl243019243045_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice248168248169_
                                              '1)))
                                          (_target243017243043_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice248168248169_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl243019243045_))
                                          (___match248417248418_
                                           _e242922243241_
                                           _hd242923243244_
                                           _tl242924243246_
                                           ___splice248168248169_
                                           _target243017243043_
                                           _tl243019243045_)
                                          (let ()
                                            (declare (not safe))
                                            (_g242915243030_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g242915243030_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl242924243246_))
                          (let ((___splice248168248169_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl242924243246_
                                    '0))))
                            (let ((_tl243019243045_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice248168248169_ '1)))
                                  (_target243017243043_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice248168248169_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl243019243045_))
                                  (___match248417248418_
                                   _e242922243241_
                                   _hd242923243244_
                                   _tl242924243246_
                                   ___splice248168248169_
                                   _target243017243043_
                                   _tl243019243045_)
                                  (let ()
                                    (declare (not safe))
                                    (_g242915243030_)))))
                          (let () (declare (not safe)) (_g242915243030_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl242924243246_))
                      (let ((___splice248168248169_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl242924243246_ '0))))
                        (let ((_tl243019243045_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice248168248169_ '1)))
                              (_target243017243043_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice248168248169_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl243019243045_))
                              (___match248417248418_
                               _e242922243241_
                               _hd242923243244_
                               _tl242924243246_
                               ___splice248168248169_
                               _target243017243043_
                               _tl243019243045_)
                              (let ()
                                (declare (not safe))
                                (_g242915243030_)))))
                      (let () (declare (not safe)) (_g242915243030_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl242924243246_))
                                                      (let ((___splice248168248169_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl242924243246_ '0))))
                (let ((_tl243019243045_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice248168248169_ '1)))
                      (_target243017243043_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice248168248169_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl243019243045_))
                      (___match248417248418_
                       _e242922243241_
                       _hd242923243244_
                       _tl242924243246_
                       ___splice248168248169_
                       _target243017243043_
                       _tl243019243045_)
                      (let () (declare (not safe)) (_g242915243030_)))))
              (let () (declare (not safe)) (_g242915243030_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl242924243246_))
                                                  (let ((___splice248168248169_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl242924243246_
                                                            '0))))
                                                    (let ((_tl243019243045_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice248168248169_
                                                              '1)))
                                                          (_target243017243043_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice248168248169_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl243019243045_))
                                                          (___match248417248418_
                                                           _e242922243241_
                                                           _hd242923243244_
                                                           _tl242924243246_
                                                           ___splice248168248169_
                                                           _target243017243043_
                                                           _tl243019243045_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g242915243030_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g242915243030_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl242924243246_))
                                              (let ((___splice248168248169_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl242924243246_
                                                        '0))))
                                                (let ((_tl243019243045_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice248168248169_
                                                          '1)))
                                                      (_target243017243043_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice248168248169_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl243019243045_))
                                                      (___match248417248418_
                                                       _e242922243241_
                                                       _hd242923243244_
                                                       _tl242924243246_
                                                       ___splice248168248169_
                                                       _target243017243043_
                                                       _tl243019243045_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g242915243030_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g242915243030_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl242924243246_))
                                      (let ((___splice248168248169_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl242924243246_
                                                '0))))
                                        (let ((_tl243019243045_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice248168248169_
                                                  '1)))
                                              (_target243017243043_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice248168248169_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl243019243045_))
                                              (___match248417248418_
                                               _e242922243241_
                                               _hd242923243244_
                                               _tl242924243246_
                                               ___splice248168248169_
                                               _target243017243043_
                                               _tl243019243045_)
                                              (let ()
                                                (declare (not safe))
                                                (_g242915243030_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g242915243030_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl242924243246_))
                              (let ((___splice248168248169_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl242924243246_
                                        '0))))
                                (let ((_tl243019243045_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice248168248169_
                                          '1)))
                                      (_target243017243043_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice248168248169_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl243019243045_))
                                      (___match248417248418_
                                       _e242922243241_
                                       _hd242923243244_
                                       _tl242924243246_
                                       ___splice248168248169_
                                       _target243017243043_
                                       _tl243019243045_)
                                      (let ()
                                        (declare (not safe))
                                        (_g242915243030_)))))
                              (let ()
                                (declare (not safe))
                                (_g242915243030_))))))
                  (let () (declare (not safe)) (_g242915243030_))))))))
    (define gxc#current-compile-type-closure (make-parameter '#f))
    (define gxc#basic-expression-type-begin%
      (lambda (_stx242851_)
        (let* ((___stx248420248421_ _stx242851_)
               (_g242854242867_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx248420248421_)))))
          (let ((___kont248422248423_
                 (lambda (_L242895_)
                   (let () (declare (not safe)) (gxc#compile-e__0 _L242895_))))
                (___kont248424248425_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx248420248421_))
                (let ((_e242857242879_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx248420248421_))))
                  (let ((_tl242859242884_
                         (let () (declare (not safe)) (##cdr _e242857242879_)))
                        (_hd242858242882_
                         (let ()
                           (declare (not safe))
                           (##car _e242857242879_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl242859242884_))
                        (let ((_e242860242887_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl242859242884_))))
                          (let ((_tl242862242892_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e242860242887_)))
                                (_hd242861242890_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e242860242887_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl242862242892_))
                                (___kont248422248423_ _hd242861242890_)
                                (___kont248424248425_))))
                        (___kont248424248425_))))
                (___kont248424248425_))))))
    (define gxc#basic-expression-type-annotations
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_stx242731_)
        (let* ((_g242733242750_
                (lambda (_g242734242747_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g242734242747_))))
               (_g242732242848_
                (lambda (_g242734242753_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g242734242753_))
                      (let ((_e242737242755_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g242734242753_))))
                        (let ((_hd242738242758_
                               (let ()
                                 (declare (not safe))
                                 (##car _e242737242755_)))
                              (_tl242739242760_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e242737242755_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl242739242760_))
                              (let ((_e242740242763_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl242739242760_))))
                                (let ((_hd242741242766_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e242740242763_)))
                                      (_tl242742242768_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e242740242763_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl242742242768_))
                                      (let ((_e242743242771_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl242742242768_))))
                                        (let ((_hd242744242774_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e242743242771_)))
                                              (_tl242745242776_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e242743242771_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl242745242776_))
                                              ((lambda (_L242779_ _L242780_)
                                                 (let* ((___stx248442248443_
                                                         _L242780_)
                                                        (_g242796242807_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx248442248443_)))))
                                                   (let ((___kont248444248445_
                                                          (lambda (_L242827_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L242828_)
                    (let ((_$e242840_
                           (let ((__tmp250167
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _L242828_))))
                             (declare (not safe))
                             (hash-get
                              gxc#basic-expression-type-annotations
                              __tmp250167))))
                      (if _$e242840_
                          ((lambda (_type-e242843_)
                             (_type-e242843_ _stx242731_ _L242780_))
                           _$e242840_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _L242779_))))))
                 (___kont248446248447_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__0 _L242779_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((___match248453248454_
                                                            (lambda (_e242800242819_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd242801242822_
                             _tl242802242824_)
                      (let ((_L242827_ _tl242802242824_)
                            (_L242828_ _hd242801242822_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L242828_))
                            (___kont248444248445_ _L242827_ _L242828_)
                            (___kont248446248447_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? ___stx248442248443_))
                   (let ((_e242800242819_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e ___stx248442248443_))))
                     (let ((_tl242802242824_
                            (let ()
                              (declare (not safe))
                              (##cdr _e242800242819_)))
                           (_hd242801242822_
                            (let ()
                              (declare (not safe))
                              (##car _e242800242819_))))
                       (___match248453248454_
                        _e242800242819_
                        _hd242801242822_
                        _tl242802242824_)))
                   (___kont248446248447_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd242744242774_
                                               _hd242741242766_)
                                              (let ()
                                                (declare (not safe))
                                                (_g242733242750_
                                                 _g242734242753_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g242733242750_ _g242734242753_)))))
                              (let ()
                                (declare (not safe))
                                (_g242733242750_ _g242734242753_)))))
                      (let ()
                        (declare (not safe))
                        (_g242733242750_ _g242734242753_))))))
          (declare (not safe))
          (_g242732242848_ _stx242731_))))
    (define gxc#basic-expression-type-annotation-mop.class
      (lambda (_stx242575_ _ann242576_)
        (let* ((_g242578242615_
                (lambda (_g242579242612_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g242579242612_))))
               (_g242577242728_
                (lambda (_g242579242618_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g242579242618_))
                      (let ((_e242587242620_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g242579242618_))))
                        (let ((_hd242588242623_
                               (let ()
                                 (declare (not safe))
                                 (##car _e242587242620_)))
                              (_tl242589242625_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e242587242620_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl242589242625_))
                              (let ((_e242590242628_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl242589242625_))))
                                (let ((_hd242591242631_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e242590242628_)))
                                      (_tl242592242633_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e242590242628_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl242592242633_))
                                      (let ((_e242593242636_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl242592242633_))))
                                        (let ((_hd242594242639_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e242593242636_)))
                                              (_tl242595242641_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e242593242636_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl242595242641_))
                                              (let ((_e242596242644_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl242595242641_))))
                                                (let ((_hd242597242647_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e242596242644_)))
                                                      (_tl242598242649_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e242596242644_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl242598242649_))
                                                      (let ((_e242599242652_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl242598242649_))))
                (let ((_hd242600242655_
                       (let () (declare (not safe)) (##car _e242599242652_)))
                      (_tl242601242657_
                       (let () (declare (not safe)) (##cdr _e242599242652_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl242601242657_))
                      (let ((_e242602242660_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl242601242657_))))
                        (let ((_hd242603242663_
                               (let ()
                                 (declare (not safe))
                                 (##car _e242602242660_)))
                              (_tl242604242665_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e242602242660_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl242604242665_))
                              (let ((_e242605242668_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl242604242665_))))
                                (let ((_hd242606242671_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e242605242668_)))
                                      (_tl242607242673_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e242605242668_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl242607242673_))
                                      (let ((_e242608242676_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl242607242673_))))
                                        (let ((_hd242609242679_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e242608242676_)))
                                              (_tl242610242681_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e242608242676_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl242610242681_))
                                              ((lambda (_L242684_
                                                        _L242685_
                                                        _L242686_
                                                        _L242687_
                                                        _L242688_
                                                        _L242689_
                                                        _L242690_)
                                                 (let ((_type-id242720_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L242690_)))
                                                       (_super242721_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gxc#identifier-symbol
                                                           _L242689_)))
                                                       (_slots242722_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gx#stx-e
                                                           _L242688_)))
                                                       (_ctor-method242723_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L242687_)))
                                                       (_struct?242724_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L242686_)))
                                                       (_final?242725_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L242685_)))
                                                       (_metaclass242726_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _L242684_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#identifier-symbol
                                                               _L242684_))
                                                            '#f)))
                                                   (let ((__obj250125
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
                                                      __obj250125
                                                      _type-id242720_
                                                      _super242721_
                                                      _slots242722_
                                                      _ctor-method242723_
                                                      _struct?242724_
                                                      _final?242725_
                                                      _metaclass242726_)
                                                     __obj250125)))
                                               _hd242609242679_
                                               _hd242606242671_
                                               _hd242603242663_
                                               _hd242600242655_
                                               _hd242597242647_
                                               _hd242594242639_
                                               _hd242591242631_)
                                              (let ()
                                                (declare (not safe))
                                                (_g242578242615_
                                                 _g242579242618_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g242578242615_ _g242579242618_)))))
                              (let ()
                                (declare (not safe))
                                (_g242578242615_ _g242579242618_)))))
                      (let ()
                        (declare (not safe))
                        (_g242578242615_ _g242579242618_)))))
              (let ()
                (declare (not safe))
                (_g242578242615_ _g242579242618_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g242578242615_
                                                 _g242579242618_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g242578242615_ _g242579242618_)))))
                              (let ()
                                (declare (not safe))
                                (_g242578242615_ _g242579242618_)))))
                      (let ()
                        (declare (not safe))
                        (_g242578242615_ _g242579242618_))))))
          (declare (not safe))
          (_g242577242728_ _ann242576_))))
    (define gxc#basic-expression-type-annotation-mop.constructor
      (lambda (_stx242523_ _ann242524_)
        (let* ((_g242526242539_
                (lambda (_g242527242536_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g242527242536_))))
               (_g242525242572_
                (lambda (_g242527242542_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g242527242542_))
                      (let ((_e242529242544_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g242527242542_))))
                        (let ((_hd242530242547_
                               (let ()
                                 (declare (not safe))
                                 (##car _e242529242544_)))
                              (_tl242531242549_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e242529242544_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl242531242549_))
                              (let ((_e242532242552_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl242531242549_))))
                                (let ((_hd242533242555_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e242532242552_)))
                                      (_tl242534242557_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e242532242552_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl242534242557_))
                                      ((lambda (_L242560_)
                                         (let ((__tmp250168
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L242560_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!constructor::t
                                            __tmp250168)))
                                       _hd242533242555_)
                                      (let ()
                                        (declare (not safe))
                                        (_g242526242539_ _g242527242542_)))))
                              (let ()
                                (declare (not safe))
                                (_g242526242539_ _g242527242542_)))))
                      (let ()
                        (declare (not safe))
                        (_g242526242539_ _g242527242542_))))))
          (declare (not safe))
          (_g242525242572_ _ann242524_))))
    (define gxc#basic-expression-type-annotation-mop.predicate
      (lambda (_stx242471_ _ann242472_)
        (let* ((_g242474242487_
                (lambda (_g242475242484_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g242475242484_))))
               (_g242473242520_
                (lambda (_g242475242490_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g242475242490_))
                      (let ((_e242477242492_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g242475242490_))))
                        (let ((_hd242478242495_
                               (let ()
                                 (declare (not safe))
                                 (##car _e242477242492_)))
                              (_tl242479242497_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e242477242492_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl242479242497_))
                              (let ((_e242480242500_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl242479242497_))))
                                (let ((_hd242481242503_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e242480242500_)))
                                      (_tl242482242505_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e242480242500_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl242482242505_))
                                      ((lambda (_L242508_)
                                         (let ((__tmp250169
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L242508_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!predicate::t
                                            __tmp250169)))
                                       _hd242481242503_)
                                      (let ()
                                        (declare (not safe))
                                        (_g242474242487_ _g242475242490_)))))
                              (let ()
                                (declare (not safe))
                                (_g242474242487_ _g242475242490_)))))
                      (let ()
                        (declare (not safe))
                        (_g242474242487_ _g242475242490_))))))
          (declare (not safe))
          (_g242473242520_ _ann242472_))))
    (define gxc#basic-expression-type-annotation-mop.accessor
      (lambda (_stx242387_ _ann242388_)
        (let* ((_g242390242411_
                (lambda (_g242391242408_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g242391242408_))))
               (_g242389242468_
                (lambda (_g242391242414_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g242391242414_))
                      (let ((_e242395242416_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g242391242414_))))
                        (let ((_hd242396242419_
                               (let ()
                                 (declare (not safe))
                                 (##car _e242395242416_)))
                              (_tl242397242421_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e242395242416_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl242397242421_))
                              (let ((_e242398242424_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl242397242421_))))
                                (let ((_hd242399242427_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e242398242424_)))
                                      (_tl242400242429_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e242398242424_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl242400242429_))
                                      (let ((_e242401242432_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl242400242429_))))
                                        (let ((_hd242402242435_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e242401242432_)))
                                              (_tl242403242437_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e242401242432_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl242403242437_))
                                              (let ((_e242404242440_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl242403242437_))))
                                                (let ((_hd242405242443_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e242404242440_)))
                                                      (_tl242406242445_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e242404242440_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl242406242445_))
                                                      ((lambda (_L242448_
                                                                _L242449_
                                                                _L242450_)
                                                         (let ((__tmp250172
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L242450_)))
                       (__tmp250171
                        (let () (declare (not safe)) (gx#stx-e _L242449_)))
                       (__tmp250170
                        (let () (declare (not safe)) (gx#stx-e _L242448_))))
                   (declare (not safe))
                   (##structure
                    gxc#!accessor::t
                    __tmp250172
                    __tmp250171
                    __tmp250170)))
               _hd242405242443_
               _hd242402242435_
               _hd242399242427_)
              (let ()
                (declare (not safe))
                (_g242390242411_ _g242391242414_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g242390242411_
                                                 _g242391242414_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g242390242411_ _g242391242414_)))))
                              (let ()
                                (declare (not safe))
                                (_g242390242411_ _g242391242414_)))))
                      (let ()
                        (declare (not safe))
                        (_g242390242411_ _g242391242414_))))))
          (declare (not safe))
          (_g242389242468_ _ann242388_))))
    (define gxc#basic-expression-type-annotation-mop.mutator
      (lambda (_stx242303_ _ann242304_)
        (let* ((_g242306242327_
                (lambda (_g242307242324_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g242307242324_))))
               (_g242305242384_
                (lambda (_g242307242330_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g242307242330_))
                      (let ((_e242311242332_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g242307242330_))))
                        (let ((_hd242312242335_
                               (let ()
                                 (declare (not safe))
                                 (##car _e242311242332_)))
                              (_tl242313242337_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e242311242332_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl242313242337_))
                              (let ((_e242314242340_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl242313242337_))))
                                (let ((_hd242315242343_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e242314242340_)))
                                      (_tl242316242345_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e242314242340_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl242316242345_))
                                      (let ((_e242317242348_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl242316242345_))))
                                        (let ((_hd242318242351_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e242317242348_)))
                                              (_tl242319242353_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e242317242348_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl242319242353_))
                                              (let ((_e242320242356_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl242319242353_))))
                                                (let ((_hd242321242359_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e242320242356_)))
                                                      (_tl242322242361_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e242320242356_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl242322242361_))
                                                      ((lambda (_L242364_
                                                                _L242365_
                                                                _L242366_)
                                                         (let ((__tmp250175
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L242366_)))
                       (__tmp250174
                        (let () (declare (not safe)) (gx#stx-e _L242365_)))
                       (__tmp250173
                        (let () (declare (not safe)) (gx#stx-e _L242364_))))
                   (declare (not safe))
                   (##structure
                    gxc#!mutator::t
                    __tmp250175
                    __tmp250174
                    __tmp250173)))
               _hd242321242359_
               _hd242318242351_
               _hd242315242343_)
              (let ()
                (declare (not safe))
                (_g242306242327_ _g242307242330_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g242306242327_
                                                 _g242307242330_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g242306242327_ _g242307242330_)))))
                              (let ()
                                (declare (not safe))
                                (_g242306242327_ _g242307242330_)))))
                      (let ()
                        (declare (not safe))
                        (_g242306242327_ _g242307242330_))))))
          (declare (not safe))
          (_g242305242384_ _ann242304_))))
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
      (lambda (_stx241423_)
        (let* ((___stx248456248457_ _stx241423_)
               (_g241429241625_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx248456248457_)))))
          (let ((___kont248458248459_
                 (lambda (_L242291_)
                   (let ((__obj250126
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj250126
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L242291_))
                      '#f)
                     __obj250126)))
                (___kont248460248461_
                 (lambda (_L242218_
                          _L242219_
                          _L242220_
                          _L242221_
                          _L242222_
                          _L242223_)
                   (let* ((_tab242273_
                           (let () (declare (not safe)) (gx#stx-e _L242220_)))
                          (_keys242275_
                           (if _tab242273_
                               (let ((__tmp250176 (vector->list _tab242273_)))
                                 (declare (not safe))
                                 (filter values __tmp250176))
                               '#f)))
                     (let ((__tmp250177
                            (let ()
                              (declare (not safe))
                              (gxc#identifier-symbol _L242219_))))
                       (declare (not safe))
                       (##structure
                        gxc#!kw-lambda::t
                        'kw-lambda
                        _keys242275_
                        __tmp250177)))))
                (___kont248462248463_
                 (lambda (_L241951_
                          _L241952_
                          _L241953_
                          _L241954_
                          _L241955_
                          _L241956_
                          _L241957_
                          _L241958_
                          _L241959_
                          _L241960_)
                   (let ((__tmp250179
                          (map gx#stx-e
                               (let ((__tmp250180
                                      (lambda (_g242053242056_ _g242054242058_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g242053242056_
                                                _g242054242058_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp250180 '() _L241953_))))
                         (__tmp250178
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L241957_))))
                     (declare (not safe))
                     (##structure
                      gxc#!kw-lambda-primary::t
                      'kw-lambda-dispatch
                      __tmp250179
                      __tmp250178))))
                (___kont248466248467_
                 (lambda (_L241661_)
                   (let ((__obj250127
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj250127
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L241661_))
                      (let ()
                        (declare (not safe))
                        (gxc#dispatch-lambda-form-delegate _L241661_)))
                     __obj250127)))
                (___kont248468248469_
                 (lambda (_L241638_)
                   (let ((__obj250128
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj250128
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L241638_))
                      '#f)
                     __obj250128))))
            (let* ((___match248775248776_
                    (lambda (_e241614241653_ _hd241615241656_ _tl241616241658_)
                      (let ((_L241661_ _tl241616241658_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#dispatch-lambda-form? _L241661_))
                            (___kont248466248467_ _L241661_)
                            (___kont248468248469_ _tl241616241658_)))))
                   (___match248769248770_
                    (lambda (_e241508241675_
                             _hd241509241678_
                             _tl241510241680_
                             _e241511241683_
                             _hd241512241686_
                             _tl241513241688_
                             _e241514241691_
                             _hd241515241694_
                             _tl241516241696_
                             _e241517241699_
                             _hd241518241702_
                             _tl241519241704_
                             _e241520241707_
                             _hd241521241710_
                             _tl241522241712_
                             _e241523241715_
                             _hd241524241718_
                             _tl241525241720_
                             _e241526241723_
                             _hd241527241726_
                             _tl241528241728_
                             _e241529241731_
                             _hd241530241734_
                             _tl241531241736_
                             _e241532241739_
                             _hd241533241742_
                             _tl241534241744_
                             _e241535241747_
                             _hd241536241750_
                             _tl241537241752_
                             _e241538241755_
                             _hd241539241758_
                             _tl241540241760_
                             _e241541241763_
                             _hd241542241766_
                             _tl241543241768_
                             _e241544241771_
                             _hd241545241774_
                             _tl241546241776_
                             _e241547241779_
                             _hd241548241782_
                             _tl241549241784_
                             ___splice248464248465_
                             _target241550241787_
                             _tl241552241789_
                             _e241565241792_
                             _hd241566241795_
                             _tl241567241797_
                             _e241568241800_
                             _hd241569241803_
                             _tl241570241805_
                             _e241571241808_
                             _hd241572241811_
                             _tl241573241813_)
                      (letrec ((_loop241553241816_
                                (lambda (_hd241551241819_
                                         _-absent-value241557241821_
                                         _key241558241823_
                                         _-xkwvar241559241825_
                                         _-hash-ref241560241827_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd241551241819_))
                                      (let ((_e241554241830_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd241551241819_))))
                                        (let ((_lp-tl241556241835_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e241554241830_)))
                                              (_lp-hd241555241833_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e241554241830_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _lp-hd241555241833_))
                                              (let ((_e241574241838_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _lp-hd241555241833_))))
                                                (let ((_tl241576241843_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e241574241838_)))
                                                      (_hd241575241841_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e241574241838_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd241575241841_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#call
                                                             _hd241575241841_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl241576241843_))
                      (let ((_e241577241846_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl241576241843_))))
                        (let ((_tl241579241851_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e241577241846_)))
                              (_hd241578241849_
                               (let ()
                                 (declare (not safe))
                                 (##car _e241577241846_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd241578241849_))
                              (let ((_e241580241854_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd241578241849_))))
                                (let ((_tl241582241859_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e241580241854_)))
                                      (_hd241581241857_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e241580241854_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd241581241857_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd241581241857_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl241582241859_))
                                              (let ((_e241583241862_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl241582241859_))))
                                                (let ((_tl241585241867_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e241583241862_)))
                                                      (_hd241584241865_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e241583241862_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl241585241867_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl241579241851_))
                                                          (let ((_e241586241870_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl241579241851_))))
                    (let ((_tl241588241875_
                           (let ()
                             (declare (not safe))
                             (##cdr _e241586241870_)))
                          (_hd241587241873_
                           (let ()
                             (declare (not safe))
                             (##car _e241586241870_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd241587241873_))
                          (let ((_e241589241878_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd241587241873_))))
                            (let ((_tl241591241883_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e241589241878_)))
                                  (_hd241590241881_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e241589241878_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd241590241881_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd241590241881_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl241591241883_))
                                          (let ((_e241592241886_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl241591241883_))))
                                            (let ((_tl241594241891_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e241592241886_)))
                                                  (_hd241593241889_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e241592241886_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl241594241891_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl241588241875_))
                                                      (let ((_e241595241894_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl241588241875_))))
                (let ((_tl241597241899_
                       (let () (declare (not safe)) (##cdr _e241595241894_)))
                      (_hd241596241897_
                       (let () (declare (not safe)) (##car _e241595241894_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd241596241897_))
                      (let ((_e241598241902_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd241596241897_))))
                        (let ((_tl241600241907_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e241598241902_)))
                              (_hd241599241905_
                               (let ()
                                 (declare (not safe))
                                 (##car _e241598241902_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd241599241905_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#quote _hd241599241905_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl241600241907_))
                                      (let ((_e241601241910_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl241600241907_))))
                                        (let ((_tl241603241915_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e241601241910_)))
                                              (_hd241602241913_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e241601241910_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl241603241915_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl241597241899_))
                                                  (let ((_e241604241918_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl241597241899_))))
                                                    (let ((_tl241606241923_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e241604241918_)))
                                                          (_hd241605241921_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e241604241918_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd241605241921_))
                                                          (let ((_e241607241926_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd241605241921_))))
                    (let ((_tl241609241931_
                           (let ()
                             (declare (not safe))
                             (##cdr _e241607241926_)))
                          (_hd241608241929_
                           (let ()
                             (declare (not safe))
                             (##car _e241607241926_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd241608241929_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd241608241929_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl241609241931_))
                                  (let ((_e241610241934_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl241609241931_))))
                                    (let ((_tl241612241939_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e241610241934_)))
                                          (_hd241611241937_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e241610241934_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl241612241939_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl241606241923_))
                                              (let ((__tmp250184
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd241611241937_
                                                             _-absent-value241557241821_)))
                                                    (__tmp250183
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd241602241913_
                                                             _key241558241823_)))
                                                    (__tmp250182
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd241593241889_
                                                             _-xkwvar241559241825_)))
                                                    (__tmp250181
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd241584241865_
                                                             _-hash-ref241560241827_))))
                                                (declare (not safe))
                                                (_loop241553241816_
                                                 _lp-tl241556241835_
                                                 __tmp250184
                                                 __tmp250183
                                                 __tmp250182
                                                 __tmp250181))
                                              (___match248775248776_
                                               _e241508241675_
                                               _hd241509241678_
                                               _tl241510241680_))
                                          (___match248775248776_
                                           _e241508241675_
                                           _hd241509241678_
                                           _tl241510241680_))))
                                  (___match248775248776_
                                   _e241508241675_
                                   _hd241509241678_
                                   _tl241510241680_))
                              (___match248775248776_
                               _e241508241675_
                               _hd241509241678_
                               _tl241510241680_))
                          (___match248775248776_
                           _e241508241675_
                           _hd241509241678_
                           _tl241510241680_))))
                  (___match248775248776_
                   _e241508241675_
                   _hd241509241678_
                   _tl241510241680_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match248775248776_
                                                   _e241508241675_
                                                   _hd241509241678_
                                                   _tl241510241680_))
                                              (___match248775248776_
                                               _e241508241675_
                                               _hd241509241678_
                                               _tl241510241680_))))
                                      (___match248775248776_
                                       _e241508241675_
                                       _hd241509241678_
                                       _tl241510241680_))
                                  (___match248775248776_
                                   _e241508241675_
                                   _hd241509241678_
                                   _tl241510241680_))
                              (___match248775248776_
                               _e241508241675_
                               _hd241509241678_
                               _tl241510241680_))))
                      (___match248775248776_
                       _e241508241675_
                       _hd241509241678_
                       _tl241510241680_))))
              (___match248775248776_
               _e241508241675_
               _hd241509241678_
               _tl241510241680_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match248775248776_
                                                   _e241508241675_
                                                   _hd241509241678_
                                                   _tl241510241680_))))
                                          (___match248775248776_
                                           _e241508241675_
                                           _hd241509241678_
                                           _tl241510241680_))
                                      (___match248775248776_
                                       _e241508241675_
                                       _hd241509241678_
                                       _tl241510241680_))
                                  (___match248775248776_
                                   _e241508241675_
                                   _hd241509241678_
                                   _tl241510241680_))))
                          (___match248775248776_
                           _e241508241675_
                           _hd241509241678_
                           _tl241510241680_))))
                  (___match248775248776_
                   _e241508241675_
                   _hd241509241678_
                   _tl241510241680_))
              (___match248775248776_
               _e241508241675_
               _hd241509241678_
               _tl241510241680_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match248775248776_
                                               _e241508241675_
                                               _hd241509241678_
                                               _tl241510241680_))
                                          (___match248775248776_
                                           _e241508241675_
                                           _hd241509241678_
                                           _tl241510241680_))
                                      (___match248775248776_
                                       _e241508241675_
                                       _hd241509241678_
                                       _tl241510241680_))))
                              (___match248775248776_
                               _e241508241675_
                               _hd241509241678_
                               _tl241510241680_))))
                      (___match248775248776_
                       _e241508241675_
                       _hd241509241678_
                       _tl241510241680_))
                  (___match248775248776_
                   _e241508241675_
                   _hd241509241678_
                   _tl241510241680_))
              (___match248775248776_
               _e241508241675_
               _hd241509241678_
               _tl241510241680_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match248775248776_
                                               _e241508241675_
                                               _hd241509241678_
                                               _tl241510241680_))))
                                      (let ((_-hash-ref241564241948_
                                             (reverse _-hash-ref241560241827_))
                                            (_-xkwvar241563241946_
                                             (reverse _-xkwvar241559241825_))
                                            (_key241562241944_
                                             (reverse _key241558241823_))
                                            (_-absent-value241561241942_
                                             (reverse _-absent-value241557241821_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl241519241704_))
                                            (let ((_L241951_ _hd241572241811_)
                                                  (_L241952_
                                                   _-absent-value241561241942_)
                                                  (_L241953_ _key241562241944_)
                                                  (_L241954_
                                                   _-xkwvar241563241946_)
                                                  (_L241955_
                                                   _-hash-ref241564241948_)
                                                  (_L241956_ _hd241548241782_)
                                                  (_L241957_ _hd241539241758_)
                                                  (_L241958_ _hd241530241734_)
                                                  (_L241959_ _tl241516241696_)
                                                  (_L241960_ _hd241515241694_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L241960_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L241959_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#runtime-identifier=?
                                                          _L241958_
                                                          'apply))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#free-identifier=?
                                                          _L241960_
                                                          _L241956_))
                                                       (let ((__tmp250185
                                                              (let ((__tmp250186
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g242013242016_ _g242014242018_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g242013242016_ _g242014242018_)))))
                        (declare (not safe))
                        (foldr1 __tmp250186 '() _L241953_))))
                 (declare (not safe))
                 (andmap1 gx#stx-keyword? __tmp250185))
               (let ((__tmp250189
                      (lambda (_g242020242022_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g242020242022_
                           'hash-ref))))
                     (__tmp250187
                      (let ((__tmp250188
                             (lambda (_g242024242027_ _g242025242029_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g242024242027_ _g242025242029_)))))
                        (declare (not safe))
                        (foldr1 __tmp250188 '() _L241955_))))
                 (declare (not safe))
                 (andmap1 __tmp250189 __tmp250187))
               (let ((__tmp250192
                      (lambda (_g242031242033_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g242031242033_
                           'absent-value))))
                     (__tmp250190
                      (let ((__tmp250191
                             (lambda (_g242035242038_ _g242036242040_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g242035242038_ _g242036242040_)))))
                        (declare (not safe))
                        (foldr1 __tmp250191 '() _L241952_))))
                 (declare (not safe))
                 (andmap1 __tmp250192 __tmp250190))
               (let ((__tmp250195
                      (lambda (_g242042242044_)
                        (let ()
                          (declare (not safe))
                          (gx#free-identifier=? _g242042242044_ _L241960_))))
                     (__tmp250193
                      (let ((__tmp250194
                             (lambda (_g242046242049_ _g242047242051_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g242046242049_ _g242047242051_)))))
                        (declare (not safe))
                        (foldr1 __tmp250194 '() _L241954_))))
                 (declare (not safe))
                 (andmap1 __tmp250195 __tmp250193)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont248462248463_
                                                   _L241951_
                                                   _L241952_
                                                   _L241953_
                                                   _L241954_
                                                   _L241955_
                                                   _L241956_
                                                   _L241957_
                                                   _L241958_
                                                   _L241959_
                                                   _L241960_)
                                                  (___match248775248776_
                                                   _e241508241675_
                                                   _hd241509241678_
                                                   _tl241510241680_)))
                                            (___match248775248776_
                                             _e241508241675_
                                             _hd241509241678_
                                             _tl241510241680_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop241553241816_
                           _target241550241787_
                           '()
                           '()
                           '()
                           '())))))
                   (___match248641248642_
                    (lambda (_e241508241675_
                             _hd241509241678_
                             _tl241510241680_
                             _e241511241683_
                             _hd241512241686_
                             _tl241513241688_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd241512241686_))
                          (let ((_e241514241691_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd241512241686_))))
                            (let ((_tl241516241696_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e241514241691_)))
                                  (_hd241515241694_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e241514241691_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl241513241688_))
                                  (let ((_e241517241699_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl241513241688_))))
                                    (let ((_tl241519241704_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e241517241699_)))
                                          (_hd241518241702_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e241517241699_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd241518241702_))
                                          (let ((_e241520241707_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd241518241702_))))
                                            (let ((_tl241522241712_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e241520241707_)))
                                                  (_hd241521241710_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e241520241707_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd241521241710_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd241521241710_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl241522241712_))
                                                          (let ((_e241523241715_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl241522241712_))))
                    (let ((_tl241525241720_
                           (let ()
                             (declare (not safe))
                             (##cdr _e241523241715_)))
                          (_hd241524241718_
                           (let ()
                             (declare (not safe))
                             (##car _e241523241715_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd241524241718_))
                          (let ((_e241526241723_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd241524241718_))))
                            (let ((_tl241528241728_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e241526241723_)))
                                  (_hd241527241726_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e241526241723_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd241527241726_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd241527241726_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl241528241728_))
                                          (let ((_e241529241731_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl241528241728_))))
                                            (let ((_tl241531241736_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e241529241731_)))
                                                  (_hd241530241734_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e241529241731_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl241531241736_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl241525241720_))
                                                      (let ((_e241532241739_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl241525241720_))))
                (let ((_tl241534241744_
                       (let () (declare (not safe)) (##cdr _e241532241739_)))
                      (_hd241533241742_
                       (let () (declare (not safe)) (##car _e241532241739_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd241533241742_))
                      (let ((_e241535241747_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd241533241742_))))
                        (let ((_tl241537241752_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e241535241747_)))
                              (_hd241536241750_
                               (let ()
                                 (declare (not safe))
                                 (##car _e241535241747_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd241536241750_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd241536241750_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl241537241752_))
                                      (let ((_e241538241755_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl241537241752_))))
                                        (let ((_tl241540241760_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e241538241755_)))
                                              (_hd241539241758_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e241538241755_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl241540241760_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl241534241744_))
                                                  (let ((_e241541241763_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl241534241744_))))
                                                    (let ((_tl241543241768_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e241541241763_)))
                                                          (_hd241542241766_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e241541241763_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd241542241766_))
                                                          (let ((_e241544241771_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd241542241766_))))
                    (let ((_tl241546241776_
                           (let ()
                             (declare (not safe))
                             (##cdr _e241544241771_)))
                          (_hd241545241774_
                           (let ()
                             (declare (not safe))
                             (##car _e241544241771_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd241545241774_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd241545241774_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl241546241776_))
                                  (let ((_e241547241779_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl241546241776_))))
                                    (let ((_tl241549241784_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e241547241779_)))
                                          (_hd241548241782_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e241547241779_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl241549241784_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl241543241768_))
                                              (if (fx>= (let ()
                                                          (declare (not safe))
                                                          (gx#stx-length
                                                           _tl241543241768_))
                                                        '1)
                                                  (let ((___splice248464248465_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl241543241768_
                                                            '1))))
                                                    (let ((_tl241552241789_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice248464248465_
                                                              '1)))
                                                          (_target241550241787_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice248464248465_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl241552241789_))
                                                          (let ((_e241565241792_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl241552241789_))))
                    (let ((_tl241567241797_
                           (let ()
                             (declare (not safe))
                             (##cdr _e241565241792_)))
                          (_hd241566241795_
                           (let ()
                             (declare (not safe))
                             (##car _e241565241792_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd241566241795_))
                          (let ((_e241568241800_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd241566241795_))))
                            (let ((_tl241570241805_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e241568241800_)))
                                  (_hd241569241803_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e241568241800_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd241569241803_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd241569241803_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl241570241805_))
                                          (let ((_e241571241808_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl241570241805_))))
                                            (let ((_tl241573241813_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e241571241808_)))
                                                  (_hd241572241811_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e241571241808_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl241573241813_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl241567241797_))
                                                      (___match248769248770_
                                                       _e241508241675_
                                                       _hd241509241678_
                                                       _tl241510241680_
                                                       _e241511241683_
                                                       _hd241512241686_
                                                       _tl241513241688_
                                                       _e241514241691_
                                                       _hd241515241694_
                                                       _tl241516241696_
                                                       _e241517241699_
                                                       _hd241518241702_
                                                       _tl241519241704_
                                                       _e241520241707_
                                                       _hd241521241710_
                                                       _tl241522241712_
                                                       _e241523241715_
                                                       _hd241524241718_
                                                       _tl241525241720_
                                                       _e241526241723_
                                                       _hd241527241726_
                                                       _tl241528241728_
                                                       _e241529241731_
                                                       _hd241530241734_
                                                       _tl241531241736_
                                                       _e241532241739_
                                                       _hd241533241742_
                                                       _tl241534241744_
                                                       _e241535241747_
                                                       _hd241536241750_
                                                       _tl241537241752_
                                                       _e241538241755_
                                                       _hd241539241758_
                                                       _tl241540241760_
                                                       _e241541241763_
                                                       _hd241542241766_
                                                       _tl241543241768_
                                                       _e241544241771_
                                                       _hd241545241774_
                                                       _tl241546241776_
                                                       _e241547241779_
                                                       _hd241548241782_
                                                       _tl241549241784_
                                                       ___splice248464248465_
                                                       _target241550241787_
                                                       _tl241552241789_
                                                       _e241565241792_
                                                       _hd241566241795_
                                                       _tl241567241797_
                                                       _e241568241800_
                                                       _hd241569241803_
                                                       _tl241570241805_
                                                       _e241571241808_
                                                       _hd241572241811_
                                                       _tl241573241813_)
                                                      (___match248775248776_
                                                       _e241508241675_
                                                       _hd241509241678_
                                                       _tl241510241680_))
                                                  (___match248775248776_
                                                   _e241508241675_
                                                   _hd241509241678_
                                                   _tl241510241680_))))
                                          (___match248775248776_
                                           _e241508241675_
                                           _hd241509241678_
                                           _tl241510241680_))
                                      (___match248775248776_
                                       _e241508241675_
                                       _hd241509241678_
                                       _tl241510241680_))
                                  (___match248775248776_
                                   _e241508241675_
                                   _hd241509241678_
                                   _tl241510241680_))))
                          (___match248775248776_
                           _e241508241675_
                           _hd241509241678_
                           _tl241510241680_))))
                  (___match248775248776_
                   _e241508241675_
                   _hd241509241678_
                   _tl241510241680_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match248775248776_
                                                   _e241508241675_
                                                   _hd241509241678_
                                                   _tl241510241680_))
                                              (___match248775248776_
                                               _e241508241675_
                                               _hd241509241678_
                                               _tl241510241680_))
                                          (___match248775248776_
                                           _e241508241675_
                                           _hd241509241678_
                                           _tl241510241680_))))
                                  (___match248775248776_
                                   _e241508241675_
                                   _hd241509241678_
                                   _tl241510241680_))
                              (___match248775248776_
                               _e241508241675_
                               _hd241509241678_
                               _tl241510241680_))
                          (___match248775248776_
                           _e241508241675_
                           _hd241509241678_
                           _tl241510241680_))))
                  (___match248775248776_
                   _e241508241675_
                   _hd241509241678_
                   _tl241510241680_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match248775248776_
                                                   _e241508241675_
                                                   _hd241509241678_
                                                   _tl241510241680_))
                                              (___match248775248776_
                                               _e241508241675_
                                               _hd241509241678_
                                               _tl241510241680_))))
                                      (___match248775248776_
                                       _e241508241675_
                                       _hd241509241678_
                                       _tl241510241680_))
                                  (___match248775248776_
                                   _e241508241675_
                                   _hd241509241678_
                                   _tl241510241680_))
                              (___match248775248776_
                               _e241508241675_
                               _hd241509241678_
                               _tl241510241680_))))
                      (___match248775248776_
                       _e241508241675_
                       _hd241509241678_
                       _tl241510241680_))))
              (___match248775248776_
               _e241508241675_
               _hd241509241678_
               _tl241510241680_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match248775248776_
                                                   _e241508241675_
                                                   _hd241509241678_
                                                   _tl241510241680_))))
                                          (___match248775248776_
                                           _e241508241675_
                                           _hd241509241678_
                                           _tl241510241680_))
                                      (___match248775248776_
                                       _e241508241675_
                                       _hd241509241678_
                                       _tl241510241680_))
                                  (___match248775248776_
                                   _e241508241675_
                                   _hd241509241678_
                                   _tl241510241680_))))
                          (___match248775248776_
                           _e241508241675_
                           _hd241509241678_
                           _tl241510241680_))))
                  (___match248775248776_
                   _e241508241675_
                   _hd241509241678_
                   _tl241510241680_))
              (___match248775248776_
               _e241508241675_
               _hd241509241678_
               _tl241510241680_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match248775248776_
                                                   _e241508241675_
                                                   _hd241509241678_
                                                   _tl241510241680_))))
                                          (___match248775248776_
                                           _e241508241675_
                                           _hd241509241678_
                                           _tl241510241680_))))
                                  (___match248775248776_
                                   _e241508241675_
                                   _hd241509241678_
                                   _tl241510241680_))))
                          (___match248775248776_
                           _e241508241675_
                           _hd241509241678_
                           _tl241510241680_))))
                   (___match248629248630_
                    (lambda (_e241441242066_
                             _hd241442242069_
                             _tl241443242071_
                             _e241444242074_
                             _hd241445242077_
                             _tl241446242079_
                             _e241447242082_
                             _hd241448242085_
                             _tl241449242087_
                             _e241450242090_
                             _hd241451242093_
                             _tl241452242095_
                             _e241453242098_
                             _hd241454242101_
                             _tl241455242103_
                             _e241456242106_
                             _hd241457242109_
                             _tl241458242111_
                             _e241459242114_
                             _hd241460242117_
                             _tl241461242119_
                             _e241462242122_
                             _hd241463242125_
                             _tl241464242127_
                             _e241465242130_
                             _hd241466242133_
                             _tl241467242135_
                             _e241468242138_
                             _hd241469242141_
                             _tl241470242143_
                             _e241471242146_
                             _hd241472242149_
                             _tl241473242151_
                             _e241474242154_
                             _hd241475242157_
                             _tl241476242159_
                             _e241477242162_
                             _hd241478242165_
                             _tl241479242167_
                             _e241480242170_
                             _hd241481242173_
                             _tl241482242175_
                             _e241483242178_
                             _hd241484242181_
                             _tl241485242183_
                             _e241486242186_
                             _hd241487242189_
                             _tl241488242191_
                             _e241489242194_
                             _hd241490242197_
                             _tl241491242199_
                             _e241492242202_
                             _hd241493242205_
                             _tl241494242207_
                             _e241495242210_
                             _hd241496242213_
                             _tl241497242215_)
                      (let ((_L242218_ _hd241496242213_)
                            (_L242219_ _hd241487242189_)
                            (_L242220_ _hd241478242165_)
                            (_L242221_ _hd241469242141_)
                            (_L242222_ _hd241460242117_)
                            (_L242223_ _hd241445242077_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L242223_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L242222_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _L242221_
                                    'keyword-dispatch))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L242223_ _L242218_)))
                            (___kont248460248461_
                             _L242218_
                             _L242219_
                             _L242220_
                             _L242221_
                             _L242222_
                             _L242223_)
                            (___match248641248642_
                             _e241441242066_
                             _hd241442242069_
                             _tl241443242071_
                             _e241444242074_
                             _hd241445242077_
                             _tl241446242079_)))))
                   (___match248483248484_
                    (lambda (_e241441242066_ _hd241442242069_ _tl241443242071_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl241443242071_))
                          (let ((_e241444242074_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl241443242071_))))
                            (let ((_tl241446242079_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e241444242074_)))
                                  (_hd241445242077_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e241444242074_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl241446242079_))
                                  (let ((_e241447242082_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl241446242079_))))
                                    (let ((_tl241449242087_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e241447242082_)))
                                          (_hd241448242085_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e241447242082_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd241448242085_))
                                          (let ((_e241450242090_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd241448242085_))))
                                            (let ((_tl241452242095_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e241450242090_)))
                                                  (_hd241451242093_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e241450242090_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd241451242093_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd241451242093_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl241452242095_))
                                                          (let ((_e241453242098_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl241452242095_))))
                    (let ((_tl241455242103_
                           (let ()
                             (declare (not safe))
                             (##cdr _e241453242098_)))
                          (_hd241454242101_
                           (let ()
                             (declare (not safe))
                             (##car _e241453242098_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd241454242101_))
                          (let ((_e241456242106_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd241454242101_))))
                            (let ((_tl241458242111_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e241456242106_)))
                                  (_hd241457242109_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e241456242106_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd241457242109_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd241457242109_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl241458242111_))
                                          (let ((_e241459242114_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl241458242111_))))
                                            (let ((_tl241461242119_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e241459242114_)))
                                                  (_hd241460242117_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e241459242114_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl241461242119_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl241455242103_))
                                                      (let ((_e241462242122_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl241455242103_))))
                (let ((_tl241464242127_
                       (let () (declare (not safe)) (##cdr _e241462242122_)))
                      (_hd241463242125_
                       (let () (declare (not safe)) (##car _e241462242122_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd241463242125_))
                      (let ((_e241465242130_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd241463242125_))))
                        (let ((_tl241467242135_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e241465242130_)))
                              (_hd241466242133_
                               (let ()
                                 (declare (not safe))
                                 (##car _e241465242130_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd241466242133_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd241466242133_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl241467242135_))
                                      (let ((_e241468242138_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl241467242135_))))
                                        (let ((_tl241470242143_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e241468242138_)))
                                              (_hd241469242141_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e241468242138_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl241470242143_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl241464242127_))
                                                  (let ((_e241471242146_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl241464242127_))))
                                                    (let ((_tl241473242151_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e241471242146_)))
                                                          (_hd241472242149_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e241471242146_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd241472242149_))
                                                          (let ((_e241474242154_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd241472242149_))))
                    (let ((_tl241476242159_
                           (let ()
                             (declare (not safe))
                             (##cdr _e241474242154_)))
                          (_hd241475242157_
                           (let ()
                             (declare (not safe))
                             (##car _e241474242154_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd241475242157_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd241475242157_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl241476242159_))
                                  (let ((_e241477242162_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl241476242159_))))
                                    (let ((_tl241479242167_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e241477242162_)))
                                          (_hd241478242165_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e241477242162_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl241479242167_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl241473242151_))
                                              (let ((_e241480242170_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl241473242151_))))
                                                (let ((_tl241482242175_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e241480242170_)))
                                                      (_hd241481242173_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e241480242170_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd241481242173_))
                                                      (let ((_e241483242178_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd241481242173_))))
                (let ((_tl241485242183_
                       (let () (declare (not safe)) (##cdr _e241483242178_)))
                      (_hd241484242181_
                       (let () (declare (not safe)) (##car _e241483242178_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd241484242181_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd241484242181_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl241485242183_))
                              (let ((_e241486242186_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl241485242183_))))
                                (let ((_tl241488242191_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e241486242186_)))
                                      (_hd241487242189_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e241486242186_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl241488242191_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl241482242175_))
                                          (let ((_e241489242194_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl241482242175_))))
                                            (let ((_tl241491242199_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e241489242194_)))
                                                  (_hd241490242197_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e241489242194_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd241490242197_))
                                                  (let ((_e241492242202_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd241490242197_))))
                                                    (let ((_tl241494242207_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e241492242202_)))
                                                          (_hd241493242205_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e241492242202_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd241493242205_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _hd241493242205_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl241494242207_))
                          (let ((_e241495242210_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl241494242207_))))
                            (let ((_tl241497242215_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e241495242210_)))
                                  (_hd241496242213_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e241495242210_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl241497242215_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl241491242199_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl241449242087_))
                                          (___match248629248630_
                                           _e241441242066_
                                           _hd241442242069_
                                           _tl241443242071_
                                           _e241444242074_
                                           _hd241445242077_
                                           _tl241446242079_
                                           _e241447242082_
                                           _hd241448242085_
                                           _tl241449242087_
                                           _e241450242090_
                                           _hd241451242093_
                                           _tl241452242095_
                                           _e241453242098_
                                           _hd241454242101_
                                           _tl241455242103_
                                           _e241456242106_
                                           _hd241457242109_
                                           _tl241458242111_
                                           _e241459242114_
                                           _hd241460242117_
                                           _tl241461242119_
                                           _e241462242122_
                                           _hd241463242125_
                                           _tl241464242127_
                                           _e241465242130_
                                           _hd241466242133_
                                           _tl241467242135_
                                           _e241468242138_
                                           _hd241469242141_
                                           _tl241470242143_
                                           _e241471242146_
                                           _hd241472242149_
                                           _tl241473242151_
                                           _e241474242154_
                                           _hd241475242157_
                                           _tl241476242159_
                                           _e241477242162_
                                           _hd241478242165_
                                           _tl241479242167_
                                           _e241480242170_
                                           _hd241481242173_
                                           _tl241482242175_
                                           _e241483242178_
                                           _hd241484242181_
                                           _tl241485242183_
                                           _e241486242186_
                                           _hd241487242189_
                                           _tl241488242191_
                                           _e241489242194_
                                           _hd241490242197_
                                           _tl241491242199_
                                           _e241492242202_
                                           _hd241493242205_
                                           _tl241494242207_
                                           _e241495242210_
                                           _hd241496242213_
                                           _tl241497242215_)
                                          (___match248641248642_
                                           _e241441242066_
                                           _hd241442242069_
                                           _tl241443242071_
                                           _e241444242074_
                                           _hd241445242077_
                                           _tl241446242079_))
                                      (___match248641248642_
                                       _e241441242066_
                                       _hd241442242069_
                                       _tl241443242071_
                                       _e241444242074_
                                       _hd241445242077_
                                       _tl241446242079_))
                                  (___match248641248642_
                                   _e241441242066_
                                   _hd241442242069_
                                   _tl241443242071_
                                   _e241444242074_
                                   _hd241445242077_
                                   _tl241446242079_))))
                          (___match248641248642_
                           _e241441242066_
                           _hd241442242069_
                           _tl241443242071_
                           _e241444242074_
                           _hd241445242077_
                           _tl241446242079_))
                      (___match248641248642_
                       _e241441242066_
                       _hd241442242069_
                       _tl241443242071_
                       _e241444242074_
                       _hd241445242077_
                       _tl241446242079_))
                  (___match248641248642_
                   _e241441242066_
                   _hd241442242069_
                   _tl241443242071_
                   _e241444242074_
                   _hd241445242077_
                   _tl241446242079_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match248641248642_
                                                   _e241441242066_
                                                   _hd241442242069_
                                                   _tl241443242071_
                                                   _e241444242074_
                                                   _hd241445242077_
                                                   _tl241446242079_))))
                                          (___match248641248642_
                                           _e241441242066_
                                           _hd241442242069_
                                           _tl241443242071_
                                           _e241444242074_
                                           _hd241445242077_
                                           _tl241446242079_))
                                      (___match248641248642_
                                       _e241441242066_
                                       _hd241442242069_
                                       _tl241443242071_
                                       _e241444242074_
                                       _hd241445242077_
                                       _tl241446242079_))))
                              (___match248641248642_
                               _e241441242066_
                               _hd241442242069_
                               _tl241443242071_
                               _e241444242074_
                               _hd241445242077_
                               _tl241446242079_))
                          (___match248641248642_
                           _e241441242066_
                           _hd241442242069_
                           _tl241443242071_
                           _e241444242074_
                           _hd241445242077_
                           _tl241446242079_))
                      (___match248641248642_
                       _e241441242066_
                       _hd241442242069_
                       _tl241443242071_
                       _e241444242074_
                       _hd241445242077_
                       _tl241446242079_))))
              (___match248641248642_
               _e241441242066_
               _hd241442242069_
               _tl241443242071_
               _e241444242074_
               _hd241445242077_
               _tl241446242079_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match248641248642_
                                               _e241441242066_
                                               _hd241442242069_
                                               _tl241443242071_
                                               _e241444242074_
                                               _hd241445242077_
                                               _tl241446242079_))
                                          (___match248641248642_
                                           _e241441242066_
                                           _hd241442242069_
                                           _tl241443242071_
                                           _e241444242074_
                                           _hd241445242077_
                                           _tl241446242079_))))
                                  (___match248641248642_
                                   _e241441242066_
                                   _hd241442242069_
                                   _tl241443242071_
                                   _e241444242074_
                                   _hd241445242077_
                                   _tl241446242079_))
                              (___match248641248642_
                               _e241441242066_
                               _hd241442242069_
                               _tl241443242071_
                               _e241444242074_
                               _hd241445242077_
                               _tl241446242079_))
                          (___match248641248642_
                           _e241441242066_
                           _hd241442242069_
                           _tl241443242071_
                           _e241444242074_
                           _hd241445242077_
                           _tl241446242079_))))
                  (___match248641248642_
                   _e241441242066_
                   _hd241442242069_
                   _tl241443242071_
                   _e241444242074_
                   _hd241445242077_
                   _tl241446242079_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match248641248642_
                                                   _e241441242066_
                                                   _hd241442242069_
                                                   _tl241443242071_
                                                   _e241444242074_
                                                   _hd241445242077_
                                                   _tl241446242079_))
                                              (___match248641248642_
                                               _e241441242066_
                                               _hd241442242069_
                                               _tl241443242071_
                                               _e241444242074_
                                               _hd241445242077_
                                               _tl241446242079_))))
                                      (___match248641248642_
                                       _e241441242066_
                                       _hd241442242069_
                                       _tl241443242071_
                                       _e241444242074_
                                       _hd241445242077_
                                       _tl241446242079_))
                                  (___match248641248642_
                                   _e241441242066_
                                   _hd241442242069_
                                   _tl241443242071_
                                   _e241444242074_
                                   _hd241445242077_
                                   _tl241446242079_))
                              (___match248641248642_
                               _e241441242066_
                               _hd241442242069_
                               _tl241443242071_
                               _e241444242074_
                               _hd241445242077_
                               _tl241446242079_))))
                      (___match248641248642_
                       _e241441242066_
                       _hd241442242069_
                       _tl241443242071_
                       _e241444242074_
                       _hd241445242077_
                       _tl241446242079_))))
              (___match248641248642_
               _e241441242066_
               _hd241442242069_
               _tl241443242071_
               _e241444242074_
               _hd241445242077_
               _tl241446242079_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match248641248642_
                                                   _e241441242066_
                                                   _hd241442242069_
                                                   _tl241443242071_
                                                   _e241444242074_
                                                   _hd241445242077_
                                                   _tl241446242079_))))
                                          (___match248641248642_
                                           _e241441242066_
                                           _hd241442242069_
                                           _tl241443242071_
                                           _e241444242074_
                                           _hd241445242077_
                                           _tl241446242079_))
                                      (___match248641248642_
                                       _e241441242066_
                                       _hd241442242069_
                                       _tl241443242071_
                                       _e241444242074_
                                       _hd241445242077_
                                       _tl241446242079_))
                                  (___match248641248642_
                                   _e241441242066_
                                   _hd241442242069_
                                   _tl241443242071_
                                   _e241444242074_
                                   _hd241445242077_
                                   _tl241446242079_))))
                          (___match248641248642_
                           _e241441242066_
                           _hd241442242069_
                           _tl241443242071_
                           _e241444242074_
                           _hd241445242077_
                           _tl241446242079_))))
                  (___match248641248642_
                   _e241441242066_
                   _hd241442242069_
                   _tl241443242071_
                   _e241444242074_
                   _hd241445242077_
                   _tl241446242079_))
              (___match248641248642_
               _e241441242066_
               _hd241442242069_
               _tl241443242071_
               _e241444242074_
               _hd241445242077_
               _tl241446242079_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match248641248642_
                                                   _e241441242066_
                                                   _hd241442242069_
                                                   _tl241443242071_
                                                   _e241444242074_
                                                   _hd241445242077_
                                                   _tl241446242079_))))
                                          (___match248641248642_
                                           _e241441242066_
                                           _hd241442242069_
                                           _tl241443242071_
                                           _e241444242074_
                                           _hd241445242077_
                                           _tl241446242079_))))
                                  (___match248641248642_
                                   _e241441242066_
                                   _hd241442242069_
                                   _tl241443242071_
                                   _e241444242074_
                                   _hd241445242077_
                                   _tl241446242079_))))
                          (___match248775248776_
                           _e241441242066_
                           _hd241442242069_
                           _tl241443242071_)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx248456248457_))
                  (let ((_e241432242283_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx248456248457_))))
                    (let ((_tl241434242288_
                           (let ()
                             (declare (not safe))
                             (##cdr _e241432242283_)))
                          (_hd241433242286_
                           (let ()
                             (declare (not safe))
                             (##car _e241432242283_))))
                      (if (gxc#current-compile-type-closure)
                          (let ((_L242291_ _tl241434242288_))
                            (___kont248458248459_ _L242291_))
                          (___match248483248484_
                           _e241432242283_
                           _hd241433242286_
                           _tl241434242288_))))
                  (let () (declare (not safe)) (_g241429241625_))))))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_stx241378_)
        (letrec ((_clause-e241380_
                  (lambda (_form241421_)
                    (let ((__obj250129
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
                       __obj250129
                       'case-lambda-clause
                       (let ()
                         (declare (not safe))
                         (gxc#lambda-form-arity _form241421_))
                       (if (let ((__tmp250196
                                  (gxc#current-compile-type-closure)))
                             (declare (not safe))
                             (not __tmp250196))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form? _form241421_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form-delegate
                                  _form241421_))
                               '#f)
                           '#f))
                      __obj250129))))
          (let* ((_g241382241392_
                  (lambda (_g241383241389_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g241383241389_))))
                 (_g241381241418_
                  (lambda (_g241383241395_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g241383241395_))
                        (let ((_e241385241397_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g241383241395_))))
                          (let ((_hd241386241400_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e241385241397_)))
                                (_tl241387241402_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e241385241397_))))
                            ((lambda (_L241405_)
                               (let ((_clauses241416_
                                      (map _clause-e241380_ _L241405_)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#!case-lambda::t
                                  'case-lambda
                                  _clauses241416_)))
                             _tl241387241402_)))
                        (let ()
                          (declare (not safe))
                          (_g241382241392_ _g241383241395_))))))
            (declare (not safe))
            (_g241381241418_ _stx241378_)))))
    (define gxc#basic-expression-type-let-values%
      (lambda (_stx241310_)
        (let* ((_g241312241329_
                (lambda (_g241313241326_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g241313241326_))))
               (_g241311241375_
                (lambda (_g241313241332_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g241313241332_))
                      (let ((_e241316241334_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g241313241332_))))
                        (let ((_hd241317241337_
                               (let ()
                                 (declare (not safe))
                                 (##car _e241316241334_)))
                              (_tl241318241339_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e241316241334_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl241318241339_))
                              (let ((_e241319241342_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl241318241339_))))
                                (let ((_hd241320241345_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e241319241342_)))
                                      (_tl241321241347_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e241319241342_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl241321241347_))
                                      (let ((_e241322241350_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl241321241347_))))
                                        (let ((_hd241323241353_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e241322241350_)))
                                              (_tl241324241355_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e241322241350_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl241324241355_))
                                              ((lambda (_L241358_ _L241359_)
                                                 (let ((__tmp250197
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _L241358_)))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp250197
                                                    gxc#current-compile-type-closure
                                                    '#t)))
                                               _hd241323241353_
                                               _hd241320241345_)
                                              (let ()
                                                (declare (not safe))
                                                (_g241312241329_
                                                 _g241313241332_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g241312241329_ _g241313241332_)))))
                              (let ()
                                (declare (not safe))
                                (_g241312241329_ _g241313241332_)))))
                      (let ()
                        (declare (not safe))
                        (_g241312241329_ _g241313241332_))))))
          (declare (not safe))
          (_g241311241375_ _stx241310_))))
    (define gxc#basic-expression-type-builtin
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-call%
      (lambda (_stx241215_)
        (let* ((___stx248784248785_ _stx241215_)
               (_g241218241238_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx248784248785_)))))
          (let ((___kont248786248787_
                 (lambda (_L241282_ _L241283_)
                   (let ((_type-e241300241302_
                          (let ((__tmp250198
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L241283_))))
                            (declare (not safe))
                            (hash-get
                             gxc#basic-expression-type-builtin
                             __tmp250198))))
                     (if _type-e241300241302_
                         (let ((_type-e241305_ _type-e241300241302_))
                           (_type-e241305_ _stx241215_ _L241282_))
                         '#f))))
                (___kont248788248789_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx248784248785_))
                (let ((_e241222241250_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx248784248785_))))
                  (let ((_tl241224241255_
                         (let () (declare (not safe)) (##cdr _e241222241250_)))
                        (_hd241223241253_
                         (let ()
                           (declare (not safe))
                           (##car _e241222241250_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl241224241255_))
                        (let ((_e241225241258_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl241224241255_))))
                          (let ((_tl241227241263_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e241225241258_)))
                                (_hd241226241261_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e241225241258_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd241226241261_))
                                (let ((_e241228241266_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd241226241261_))))
                                  (let ((_tl241230241271_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e241228241266_)))
                                        (_hd241229241269_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e241228241266_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd241229241269_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd241229241269_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl241230241271_))
                                                (let ((_e241231241274_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl241230241271_))))
                                                  (let ((_tl241233241279_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e241231241274_)))
                                                        (_hd241232241277_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e241231241274_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl241233241279_))
                                                        (___kont248786248787_
                                                         _tl241227241263_
                                                         _hd241232241277_)
                                                        (___kont248788248789_))))
                                                (___kont248788248789_))
                                            (___kont248788248789_))
                                        (___kont248788248789_))))
                                (___kont248788248789_))))
                        (___kont248788248789_))))
                (___kont248788248789_))))))
    (define gxc#basic-expression-type-ref%
      (lambda (_stx241164_)
        (let* ((_g241166241179_
                (lambda (_g241167241176_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g241167241176_))))
               (_g241165241212_
                (lambda (_g241167241182_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g241167241182_))
                      (let ((_e241169241184_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g241167241182_))))
                        (let ((_hd241170241187_
                               (let ()
                                 (declare (not safe))
                                 (##car _e241169241184_)))
                              (_tl241171241189_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e241169241184_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl241171241189_))
                              (let ((_e241172241192_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl241171241189_))))
                                (let ((_hd241173241195_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e241172241192_)))
                                      (_tl241174241197_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e241172241192_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl241174241197_))
                                      ((lambda (_L241200_)
                                         (let ((__tmp250199
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L241200_))))
                                           (declare (not safe))
                                           (gxc#optimizer-lookup-type
                                            __tmp250199)))
                                       _hd241173241195_)
                                      (let ()
                                        (declare (not safe))
                                        (_g241166241179_ _g241167241182_)))))
                              (let ()
                                (declare (not safe))
                                (_g241166241179_ _g241167241182_)))))
                      (let ()
                        (declare (not safe))
                        (_g241166241179_ _g241167241182_))))))
          (declare (not safe))
          (_g241165241212_ _stx241164_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_form240398_)
        (let* ((___stx248822248823_ _form240398_)
               (_g240403240560_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx248822248823_)))))
          (let ((___kont248824248825_
                 (lambda (_L241084_ _L241085_ _L241086_) '#t))
                (___kont248830248831_
                 (lambda (_L240872_
                          _L240873_
                          _L240874_
                          _L240875_
                          _L240876_
                          _L240877_)
                   '#t))
                (___kont248836248837_
                 (lambda (_L240668_ _L240669_ _L240670_ _L240671_) '#t))
                (___kont248838248839_ (lambda () '#f)))
            (let* ((___match248963248964_
                    (lambda (_e240520240572_
                             _hd240521240575_
                             _tl240522240577_
                             _e240523240580_
                             _hd240524240583_
                             _tl240525240585_
                             _e240526240588_
                             _hd240527240591_
                             _tl240528240593_
                             _e240529240596_
                             _hd240530240599_
                             _tl240531240601_
                             _e240532240604_
                             _hd240533240607_
                             _tl240534240609_
                             _e240535240612_
                             _hd240536240615_
                             _tl240537240617_
                             _e240538240620_
                             _hd240539240623_
                             _tl240540240625_
                             _e240541240628_
                             _hd240542240631_
                             _tl240543240633_
                             _e240544240636_
                             _hd240545240639_
                             _tl240546240641_
                             _e240547240644_
                             _hd240548240647_
                             _tl240549240649_
                             _e240550240652_
                             _hd240551240655_
                             _tl240552240657_
                             _e240553240660_
                             _hd240554240663_
                             _tl240555240665_)
                      (let ((_L240668_ _hd240554240663_)
                            (_L240669_ _hd240545240639_)
                            (_L240670_ _hd240536240615_)
                            (_L240671_ _hd240521240575_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L240671_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L240670_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L240671_ _L240668_))
                                 (let ((__tmp250200
                                        (let ()
                                          (declare (not safe))
                                          (gx#free-identifier=?
                                           _L240669_
                                           _L240671_))))
                                   (declare (not safe))
                                   (not __tmp250200)))
                            (___kont248836248837_
                             _L240668_
                             _L240669_
                             _L240670_
                             _L240671_)
                            (___kont248838248839_)))))
                   (___match248935248936_
                    (lambda (_e240520240572_
                             _hd240521240575_
                             _tl240522240577_
                             _e240523240580_
                             _hd240524240583_
                             _tl240525240585_
                             _e240526240588_
                             _hd240527240591_
                             _tl240528240593_
                             _e240529240596_
                             _hd240530240599_
                             _tl240531240601_
                             _e240532240604_
                             _hd240533240607_
                             _tl240534240609_
                             _e240535240612_
                             _hd240536240615_
                             _tl240537240617_
                             _e240538240620_
                             _hd240539240623_
                             _tl240540240625_
                             _e240541240628_
                             _hd240542240631_
                             _tl240543240633_
                             _e240544240636_
                             _hd240545240639_
                             _tl240546240641_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl240540240625_))
                          (let ((_e240547240644_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl240540240625_))))
                            (let ((_tl240549240649_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e240547240644_)))
                                  (_hd240548240647_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e240547240644_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd240548240647_))
                                  (let ((_e240550240652_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd240548240647_))))
                                    (let ((_tl240552240657_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e240550240652_)))
                                          (_hd240551240655_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e240550240652_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd240551240655_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd240551240655_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl240552240657_))
                                                  (let ((_e240553240660_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl240552240657_))))
                                                    (let ((_tl240555240665_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e240553240660_)))
                                                          (_hd240554240663_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e240553240660_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl240555240665_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl240549240649_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl240525240585_))
                          (___match248963248964_
                           _e240520240572_
                           _hd240521240575_
                           _tl240522240577_
                           _e240523240580_
                           _hd240524240583_
                           _tl240525240585_
                           _e240526240588_
                           _hd240527240591_
                           _tl240528240593_
                           _e240529240596_
                           _hd240530240599_
                           _tl240531240601_
                           _e240532240604_
                           _hd240533240607_
                           _tl240534240609_
                           _e240535240612_
                           _hd240536240615_
                           _tl240537240617_
                           _e240538240620_
                           _hd240539240623_
                           _tl240540240625_
                           _e240541240628_
                           _hd240542240631_
                           _tl240543240633_
                           _e240544240636_
                           _hd240545240639_
                           _tl240546240641_
                           _e240547240644_
                           _hd240548240647_
                           _tl240549240649_
                           _e240550240652_
                           _hd240551240655_
                           _tl240552240657_
                           _e240553240660_
                           _hd240554240663_
                           _tl240555240665_)
                          (___kont248838248839_))
                      (___kont248838248839_))
                  (___kont248838248839_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont248838248839_))
                                              (___kont248838248839_))
                                          (___kont248838248839_))))
                                  (___kont248838248839_))))
                          (___kont248838248839_))))
                   (___match248865248866_
                    (lambda (_e240456240712_
                             _hd240457240715_
                             _tl240458240717_
                             ___splice248832248833_
                             _target240459240720_
                             _tl240461240722_)
                      (letrec ((_loop240462240725_
                                (lambda (_hd240460240728_ _arg240466240730_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd240460240728_))
                                      (let ((_e240463240733_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd240460240728_))))
                                        (let ((_lp-tl240465240738_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e240463240733_)))
                                              (_lp-hd240464240736_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e240463240733_))))
                                          (let ((__tmp250201
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd240464240736_
                                                         _arg240466240730_))))
                                            (declare (not safe))
                                            (_loop240462240725_
                                             _lp-tl240465240738_
                                             __tmp250201))))
                                      (let ((_arg240467240741_
                                             (reverse _arg240466240730_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl240458240717_))
                                            (let ((_e240468240744_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl240458240717_))))
                                              (let ((_tl240470240749_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e240468240744_)))
                                                    (_hd240469240747_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e240468240744_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd240469240747_))
                                                    (let ((_e240471240752_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd240469240747_))))
                                                      (let ((_tl240473240757_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e240471240752_)))
                    (_hd240472240755_
                     (let () (declare (not safe)) (##car _e240471240752_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd240472240755_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd240472240755_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl240473240757_))
                            (let ((_e240474240760_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl240473240757_))))
                              (let ((_tl240476240765_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e240474240760_)))
                                    (_hd240475240763_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e240474240760_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd240475240763_))
                                    (let ((_e240477240768_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd240475240763_))))
                                      (let ((_tl240479240773_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e240477240768_)))
                                            (_hd240478240771_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e240477240768_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd240478240771_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd240478240771_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl240479240773_))
                                                    (let ((_e240480240776_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl240479240773_))))
                                                      (let ((_tl240482240781_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e240480240776_)))
                    (_hd240481240779_
                     (let () (declare (not safe)) (##car _e240480240776_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl240482240781_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl240476240765_))
                        (let ((_e240483240784_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl240476240765_))))
                          (let ((_tl240485240789_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e240483240784_)))
                                (_hd240484240787_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e240483240784_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd240484240787_))
                                (let ((_e240486240792_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd240484240787_))))
                                  (let ((_tl240488240797_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e240486240792_)))
                                        (_hd240487240795_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e240486240792_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd240487240795_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd240487240795_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl240488240797_))
                                                (let ((_e240489240800_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl240488240797_))))
                                                  (let ((_tl240491240805_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e240489240800_)))
                                                        (_hd240490240803_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e240489240800_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl240491240805_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _tl240485240789_))
                                                            (if (fx>= (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#stx-length _tl240485240789_))
                              '1)
                        (let ((___splice248834248835_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl240485240789_
                                  '1))))
                          (let ((_tl240494240810_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice248834248835_ '1)))
                                (_target240492240808_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice248834248835_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl240494240810_))
                                (let ((_e240501240813_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl240494240810_))))
                                  (let ((_tl240503240818_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e240501240813_)))
                                        (_hd240502240816_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e240501240813_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd240502240816_))
                                        (let ((_e240504240821_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd240502240816_))))
                                          (let ((_tl240506240826_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e240504240821_)))
                                                (_hd240505240824_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e240504240821_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd240505240824_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd240505240824_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl240506240826_))
                                                        (let ((_e240507240829_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl240506240826_))))
                  (let ((_tl240509240834_
                         (let () (declare (not safe)) (##cdr _e240507240829_)))
                        (_hd240508240832_
                         (let ()
                           (declare (not safe))
                           (##car _e240507240829_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl240509240834_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl240503240818_))
                            (letrec ((_loop240495240837_
                                      (lambda (_hd240493240840_
                                               _xarg240499240842_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd240493240840_))
                                            (let ((_e240496240845_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd240493240840_))))
                                              (let ((_lp-tl240498240850_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e240496240845_)))
                                                    (_lp-hd240497240848_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e240496240845_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _lp-hd240497240848_))
                                                    (let ((_e240510240853_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _lp-hd240497240848_))))
                                                      (let ((_tl240512240858_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e240510240853_)))
                    (_hd240511240856_
                     (let () (declare (not safe)) (##car _e240510240853_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd240511240856_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd240511240856_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl240512240858_))
                            (let ((_e240513240861_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl240512240858_))))
                              (let ((_tl240515240866_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e240513240861_)))
                                    (_hd240514240864_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e240513240861_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl240515240866_))
                                    (let ((__tmp250202
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd240514240864_
                                                   _xarg240499240842_))))
                                      (declare (not safe))
                                      (_loop240495240837_
                                       _lp-tl240498240850_
                                       __tmp250202))
                                    (___match248935248936_
                                     _e240456240712_
                                     _hd240457240715_
                                     _tl240458240717_
                                     _e240468240744_
                                     _hd240469240747_
                                     _tl240470240749_
                                     _e240471240752_
                                     _hd240472240755_
                                     _tl240473240757_
                                     _e240474240760_
                                     _hd240475240763_
                                     _tl240476240765_
                                     _e240477240768_
                                     _hd240478240771_
                                     _tl240479240773_
                                     _e240480240776_
                                     _hd240481240779_
                                     _tl240482240781_
                                     _e240483240784_
                                     _hd240484240787_
                                     _tl240485240789_
                                     _e240486240792_
                                     _hd240487240795_
                                     _tl240488240797_
                                     _e240489240800_
                                     _hd240490240803_
                                     _tl240491240805_))))
                            (___match248935248936_
                             _e240456240712_
                             _hd240457240715_
                             _tl240458240717_
                             _e240468240744_
                             _hd240469240747_
                             _tl240470240749_
                             _e240471240752_
                             _hd240472240755_
                             _tl240473240757_
                             _e240474240760_
                             _hd240475240763_
                             _tl240476240765_
                             _e240477240768_
                             _hd240478240771_
                             _tl240479240773_
                             _e240480240776_
                             _hd240481240779_
                             _tl240482240781_
                             _e240483240784_
                             _hd240484240787_
                             _tl240485240789_
                             _e240486240792_
                             _hd240487240795_
                             _tl240488240797_
                             _e240489240800_
                             _hd240490240803_
                             _tl240491240805_))
                        (___match248935248936_
                         _e240456240712_
                         _hd240457240715_
                         _tl240458240717_
                         _e240468240744_
                         _hd240469240747_
                         _tl240470240749_
                         _e240471240752_
                         _hd240472240755_
                         _tl240473240757_
                         _e240474240760_
                         _hd240475240763_
                         _tl240476240765_
                         _e240477240768_
                         _hd240478240771_
                         _tl240479240773_
                         _e240480240776_
                         _hd240481240779_
                         _tl240482240781_
                         _e240483240784_
                         _hd240484240787_
                         _tl240485240789_
                         _e240486240792_
                         _hd240487240795_
                         _tl240488240797_
                         _e240489240800_
                         _hd240490240803_
                         _tl240491240805_))
                    (___match248935248936_
                     _e240456240712_
                     _hd240457240715_
                     _tl240458240717_
                     _e240468240744_
                     _hd240469240747_
                     _tl240470240749_
                     _e240471240752_
                     _hd240472240755_
                     _tl240473240757_
                     _e240474240760_
                     _hd240475240763_
                     _tl240476240765_
                     _e240477240768_
                     _hd240478240771_
                     _tl240479240773_
                     _e240480240776_
                     _hd240481240779_
                     _tl240482240781_
                     _e240483240784_
                     _hd240484240787_
                     _tl240485240789_
                     _e240486240792_
                     _hd240487240795_
                     _tl240488240797_
                     _e240489240800_
                     _hd240490240803_
                     _tl240491240805_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match248935248936_
                                                     _e240456240712_
                                                     _hd240457240715_
                                                     _tl240458240717_
                                                     _e240468240744_
                                                     _hd240469240747_
                                                     _tl240470240749_
                                                     _e240471240752_
                                                     _hd240472240755_
                                                     _tl240473240757_
                                                     _e240474240760_
                                                     _hd240475240763_
                                                     _tl240476240765_
                                                     _e240477240768_
                                                     _hd240478240771_
                                                     _tl240479240773_
                                                     _e240480240776_
                                                     _hd240481240779_
                                                     _tl240482240781_
                                                     _e240483240784_
                                                     _hd240484240787_
                                                     _tl240485240789_
                                                     _e240486240792_
                                                     _hd240487240795_
                                                     _tl240488240797_
                                                     _e240489240800_
                                                     _hd240490240803_
                                                     _tl240491240805_))))
                                            (let ((_xarg240500240869_
                                                   (reverse _xarg240499240842_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl240470240749_))
                                                  (let ((_L240872_
                                                         _hd240508240832_)
                                                        (_L240873_
                                                         _xarg240500240869_)
                                                        (_L240874_
                                                         _hd240490240803_)
                                                        (_L240875_
                                                         _hd240481240779_)
                                                        (_L240876_
                                                         _tl240461240722_)
                                                        (_L240877_
                                                         _arg240467240741_))
                                                    (if (and (let ((__tmp250203
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp250204
                                   (lambda (_g240920240923_ _g240921240925_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g240920240923_
                                             _g240921240925_)))))
                              (declare (not safe))
                              (foldr1 __tmp250204 '() _L240877_))))
                       (declare (not safe))
                       (gx#identifier-list? __tmp250203))
                     (let () (declare (not safe)) (gx#identifier? _L240876_))
                     (let ()
                       (declare (not safe))
                       (gxc#runtime-identifier=? _L240875_ 'apply))
                     (fx= (length (let ((__tmp250205
                                         (lambda (_g240927240930_
                                                  _g240928240932_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g240927240930_
                                                   _g240928240932_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp250205 '() _L240877_)))
                          (length (let ((__tmp250206
                                         (lambda (_g240934240937_
                                                  _g240935240939_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g240934240937_
                                                   _g240935240939_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp250206 '() _L240873_))))
                     (let ((__tmp250209
                            (let ((__tmp250210
                                   (lambda (_g240941240944_ _g240942240946_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g240941240944_
                                             _g240942240946_)))))
                              (declare (not safe))
                              (foldr1 __tmp250210 '() _L240877_)))
                           (__tmp250207
                            (let ((__tmp250208
                                   (lambda (_g240948240951_ _g240949240953_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g240948240951_
                                             _g240949240953_)))))
                              (declare (not safe))
                              (foldr1 __tmp250208 '() _L240873_))))
                       (declare (not safe))
                       (andmap2 gx#free-identifier=? __tmp250209 __tmp250207))
                     (let ()
                       (declare (not safe))
                       (gx#free-identifier=? _L240876_ _L240872_))
                     (let ((__tmp250211
                            (let ((__tmp250215
                                   (lambda (_g240955240957_)
                                     (let ()
                                       (declare (not safe))
                                       (gx#free-identifier=?
                                        _g240955240957_
                                        _L240874_))))
                                  (__tmp250212
                                   (let ((__tmp250214
                                          (lambda (_g240959240962_
                                                   _g240960240964_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g240959240962_
                                                    _g240960240964_))))
                                         (__tmp250213
                                          (let ()
                                            (declare (not safe))
                                            (cons _L240876_ '()))))
                                     (declare (not safe))
                                     (foldr1 __tmp250214
                                             __tmp250213
                                             _L240877_))))
                              (declare (not safe))
                              (find __tmp250215 __tmp250212))))
                       (declare (not safe))
                       (not __tmp250211)))
                (___kont248830248831_
                 _L240872_
                 _L240873_
                 _L240874_
                 _L240875_
                 _L240876_
                 _L240877_)
                (___match248935248936_
                 _e240456240712_
                 _hd240457240715_
                 _tl240458240717_
                 _e240468240744_
                 _hd240469240747_
                 _tl240470240749_
                 _e240471240752_
                 _hd240472240755_
                 _tl240473240757_
                 _e240474240760_
                 _hd240475240763_
                 _tl240476240765_
                 _e240477240768_
                 _hd240478240771_
                 _tl240479240773_
                 _e240480240776_
                 _hd240481240779_
                 _tl240482240781_
                 _e240483240784_
                 _hd240484240787_
                 _tl240485240789_
                 _e240486240792_
                 _hd240487240795_
                 _tl240488240797_
                 _e240489240800_
                 _hd240490240803_
                 _tl240491240805_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match248935248936_
                                                   _e240456240712_
                                                   _hd240457240715_
                                                   _tl240458240717_
                                                   _e240468240744_
                                                   _hd240469240747_
                                                   _tl240470240749_
                                                   _e240471240752_
                                                   _hd240472240755_
                                                   _tl240473240757_
                                                   _e240474240760_
                                                   _hd240475240763_
                                                   _tl240476240765_
                                                   _e240477240768_
                                                   _hd240478240771_
                                                   _tl240479240773_
                                                   _e240480240776_
                                                   _hd240481240779_
                                                   _tl240482240781_
                                                   _e240483240784_
                                                   _hd240484240787_
                                                   _tl240485240789_
                                                   _e240486240792_
                                                   _hd240487240795_
                                                   _tl240488240797_
                                                   _e240489240800_
                                                   _hd240490240803_
                                                   _tl240491240805_)))))))
                              (let ()
                                (declare (not safe))
                                (_loop240495240837_ _target240492240808_ '())))
                            (___match248935248936_
                             _e240456240712_
                             _hd240457240715_
                             _tl240458240717_
                             _e240468240744_
                             _hd240469240747_
                             _tl240470240749_
                             _e240471240752_
                             _hd240472240755_
                             _tl240473240757_
                             _e240474240760_
                             _hd240475240763_
                             _tl240476240765_
                             _e240477240768_
                             _hd240478240771_
                             _tl240479240773_
                             _e240480240776_
                             _hd240481240779_
                             _tl240482240781_
                             _e240483240784_
                             _hd240484240787_
                             _tl240485240789_
                             _e240486240792_
                             _hd240487240795_
                             _tl240488240797_
                             _e240489240800_
                             _hd240490240803_
                             _tl240491240805_))
                        (___match248935248936_
                         _e240456240712_
                         _hd240457240715_
                         _tl240458240717_
                         _e240468240744_
                         _hd240469240747_
                         _tl240470240749_
                         _e240471240752_
                         _hd240472240755_
                         _tl240473240757_
                         _e240474240760_
                         _hd240475240763_
                         _tl240476240765_
                         _e240477240768_
                         _hd240478240771_
                         _tl240479240773_
                         _e240480240776_
                         _hd240481240779_
                         _tl240482240781_
                         _e240483240784_
                         _hd240484240787_
                         _tl240485240789_
                         _e240486240792_
                         _hd240487240795_
                         _tl240488240797_
                         _e240489240800_
                         _hd240490240803_
                         _tl240491240805_))))
                (___match248935248936_
                 _e240456240712_
                 _hd240457240715_
                 _tl240458240717_
                 _e240468240744_
                 _hd240469240747_
                 _tl240470240749_
                 _e240471240752_
                 _hd240472240755_
                 _tl240473240757_
                 _e240474240760_
                 _hd240475240763_
                 _tl240476240765_
                 _e240477240768_
                 _hd240478240771_
                 _tl240479240773_
                 _e240480240776_
                 _hd240481240779_
                 _tl240482240781_
                 _e240483240784_
                 _hd240484240787_
                 _tl240485240789_
                 _e240486240792_
                 _hd240487240795_
                 _tl240488240797_
                 _e240489240800_
                 _hd240490240803_
                 _tl240491240805_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match248935248936_
                                                     _e240456240712_
                                                     _hd240457240715_
                                                     _tl240458240717_
                                                     _e240468240744_
                                                     _hd240469240747_
                                                     _tl240470240749_
                                                     _e240471240752_
                                                     _hd240472240755_
                                                     _tl240473240757_
                                                     _e240474240760_
                                                     _hd240475240763_
                                                     _tl240476240765_
                                                     _e240477240768_
                                                     _hd240478240771_
                                                     _tl240479240773_
                                                     _e240480240776_
                                                     _hd240481240779_
                                                     _tl240482240781_
                                                     _e240483240784_
                                                     _hd240484240787_
                                                     _tl240485240789_
                                                     _e240486240792_
                                                     _hd240487240795_
                                                     _tl240488240797_
                                                     _e240489240800_
                                                     _hd240490240803_
                                                     _tl240491240805_))
                                                (___match248935248936_
                                                 _e240456240712_
                                                 _hd240457240715_
                                                 _tl240458240717_
                                                 _e240468240744_
                                                 _hd240469240747_
                                                 _tl240470240749_
                                                 _e240471240752_
                                                 _hd240472240755_
                                                 _tl240473240757_
                                                 _e240474240760_
                                                 _hd240475240763_
                                                 _tl240476240765_
                                                 _e240477240768_
                                                 _hd240478240771_
                                                 _tl240479240773_
                                                 _e240480240776_
                                                 _hd240481240779_
                                                 _tl240482240781_
                                                 _e240483240784_
                                                 _hd240484240787_
                                                 _tl240485240789_
                                                 _e240486240792_
                                                 _hd240487240795_
                                                 _tl240488240797_
                                                 _e240489240800_
                                                 _hd240490240803_
                                                 _tl240491240805_))))
                                        (___match248935248936_
                                         _e240456240712_
                                         _hd240457240715_
                                         _tl240458240717_
                                         _e240468240744_
                                         _hd240469240747_
                                         _tl240470240749_
                                         _e240471240752_
                                         _hd240472240755_
                                         _tl240473240757_
                                         _e240474240760_
                                         _hd240475240763_
                                         _tl240476240765_
                                         _e240477240768_
                                         _hd240478240771_
                                         _tl240479240773_
                                         _e240480240776_
                                         _hd240481240779_
                                         _tl240482240781_
                                         _e240483240784_
                                         _hd240484240787_
                                         _tl240485240789_
                                         _e240486240792_
                                         _hd240487240795_
                                         _tl240488240797_
                                         _e240489240800_
                                         _hd240490240803_
                                         _tl240491240805_))))
                                (___match248935248936_
                                 _e240456240712_
                                 _hd240457240715_
                                 _tl240458240717_
                                 _e240468240744_
                                 _hd240469240747_
                                 _tl240470240749_
                                 _e240471240752_
                                 _hd240472240755_
                                 _tl240473240757_
                                 _e240474240760_
                                 _hd240475240763_
                                 _tl240476240765_
                                 _e240477240768_
                                 _hd240478240771_
                                 _tl240479240773_
                                 _e240480240776_
                                 _hd240481240779_
                                 _tl240482240781_
                                 _e240483240784_
                                 _hd240484240787_
                                 _tl240485240789_
                                 _e240486240792_
                                 _hd240487240795_
                                 _tl240488240797_
                                 _e240489240800_
                                 _hd240490240803_
                                 _tl240491240805_))))
                        (___match248935248936_
                         _e240456240712_
                         _hd240457240715_
                         _tl240458240717_
                         _e240468240744_
                         _hd240469240747_
                         _tl240470240749_
                         _e240471240752_
                         _hd240472240755_
                         _tl240473240757_
                         _e240474240760_
                         _hd240475240763_
                         _tl240476240765_
                         _e240477240768_
                         _hd240478240771_
                         _tl240479240773_
                         _e240480240776_
                         _hd240481240779_
                         _tl240482240781_
                         _e240483240784_
                         _hd240484240787_
                         _tl240485240789_
                         _e240486240792_
                         _hd240487240795_
                         _tl240488240797_
                         _e240489240800_
                         _hd240490240803_
                         _tl240491240805_))
                    (___match248935248936_
                     _e240456240712_
                     _hd240457240715_
                     _tl240458240717_
                     _e240468240744_
                     _hd240469240747_
                     _tl240470240749_
                     _e240471240752_
                     _hd240472240755_
                     _tl240473240757_
                     _e240474240760_
                     _hd240475240763_
                     _tl240476240765_
                     _e240477240768_
                     _hd240478240771_
                     _tl240479240773_
                     _e240480240776_
                     _hd240481240779_
                     _tl240482240781_
                     _e240483240784_
                     _hd240484240787_
                     _tl240485240789_
                     _e240486240792_
                     _hd240487240795_
                     _tl240488240797_
                     _e240489240800_
                     _hd240490240803_
                     _tl240491240805_))
                (___kont248838248839_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont248838248839_))
                                            (___kont248838248839_))
                                        (___kont248838248839_))))
                                (___kont248838248839_))))
                        (___kont248838248839_))
                    (___kont248838248839_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont248838248839_))
                                                (___kont248838248839_))
                                            (___kont248838248839_))))
                                    (___kont248838248839_))))
                            (___kont248838248839_))
                        (___kont248838248839_))
                    (___kont248838248839_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont248838248839_))))
                                            (___kont248838248839_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop240462240725_ _target240459240720_ '())))))
                   (___match248853248854_
                    (lambda (_e240408240972_
                             _hd240409240975_
                             _tl240410240977_
                             ___splice248826248827_
                             _target240411240980_
                             _tl240413240982_)
                      (letrec ((_loop240414240985_
                                (lambda (_hd240412240988_ _arg240418240990_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd240412240988_))
                                      (let ((_e240415240993_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd240412240988_))))
                                        (let ((_lp-tl240417240998_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e240415240993_)))
                                              (_lp-hd240416240996_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e240415240993_))))
                                          (let ((__tmp250216
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd240416240996_
                                                         _arg240418240990_))))
                                            (declare (not safe))
                                            (_loop240414240985_
                                             _lp-tl240417240998_
                                             __tmp250216))))
                                      (let ((_arg240419241001_
                                             (reverse _arg240418240990_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl240410240977_))
                                            (let ((_e240420241004_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl240410240977_))))
                                              (let ((_tl240422241009_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e240420241004_)))
                                                    (_hd240421241007_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e240420241004_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd240421241007_))
                                                    (let ((_e240423241012_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd240421241007_))))
                                                      (let ((_tl240425241017_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e240423241012_)))
                    (_hd240424241015_
                     (let () (declare (not safe)) (##car _e240423241012_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd240424241015_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd240424241015_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl240425241017_))
                            (let ((_e240426241020_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl240425241017_))))
                              (let ((_tl240428241025_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e240426241020_)))
                                    (_hd240427241023_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e240426241020_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd240427241023_))
                                    (let ((_e240429241028_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd240427241023_))))
                                      (let ((_tl240431241033_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e240429241028_)))
                                            (_hd240430241031_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e240429241028_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd240430241031_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd240430241031_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl240431241033_))
                                                    (let ((_e240432241036_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl240431241033_))))
                                                      (let ((_tl240434241041_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e240432241036_)))
                    (_hd240433241039_
                     (let () (declare (not safe)) (##car _e240432241036_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl240434241041_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl240428241025_))
                        (let ((___splice248828248829_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl240428241025_
                                  '0))))
                          (let ((_tl240437241046_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice248828248829_ '1)))
                                (_target240435241044_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice248828248829_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl240437241046_))
                                (letrec ((_loop240438241049_
                                          (lambda (_hd240436241052_
                                                   _xarg240442241054_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd240436241052_))
                                                (let ((_e240439241057_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd240436241052_))))
                                                  (let ((_lp-tl240441241062_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e240439241057_)))
                                                        (_lp-hd240440241060_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e240439241057_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd240440241060_))
                                                        (let ((_e240444241065_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd240440241060_))))
                  (let ((_tl240446241070_
                         (let () (declare (not safe)) (##cdr _e240444241065_)))
                        (_hd240445241068_
                         (let ()
                           (declare (not safe))
                           (##car _e240444241065_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd240445241068_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd240445241068_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl240446241070_))
                                (let ((_e240447241073_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl240446241070_))))
                                  (let ((_tl240449241078_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e240447241073_)))
                                        (_hd240448241076_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e240447241073_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl240449241078_))
                                        (let ((__tmp250217
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd240448241076_
                                                       _xarg240442241054_))))
                                          (declare (not safe))
                                          (_loop240438241049_
                                           _lp-tl240441241062_
                                           __tmp250217))
                                        (___match248865248866_
                                         _e240408240972_
                                         _hd240409240975_
                                         _tl240410240977_
                                         ___splice248826248827_
                                         _target240411240980_
                                         _tl240413240982_))))
                                (___match248865248866_
                                 _e240408240972_
                                 _hd240409240975_
                                 _tl240410240977_
                                 ___splice248826248827_
                                 _target240411240980_
                                 _tl240413240982_))
                            (___match248865248866_
                             _e240408240972_
                             _hd240409240975_
                             _tl240410240977_
                             ___splice248826248827_
                             _target240411240980_
                             _tl240413240982_))
                        (___match248865248866_
                         _e240408240972_
                         _hd240409240975_
                         _tl240410240977_
                         ___splice248826248827_
                         _target240411240980_
                         _tl240413240982_))))
                (___match248865248866_
                 _e240408240972_
                 _hd240409240975_
                 _tl240410240977_
                 ___splice248826248827_
                 _target240411240980_
                 _tl240413240982_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg240443241081_
                                                       (reverse _xarg240442241054_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl240422241009_))
                                                      (let ((_L241084_
                                                             _xarg240443241081_)
                                                            (_L241085_
                                                             _hd240433241039_)
                                                            (_L241086_
                                                             _arg240419241001_))
                                                        (if (and (let ((__tmp250218
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp250219
                                       (lambda (_g241114241117_
                                                _g241115241119_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g241114241117_
                                                 _g241115241119_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp250219 '() _L241086_))))
                           (declare (not safe))
                           (gx#identifier-list? __tmp250218))
                         (fx= (length (let ((__tmp250220
                                             (lambda (_g241121241124_
                                                      _g241122241126_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g241121241124_
                                                       _g241122241126_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp250220 '() _L241086_)))
                              (length (let ((__tmp250221
                                             (lambda (_g241128241131_
                                                      _g241129241133_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g241128241131_
                                                       _g241129241133_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp250221 '() _L241084_))))
                         (let ((__tmp250224
                                (let ((__tmp250225
                                       (lambda (_g241135241138_
                                                _g241136241140_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g241135241138_
                                                 _g241136241140_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp250225 '() _L241086_)))
                               (__tmp250222
                                (let ((__tmp250223
                                       (lambda (_g241142241145_
                                                _g241143241147_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g241142241145_
                                                 _g241143241147_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp250223 '() _L241084_))))
                           (declare (not safe))
                           (andmap2 gx#free-identifier=?
                                    __tmp250224
                                    __tmp250222))
                         (let ((__tmp250226
                                (let ((__tmp250229
                                       (lambda (_g241149241151_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _g241149241151_
                                            _L241085_))))
                                      (__tmp250227
                                       (let ((__tmp250228
                                              (lambda (_g241153241156_
                                                       _g241154241158_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g241153241156_
                                                        _g241154241158_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp250228 '() _L241086_))))
                                  (declare (not safe))
                                  (find __tmp250229 __tmp250227))))
                           (declare (not safe))
                           (not __tmp250226)))
                    (___kont248824248825_ _L241084_ _L241085_ _L241086_)
                    (___match248865248866_
                     _e240408240972_
                     _hd240409240975_
                     _tl240410240977_
                     ___splice248826248827_
                     _target240411240980_
                     _tl240413240982_)))
              (___match248865248866_
               _e240408240972_
               _hd240409240975_
               _tl240410240977_
               ___splice248826248827_
               _target240411240980_
               _tl240413240982_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (let ()
                                    (declare (not safe))
                                    (_loop240438241049_
                                     _target240435241044_
                                     '())))
                                (___match248865248866_
                                 _e240408240972_
                                 _hd240409240975_
                                 _tl240410240977_
                                 ___splice248826248827_
                                 _target240411240980_
                                 _tl240413240982_))))
                        (___match248865248866_
                         _e240408240972_
                         _hd240409240975_
                         _tl240410240977_
                         ___splice248826248827_
                         _target240411240980_
                         _tl240413240982_))
                    (___match248865248866_
                     _e240408240972_
                     _hd240409240975_
                     _tl240410240977_
                     ___splice248826248827_
                     _target240411240980_
                     _tl240413240982_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match248865248866_
                                                     _e240408240972_
                                                     _hd240409240975_
                                                     _tl240410240977_
                                                     ___splice248826248827_
                                                     _target240411240980_
                                                     _tl240413240982_))
                                                (___match248865248866_
                                                 _e240408240972_
                                                 _hd240409240975_
                                                 _tl240410240977_
                                                 ___splice248826248827_
                                                 _target240411240980_
                                                 _tl240413240982_))
                                            (___match248865248866_
                                             _e240408240972_
                                             _hd240409240975_
                                             _tl240410240977_
                                             ___splice248826248827_
                                             _target240411240980_
                                             _tl240413240982_))))
                                    (___match248865248866_
                                     _e240408240972_
                                     _hd240409240975_
                                     _tl240410240977_
                                     ___splice248826248827_
                                     _target240411240980_
                                     _tl240413240982_))))
                            (___match248865248866_
                             _e240408240972_
                             _hd240409240975_
                             _tl240410240977_
                             ___splice248826248827_
                             _target240411240980_
                             _tl240413240982_))
                        (___match248865248866_
                         _e240408240972_
                         _hd240409240975_
                         _tl240410240977_
                         ___splice248826248827_
                         _target240411240980_
                         _tl240413240982_))
                    (___match248865248866_
                     _e240408240972_
                     _hd240409240975_
                     _tl240410240977_
                     ___splice248826248827_
                     _target240411240980_
                     _tl240413240982_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match248865248866_
                                                     _e240408240972_
                                                     _hd240409240975_
                                                     _tl240410240977_
                                                     ___splice248826248827_
                                                     _target240411240980_
                                                     _tl240413240982_))))
                                            (___match248865248866_
                                             _e240408240972_
                                             _hd240409240975_
                                             _tl240410240977_
                                             ___splice248826248827_
                                             _target240411240980_
                                             _tl240413240982_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop240414240985_ _target240411240980_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx248822248823_))
                  (let ((_e240408240972_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx248822248823_))))
                    (let ((_tl240410240977_
                           (let ()
                             (declare (not safe))
                             (##cdr _e240408240972_)))
                          (_hd240409240975_
                           (let ()
                             (declare (not safe))
                             (##car _e240408240972_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd240409240975_))
                          (let ((___splice248826248827_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd240409240975_
                                    '0))))
                            (let ((_tl240413240982_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice248826248827_ '1)))
                                  (_target240411240980_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice248826248827_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl240413240982_))
                                  (___match248853248854_
                                   _e240408240972_
                                   _hd240409240975_
                                   _tl240410240977_
                                   ___splice248826248827_
                                   _target240411240980_
                                   _tl240413240982_)
                                  (___match248865248866_
                                   _e240408240972_
                                   _hd240409240975_
                                   _tl240410240977_
                                   ___splice248826248827_
                                   _target240411240980_
                                   _tl240413240982_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl240410240977_))
                              (let ((_e240523240580_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl240410240977_))))
                                (let ((_tl240525240585_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e240523240580_)))
                                      (_hd240524240583_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e240523240580_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd240524240583_))
                                      (let ((_e240526240588_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd240524240583_))))
                                        (let ((_tl240528240593_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e240526240588_)))
                                              (_hd240527240591_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e240526240588_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd240527240591_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd240527240591_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl240528240593_))
                                                      (let ((_e240529240596_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl240528240593_))))
                (let ((_tl240531240601_
                       (let () (declare (not safe)) (##cdr _e240529240596_)))
                      (_hd240530240599_
                       (let () (declare (not safe)) (##car _e240529240596_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd240530240599_))
                      (let ((_e240532240604_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd240530240599_))))
                        (let ((_tl240534240609_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e240532240604_)))
                              (_hd240533240607_
                               (let ()
                                 (declare (not safe))
                                 (##car _e240532240604_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd240533240607_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd240533240607_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl240534240609_))
                                      (let ((_e240535240612_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl240534240609_))))
                                        (let ((_tl240537240617_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e240535240612_)))
                                              (_hd240536240615_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e240535240612_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl240537240617_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl240531240601_))
                                                  (let ((_e240538240620_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl240531240601_))))
                                                    (let ((_tl240540240625_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e240538240620_)))
                                                          (_hd240539240623_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e240538240620_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd240539240623_))
                                                          (let ((_e240541240628_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd240539240623_))))
                    (let ((_tl240543240633_
                           (let ()
                             (declare (not safe))
                             (##cdr _e240541240628_)))
                          (_hd240542240631_
                           (let ()
                             (declare (not safe))
                             (##car _e240541240628_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd240542240631_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd240542240631_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl240543240633_))
                                  (let ((_e240544240636_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl240543240633_))))
                                    (let ((_tl240546240641_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e240544240636_)))
                                          (_hd240545240639_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e240544240636_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl240546240641_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl240540240625_))
                                              (let ((_e240547240644_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl240540240625_))))
                                                (let ((_tl240549240649_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e240547240644_)))
                                                      (_hd240548240647_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e240547240644_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd240548240647_))
                                                      (let ((_e240550240652_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd240548240647_))))
                (let ((_tl240552240657_
                       (let () (declare (not safe)) (##cdr _e240550240652_)))
                      (_hd240551240655_
                       (let () (declare (not safe)) (##car _e240550240652_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd240551240655_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd240551240655_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl240552240657_))
                              (let ((_e240553240660_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl240552240657_))))
                                (let ((_tl240555240665_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e240553240660_)))
                                      (_hd240554240663_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e240553240660_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl240555240665_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl240549240649_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl240525240585_))
                                              (___match248963248964_
                                               _e240408240972_
                                               _hd240409240975_
                                               _tl240410240977_
                                               _e240523240580_
                                               _hd240524240583_
                                               _tl240525240585_
                                               _e240526240588_
                                               _hd240527240591_
                                               _tl240528240593_
                                               _e240529240596_
                                               _hd240530240599_
                                               _tl240531240601_
                                               _e240532240604_
                                               _hd240533240607_
                                               _tl240534240609_
                                               _e240535240612_
                                               _hd240536240615_
                                               _tl240537240617_
                                               _e240538240620_
                                               _hd240539240623_
                                               _tl240540240625_
                                               _e240541240628_
                                               _hd240542240631_
                                               _tl240543240633_
                                               _e240544240636_
                                               _hd240545240639_
                                               _tl240546240641_
                                               _e240547240644_
                                               _hd240548240647_
                                               _tl240549240649_
                                               _e240550240652_
                                               _hd240551240655_
                                               _tl240552240657_
                                               _e240553240660_
                                               _hd240554240663_
                                               _tl240555240665_)
                                              (___kont248838248839_))
                                          (___kont248838248839_))
                                      (___kont248838248839_))))
                              (___kont248838248839_))
                          (___kont248838248839_))
                      (___kont248838248839_))))
              (___kont248838248839_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont248838248839_))
                                          (___kont248838248839_))))
                                  (___kont248838248839_))
                              (___kont248838248839_))
                          (___kont248838248839_))))
                  (___kont248838248839_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont248838248839_))
                                              (___kont248838248839_))))
                                      (___kont248838248839_))
                                  (___kont248838248839_))
                              (___kont248838248839_))))
                      (___kont248838248839_))))
              (___kont248838248839_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont248838248839_))
                                              (___kont248838248839_))))
                                      (___kont248838248839_))))
                              (___kont248838248839_)))))
                  (___kont248838248839_)))))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_form239866_)
        (let* ((___stx248966248967_ _form239866_)
               (_g239870239994_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx248966248967_)))))
          (let ((___kont248968248969_
                 (lambda (_L240364_ _L240365_ _L240366_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L240365_))))
                (___kont248974248975_
                 (lambda (_L240212_ _L240213_ _L240214_ _L240215_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L240212_))))
                (___kont248978248979_
                 (lambda (_L240079_ _L240080_ _L240081_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L240079_)))))
            (let* ((___match249075249076_
                    (lambda (_e239960239999_
                             _hd239961240002_
                             _tl239962240004_
                             _e239963240007_
                             _hd239964240010_
                             _tl239965240012_
                             _e239966240015_
                             _hd239967240018_
                             _tl239968240020_
                             _e239969240023_
                             _hd239970240026_
                             _tl239971240028_
                             _e239972240031_
                             _hd239973240034_
                             _tl239974240036_
                             _e239975240039_
                             _hd239976240042_
                             _tl239977240044_
                             _e239978240047_
                             _hd239979240050_
                             _tl239980240052_
                             _e239981240055_
                             _hd239982240058_
                             _tl239983240060_
                             _e239984240063_
                             _hd239985240066_
                             _tl239986240068_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl239980240052_))
                          (let ((_e239987240071_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl239980240052_))))
                            (let ((_tl239989240076_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e239987240071_)))
                                  (_hd239988240074_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e239987240071_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl239989240076_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl239965240012_))
                                      (___kont248978248979_
                                       _hd239985240066_
                                       _hd239976240042_
                                       _hd239961240002_)
                                      (let ()
                                        (declare (not safe))
                                        (_g239870239994_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g239870239994_)))))
                          (let () (declare (not safe)) (_g239870239994_)))))
                   (___match249005249006_
                    (lambda (_e239921240116_
                             _hd239922240119_
                             _tl239923240121_
                             ___splice248976248977_
                             _target239924240124_
                             _tl239926240126_)
                      (letrec ((_loop239927240129_
                                (lambda (_hd239925240132_ _arg239931240134_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd239925240132_))
                                      (let ((_e239928240137_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd239925240132_))))
                                        (let ((_lp-tl239930240142_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e239928240137_)))
                                              (_lp-hd239929240140_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e239928240137_))))
                                          (let ((__tmp250230
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd239929240140_
                                                         _arg239931240134_))))
                                            (declare (not safe))
                                            (_loop239927240129_
                                             _lp-tl239930240142_
                                             __tmp250230))))
                                      (let ((_arg239932240145_
                                             (reverse _arg239931240134_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl239923240121_))
                                            (let ((_e239933240148_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl239923240121_))))
                                              (let ((_tl239935240153_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e239933240148_)))
                                                    (_hd239934240151_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e239933240148_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd239934240151_))
                                                    (let ((_e239936240156_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd239934240151_))))
                                                      (let ((_tl239938240161_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e239936240156_)))
                    (_hd239937240159_
                     (let () (declare (not safe)) (##car _e239936240156_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd239937240159_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd239937240159_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl239938240161_))
                            (let ((_e239939240164_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl239938240161_))))
                              (let ((_tl239941240169_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e239939240164_)))
                                    (_hd239940240167_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e239939240164_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd239940240167_))
                                    (let ((_e239942240172_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd239940240167_))))
                                      (let ((_tl239944240177_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e239942240172_)))
                                            (_hd239943240175_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e239942240172_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd239943240175_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd239943240175_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl239944240177_))
                                                    (let ((_e239945240180_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl239944240177_))))
                                                      (let ((_tl239947240185_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e239945240180_)))
                    (_hd239946240183_
                     (let () (declare (not safe)) (##car _e239945240180_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl239947240185_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl239941240169_))
                        (let ((_e239948240188_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl239941240169_))))
                          (let ((_tl239950240193_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e239948240188_)))
                                (_hd239949240191_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e239948240188_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd239949240191_))
                                (let ((_e239951240196_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd239949240191_))))
                                  (let ((_tl239953240201_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e239951240196_)))
                                        (_hd239952240199_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e239951240196_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd239952240199_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd239952240199_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl239953240201_))
                                                (let ((_e239954240204_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl239953240201_))))
                                                  (let ((_tl239956240209_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e239954240204_)))
                                                        (_hd239955240207_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e239954240204_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl239956240209_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl239935240153_))
                                                            (___kont248974248975_
                                                             _hd239955240207_
                                                             _hd239946240183_
                                                             _tl239926240126_
                                                             _arg239932240145_)
                                                            (___match249075249076_
                                                             _e239921240116_
                                                             _hd239922240119_
                                                             _tl239923240121_
                                                             _e239933240148_
                                                             _hd239934240151_
                                                             _tl239935240153_
                                                             _e239936240156_
                                                             _hd239937240159_
                                                             _tl239938240161_
                                                             _e239939240164_
                                                             _hd239940240167_
                                                             _tl239941240169_
                                                             _e239942240172_
                                                             _hd239943240175_
                                                             _tl239944240177_
                                                             _e239945240180_
                                                             _hd239946240183_
                                                             _tl239947240185_
                                                             _e239948240188_
                                                             _hd239949240191_
                                                             _tl239950240193_
                                                             _e239951240196_
                                                             _hd239952240199_
                                                             _tl239953240201_
                                                             _e239954240204_
                                                             _hd239955240207_
                                                             _tl239956240209_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g239870239994_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g239870239994_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g239870239994_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g239870239994_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g239870239994_)))))
                        (let () (declare (not safe)) (_g239870239994_)))
                    (let () (declare (not safe)) (_g239870239994_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g239870239994_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g239870239994_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g239870239994_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g239870239994_)))))
                            (let () (declare (not safe)) (_g239870239994_)))
                        (let () (declare (not safe)) (_g239870239994_)))
                    (let () (declare (not safe)) (_g239870239994_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g239870239994_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g239870239994_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop239927240129_ _target239924240124_ '())))))
                   (___match248993248994_
                    (lambda (_e239875240252_
                             _hd239876240255_
                             _tl239877240257_
                             ___splice248970248971_
                             _target239878240260_
                             _tl239880240262_)
                      (letrec ((_loop239881240265_
                                (lambda (_hd239879240268_ _arg239885240270_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd239879240268_))
                                      (let ((_e239882240273_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd239879240268_))))
                                        (let ((_lp-tl239884240278_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e239882240273_)))
                                              (_lp-hd239883240276_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e239882240273_))))
                                          (let ((__tmp250231
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd239883240276_
                                                         _arg239885240270_))))
                                            (declare (not safe))
                                            (_loop239881240265_
                                             _lp-tl239884240278_
                                             __tmp250231))))
                                      (let ((_arg239886240281_
                                             (reverse _arg239885240270_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl239877240257_))
                                            (let ((_e239887240284_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl239877240257_))))
                                              (let ((_tl239889240289_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e239887240284_)))
                                                    (_hd239888240287_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e239887240284_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd239888240287_))
                                                    (let ((_e239890240292_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd239888240287_))))
                                                      (let ((_tl239892240297_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e239890240292_)))
                    (_hd239891240295_
                     (let () (declare (not safe)) (##car _e239890240292_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd239891240295_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd239891240295_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl239892240297_))
                            (let ((_e239893240300_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl239892240297_))))
                              (let ((_tl239895240305_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e239893240300_)))
                                    (_hd239894240303_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e239893240300_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd239894240303_))
                                    (let ((_e239896240308_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd239894240303_))))
                                      (let ((_tl239898240313_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e239896240308_)))
                                            (_hd239897240311_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e239896240308_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd239897240311_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd239897240311_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl239898240313_))
                                                    (let ((_e239899240316_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl239898240313_))))
                                                      (let ((_tl239901240321_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e239899240316_)))
                    (_hd239900240319_
                     (let () (declare (not safe)) (##car _e239899240316_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl239901240321_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl239895240305_))
                        (let ((___splice248972248973_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl239895240305_
                                  '0))))
                          (let ((_tl239904240326_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice248972248973_ '1)))
                                (_target239902240324_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice248972248973_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl239904240326_))
                                (letrec ((_loop239905240329_
                                          (lambda (_hd239903240332_
                                                   _xarg239909240334_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd239903240332_))
                                                (let ((_e239906240337_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd239903240332_))))
                                                  (let ((_lp-tl239908240342_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e239906240337_)))
                                                        (_lp-hd239907240340_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e239906240337_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd239907240340_))
                                                        (let ((_e239911240345_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd239907240340_))))
                  (let ((_tl239913240350_
                         (let () (declare (not safe)) (##cdr _e239911240345_)))
                        (_hd239912240348_
                         (let ()
                           (declare (not safe))
                           (##car _e239911240345_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd239912240348_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd239912240348_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl239913240350_))
                                (let ((_e239914240353_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl239913240350_))))
                                  (let ((_tl239916240358_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e239914240353_)))
                                        (_hd239915240356_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e239914240353_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl239916240358_))
                                        (let ((__tmp250232
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd239915240356_
                                                       _xarg239909240334_))))
                                          (declare (not safe))
                                          (_loop239905240329_
                                           _lp-tl239908240342_
                                           __tmp250232))
                                        (___match249005249006_
                                         _e239875240252_
                                         _hd239876240255_
                                         _tl239877240257_
                                         ___splice248970248971_
                                         _target239878240260_
                                         _tl239880240262_))))
                                (___match249005249006_
                                 _e239875240252_
                                 _hd239876240255_
                                 _tl239877240257_
                                 ___splice248970248971_
                                 _target239878240260_
                                 _tl239880240262_))
                            (___match249005249006_
                             _e239875240252_
                             _hd239876240255_
                             _tl239877240257_
                             ___splice248970248971_
                             _target239878240260_
                             _tl239880240262_))
                        (___match249005249006_
                         _e239875240252_
                         _hd239876240255_
                         _tl239877240257_
                         ___splice248970248971_
                         _target239878240260_
                         _tl239880240262_))))
                (___match249005249006_
                 _e239875240252_
                 _hd239876240255_
                 _tl239877240257_
                 ___splice248970248971_
                 _target239878240260_
                 _tl239880240262_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg239910240361_
                                                       (reverse _xarg239909240334_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl239889240289_))
                                                      (___kont248968248969_
                                                       _xarg239910240361_
                                                       _hd239900240319_
                                                       _arg239886240281_)
                                                      (___match249005249006_
                                                       _e239875240252_
                                                       _hd239876240255_
                                                       _tl239877240257_
                                                       ___splice248970248971_
                                                       _target239878240260_
                                                       _tl239880240262_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_loop239905240329_
                                     _target239902240324_
                                     '())))
                                (___match249005249006_
                                 _e239875240252_
                                 _hd239876240255_
                                 _tl239877240257_
                                 ___splice248970248971_
                                 _target239878240260_
                                 _tl239880240262_))))
                        (___match249005249006_
                         _e239875240252_
                         _hd239876240255_
                         _tl239877240257_
                         ___splice248970248971_
                         _target239878240260_
                         _tl239880240262_))
                    (___match249005249006_
                     _e239875240252_
                     _hd239876240255_
                     _tl239877240257_
                     ___splice248970248971_
                     _target239878240260_
                     _tl239880240262_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match249005249006_
                                                     _e239875240252_
                                                     _hd239876240255_
                                                     _tl239877240257_
                                                     ___splice248970248971_
                                                     _target239878240260_
                                                     _tl239880240262_))
                                                (___match249005249006_
                                                 _e239875240252_
                                                 _hd239876240255_
                                                 _tl239877240257_
                                                 ___splice248970248971_
                                                 _target239878240260_
                                                 _tl239880240262_))
                                            (___match249005249006_
                                             _e239875240252_
                                             _hd239876240255_
                                             _tl239877240257_
                                             ___splice248970248971_
                                             _target239878240260_
                                             _tl239880240262_))))
                                    (___match249005249006_
                                     _e239875240252_
                                     _hd239876240255_
                                     _tl239877240257_
                                     ___splice248970248971_
                                     _target239878240260_
                                     _tl239880240262_))))
                            (___match249005249006_
                             _e239875240252_
                             _hd239876240255_
                             _tl239877240257_
                             ___splice248970248971_
                             _target239878240260_
                             _tl239880240262_))
                        (___match249005249006_
                         _e239875240252_
                         _hd239876240255_
                         _tl239877240257_
                         ___splice248970248971_
                         _target239878240260_
                         _tl239880240262_))
                    (___match249005249006_
                     _e239875240252_
                     _hd239876240255_
                     _tl239877240257_
                     ___splice248970248971_
                     _target239878240260_
                     _tl239880240262_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match249005249006_
                                                     _e239875240252_
                                                     _hd239876240255_
                                                     _tl239877240257_
                                                     ___splice248970248971_
                                                     _target239878240260_
                                                     _tl239880240262_))))
                                            (___match249005249006_
                                             _e239875240252_
                                             _hd239876240255_
                                             _tl239877240257_
                                             ___splice248970248971_
                                             _target239878240260_
                                             _tl239880240262_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop239881240265_ _target239878240260_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx248966248967_))
                  (let ((_e239875240252_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx248966248967_))))
                    (let ((_tl239877240257_
                           (let ()
                             (declare (not safe))
                             (##cdr _e239875240252_)))
                          (_hd239876240255_
                           (let ()
                             (declare (not safe))
                             (##car _e239875240252_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd239876240255_))
                          (let ((___splice248970248971_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd239876240255_
                                    '0))))
                            (let ((_tl239880240262_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice248970248971_ '1)))
                                  (_target239878240260_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice248970248971_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl239880240262_))
                                  (___match248993248994_
                                   _e239875240252_
                                   _hd239876240255_
                                   _tl239877240257_
                                   ___splice248970248971_
                                   _target239878240260_
                                   _tl239880240262_)
                                  (___match249005249006_
                                   _e239875240252_
                                   _hd239876240255_
                                   _tl239877240257_
                                   ___splice248970248971_
                                   _target239878240260_
                                   _tl239880240262_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl239877240257_))
                              (let ((_e239963240007_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl239877240257_))))
                                (let ((_tl239965240012_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e239963240007_)))
                                      (_hd239964240010_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e239963240007_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd239964240010_))
                                      (let ((_e239966240015_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd239964240010_))))
                                        (let ((_tl239968240020_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e239966240015_)))
                                              (_hd239967240018_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e239966240015_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd239967240018_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd239967240018_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl239968240020_))
                                                      (let ((_e239969240023_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl239968240020_))))
                (let ((_tl239971240028_
                       (let () (declare (not safe)) (##cdr _e239969240023_)))
                      (_hd239970240026_
                       (let () (declare (not safe)) (##car _e239969240023_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd239970240026_))
                      (let ((_e239972240031_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd239970240026_))))
                        (let ((_tl239974240036_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e239972240031_)))
                              (_hd239973240034_
                               (let ()
                                 (declare (not safe))
                                 (##car _e239972240031_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd239973240034_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd239973240034_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl239974240036_))
                                      (let ((_e239975240039_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl239974240036_))))
                                        (let ((_tl239977240044_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e239975240039_)))
                                              (_hd239976240042_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e239975240039_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl239977240044_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl239971240028_))
                                                  (let ((_e239978240047_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl239971240028_))))
                                                    (let ((_tl239980240052_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e239978240047_)))
                                                          (_hd239979240050_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e239978240047_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd239979240050_))
                                                          (let ((_e239981240055_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd239979240050_))))
                    (let ((_tl239983240060_
                           (let ()
                             (declare (not safe))
                             (##cdr _e239981240055_)))
                          (_hd239982240058_
                           (let ()
                             (declare (not safe))
                             (##car _e239981240055_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd239982240058_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd239982240058_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl239983240060_))
                                  (let ((_e239984240063_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl239983240060_))))
                                    (let ((_tl239986240068_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e239984240063_)))
                                          (_hd239985240066_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e239984240063_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl239986240068_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl239980240052_))
                                              (let ((_e239987240071_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl239980240052_))))
                                                (let ((_tl239989240076_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e239987240071_)))
                                                      (_hd239988240074_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e239987240071_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl239989240076_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl239965240012_))
                                                          (___kont248978248979_
                                                           _hd239985240066_
                                                           _hd239976240042_
                                                           _hd239876240255_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g239870239994_)))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g239870239994_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g239870239994_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g239870239994_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g239870239994_)))
                              (let () (declare (not safe)) (_g239870239994_)))
                          (let () (declare (not safe)) (_g239870239994_)))))
                  (let () (declare (not safe)) (_g239870239994_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g239870239994_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g239870239994_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g239870239994_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g239870239994_)))
                              (let ()
                                (declare (not safe))
                                (_g239870239994_)))))
                      (let () (declare (not safe)) (_g239870239994_)))))
              (let () (declare (not safe)) (_g239870239994_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g239870239994_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g239870239994_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g239870239994_)))))
                              (let ()
                                (declare (not safe))
                                (_g239870239994_))))))
                  (let () (declare (not safe)) (_g239870239994_))))))))
    (define gxc#lambda-form-arity
      (lambda (_form239670_)
        (let* ((_g239672239686_
                (lambda (_g239673239683_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g239673239683_))))
               (_g239671239863_
                (lambda (_g239673239689_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g239673239689_))
                      (let ((_e239676239691_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g239673239689_))))
                        (let ((_hd239677239694_
                               (let ()
                                 (declare (not safe))
                                 (##car _e239676239691_)))
                              (_tl239678239696_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e239676239691_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl239678239696_))
                              (let ((_e239679239699_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl239678239696_))))
                                (let ((_hd239680239702_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e239679239699_)))
                                      (_tl239681239704_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e239679239699_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl239681239704_))
                                      ((lambda (_L239707_ _L239708_)
                                         (let* ((___stx249088249089_ _L239708_)
                                                (_g239723239751_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx249088249089_)))))
                                           (let ((___kont249090249091_
                                                  (lambda (_L239842_)
                                                    (length (let ((__tmp250233
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g239852239855_ _g239853239857_)
                             (let ()
                               (declare (not safe))
                               (cons _g239852239855_ _g239853239857_)))))
                      (declare (not safe))
                      (foldr1 __tmp250233 '() _L239842_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont249094249095_
                                                  (lambda (_L239793_ _L239794_)
                                                    (let ((__tmp250234
                                                           (length (let ((__tmp250235
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g239805239808_ _g239806239810_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g239805239808_
                                            _g239806239810_)))))
                             (declare (not safe))
                             (foldr1 __tmp250235 '() _L239794_)))))
              (declare (not safe))
              (cons __tmp250234 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont249098249099_
                                                  (lambda (_L239756_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '())))))
                                             (let* ((___match249113249114_
                                                     (lambda (___splice249096249097_
                                                              _target239737239769_
                                                              _tl239739239771_)
                                                       (letrec ((_loop239740239774_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd239738239777_ _arg239744239779_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd239738239777_))
                               (let ((_e239741239782_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd239738239777_))))
                                 (let ((_lp-tl239743239787_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e239741239782_)))
                                       (_lp-hd239742239785_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e239741239782_))))
                                   (let ((__tmp250236
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd239742239785_
                                                  _arg239744239779_))))
                                     (declare (not safe))
                                     (_loop239740239774_
                                      _lp-tl239743239787_
                                      __tmp250236))))
                               (let ((_arg239745239790_
                                      (reverse _arg239744239779_)))
                                 (___kont249094249095_
                                  _tl239739239771_
                                  _arg239745239790_))))))
                 (let ()
                   (declare (not safe))
                   (_loop239740239774_ _target239737239769_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match249107249108_
                                                     (lambda (___splice249092249093_
                                                              _target239726239818_
                                                              _tl239728239820_)
                                                       (letrec ((_loop239729239823_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd239727239826_ _arg239733239828_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd239727239826_))
                               (let ((_e239730239831_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd239727239826_))))
                                 (let ((_lp-tl239732239836_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e239730239831_)))
                                       (_lp-hd239731239834_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e239730239831_))))
                                   (let ((__tmp250237
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd239731239834_
                                                  _arg239733239828_))))
                                     (declare (not safe))
                                     (_loop239729239823_
                                      _lp-tl239732239836_
                                      __tmp250237))))
                               (let ((_arg239734239839_
                                      (reverse _arg239733239828_)))
                                 (___kont249090249091_ _arg239734239839_))))))
                 (let ()
                   (declare (not safe))
                   (_loop239729239823_ _target239726239818_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair/null?
                                                      ___stx249088249089_))
                                                   (let ((___splice249092249093_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-split-splice
                                                             ___stx249088249089_
                                                             '0))))
                                                     (let ((_tl239728239820_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice249092249093_
                                                               '1)))
                                                           (_target239726239818_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice249092249093_
                                                               '0))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl239728239820_))
                                                           (___match249107249108_
                                                            ___splice249092249093_
                                                            _target239726239818_
                                                            _tl239728239820_)
                                                           (___match249113249114_
                                                            ___splice249092249093_
                                                            _target239726239818_
                                                            _tl239728239820_))))
                                                   (___kont249098249099_
                                                    ___stx249088249089_))))))
                                       _hd239680239702_
                                       _hd239677239694_)
                                      (let ()
                                        (declare (not safe))
                                        (_g239672239686_ _g239673239689_)))))
                              (let ()
                                (declare (not safe))
                                (_g239672239686_ _g239673239689_)))))
                      (let ()
                        (declare (not safe))
                        (_g239672239686_ _g239673239689_))))))
          (declare (not safe))
          (_g239671239863_ _form239670_))))
    (define gxc#lambda-expr?
      (lambda (_expr239623_)
        (let* ((___stx249116249117_ _expr239623_)
               (_g239626239636_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx249116249117_)))))
          (let ((___kont249118249119_ (lambda (_L239656_) '#t))
                (___kont249120249121_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx249116249117_))
                (let ((_e239629239648_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx249116249117_))))
                  (let ((_tl239631239653_
                         (let () (declare (not safe)) (##cdr _e239629239648_)))
                        (_hd239630239651_
                         (let ()
                           (declare (not safe))
                           (##car _e239629239648_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd239630239651_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#lambda _hd239630239651_))
                            (___kont249118249119_ _tl239631239653_)
                            (___kont249120249121_))
                        (___kont249120249121_))))
                (___kont249120249121_))))))
    (define gxc#case-lambda-expr?
      (lambda (_expr239576_)
        (let* ((___stx249134249135_ _expr239576_)
               (_g239579239589_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx249134249135_)))))
          (let ((___kont249136249137_ (lambda (_L239609_) '#t))
                (___kont249138249139_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx249134249135_))
                (let ((_e239582239601_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx249134249135_))))
                  (let ((_tl239584239606_
                         (let () (declare (not safe)) (##cdr _e239582239601_)))
                        (_hd239583239604_
                         (let ()
                           (declare (not safe))
                           (##car _e239582239601_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd239583239604_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#case-lambda _hd239583239604_))
                            (___kont249136249137_ _tl239584239606_)
                            (___kont249138249139_))
                        (___kont249138249139_))))
                (___kont249138249139_))))))
    (define gxc#opt-lambda-expr?
      (lambda (_expr239445_)
        (let* ((___stx249152249153_ _expr239445_)
               (_g239448239478_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx249152249153_)))))
          (let ((___kont249154249155_
                 (lambda (_L239546_ _L239547_ _L239548_)
                   (if (let () (declare (not safe)) (gx#identifier? _L239548_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#lambda-expr? _L239547_))
                           (let ()
                             (declare (not safe))
                             (gxc#case-lambda-expr? _L239546_))
                           '#f)
                       '#f)))
                (___kont249156249157_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx249152249153_))
                (let ((_e239453239490_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx249152249153_))))
                  (let ((_tl239455239495_
                         (let () (declare (not safe)) (##cdr _e239453239490_)))
                        (_hd239454239493_
                         (let ()
                           (declare (not safe))
                           (##car _e239453239490_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd239454239493_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd239454239493_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl239455239495_))
                                (let ((_e239456239498_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl239455239495_))))
                                  (let ((_tl239458239503_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e239456239498_)))
                                        (_hd239457239501_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e239456239498_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd239457239501_))
                                        (let ((_e239459239506_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd239457239501_))))
                                          (let ((_tl239461239511_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e239459239506_)))
                                                (_hd239460239509_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e239459239506_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd239460239509_))
                                                (let ((_e239462239514_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd239460239509_))))
                                                  (let ((_tl239464239519_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e239462239514_)))
                                                        (_hd239463239517_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e239462239514_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd239463239517_))
                                                        (let ((_e239465239522_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd239463239517_))))
                  (let ((_tl239467239527_
                         (let () (declare (not safe)) (##cdr _e239465239522_)))
                        (_hd239466239525_
                         (let ()
                           (declare (not safe))
                           (##car _e239465239522_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl239467239527_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl239464239519_))
                            (let ((_e239468239530_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl239464239519_))))
                              (let ((_tl239470239535_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e239468239530_)))
                                    (_hd239469239533_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e239468239530_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl239470239535_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl239461239511_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl239458239503_))
                                            (let ((_e239471239538_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl239458239503_))))
                                              (let ((_tl239473239543_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e239471239538_)))
                                                    (_hd239472239541_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e239471239538_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl239473239543_))
                                                    (___kont249154249155_
                                                     _hd239472239541_
                                                     _hd239469239533_
                                                     _hd239466239525_)
                                                    (___kont249156249157_))))
                                            (___kont249156249157_))
                                        (___kont249156249157_))
                                    (___kont249156249157_))))
                            (___kont249156249157_))
                        (___kont249156249157_))))
                (___kont249156249157_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont249156249157_))))
                                        (___kont249156249157_))))
                                (___kont249156249157_))
                            (___kont249156249157_))
                        (___kont249156249157_))))
                (___kont249156249157_))))))
    (define gxc#kw-lambda-expr?
      (lambda (_expr238770_)
        (let* ((___stx249214249215_ _expr238770_)
               (_g238773238931_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx249214249215_)))))
          (let ((___kont249216249217_
                 (lambda (_L239319_
                          _L239320_
                          _L239321_
                          _L239322_
                          _L239323_
                          _L239324_
                          _L239325_
                          _L239326_
                          _L239327_
                          _L239328_
                          _L239329_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#runtime-identifier=? _L239326_ 'apply))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L239322_ 'apply))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#runtime-identifier=?
                                  _L239321_
                                  'keyword-dispatch))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L239329_
                                      _L239320_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L239328_
                                          _L239325_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L239323_
                                              _L239319_))
                                           (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L239327_
                                              _L239324_))
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)))
                (___kont249218249219_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx249214249215_))
                (let ((_e238786238943_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx249214249215_))))
                  (let ((_tl238788238948_
                         (let () (declare (not safe)) (##cdr _e238786238943_)))
                        (_hd238787238946_
                         (let ()
                           (declare (not safe))
                           (##car _e238786238943_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd238787238946_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd238787238946_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl238788238948_))
                                (let ((_e238789238951_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl238788238948_))))
                                  (let ((_tl238791238956_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e238789238951_)))
                                        (_hd238790238954_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e238789238951_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd238790238954_))
                                        (let ((_e238792238959_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd238790238954_))))
                                          (let ((_tl238794238964_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e238792238959_)))
                                                (_hd238793238962_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e238792238959_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd238793238962_))
                                                (let ((_e238795238967_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd238793238962_))))
                                                  (let ((_tl238797238972_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e238795238967_)))
                                                        (_hd238796238970_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e238795238967_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd238796238970_))
                                                        (let ((_e238798238975_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd238796238970_))))
                  (let ((_tl238800238980_
                         (let () (declare (not safe)) (##cdr _e238798238975_)))
                        (_hd238799238978_
                         (let ()
                           (declare (not safe))
                           (##car _e238798238975_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl238800238980_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl238797238972_))
                            (let ((_e238801238983_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl238797238972_))))
                              (let ((_tl238803238988_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e238801238983_)))
                                    (_hd238802238986_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e238801238983_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd238802238986_))
                                    (let ((_e238804238991_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd238802238986_))))
                                      (let ((_tl238806238996_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e238804238991_)))
                                            (_hd238805238994_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e238804238991_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd238805238994_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#let-values
                                                   _hd238805238994_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl238806238996_))
                                                    (let ((_e238807238999_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl238806238996_))))
                                                      (let ((_tl238809239004_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e238807238999_)))
                    (_hd238808239002_
                     (let () (declare (not safe)) (##car _e238807238999_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd238808239002_))
                    (let ((_e238810239007_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd238808239002_))))
                      (let ((_tl238812239012_
                             (let ()
                               (declare (not safe))
                               (##cdr _e238810239007_)))
                            (_hd238811239010_
                             (let ()
                               (declare (not safe))
                               (##car _e238810239007_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd238811239010_))
                            (let ((_e238813239015_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd238811239010_))))
                              (let ((_tl238815239020_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e238813239015_)))
                                    (_hd238814239018_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e238813239015_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd238814239018_))
                                    (let ((_e238816239023_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd238814239018_))))
                                      (let ((_tl238818239028_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e238816239023_)))
                                            (_hd238817239026_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e238816239023_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl238818239028_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl238815239020_))
                                                (let ((_e238819239031_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl238815239020_))))
                                                  (let ((_tl238821239036_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e238819239031_)))
                                                        (_hd238820239034_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e238819239031_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl238821239036_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl238812239012_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl238809239004_))
                        (let ((_e238822239039_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl238809239004_))))
                          (let ((_tl238824239044_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e238822239039_)))
                                (_hd238823239042_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e238822239039_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd238823239042_))
                                (let ((_e238825239047_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd238823239042_))))
                                  (let ((_tl238827239052_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e238825239047_)))
                                        (_hd238826239050_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e238825239047_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd238826239050_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#lambda
                                               _hd238826239050_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl238827239052_))
                                                (let ((_e238828239055_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl238827239052_))))
                                                  (let ((_tl238830239060_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e238828239055_)))
                                                        (_hd238829239058_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e238828239055_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd238829239058_))
                                                        (let ((_e238831239063_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd238829239058_))))
                  (let ((_tl238833239068_
                         (let () (declare (not safe)) (##cdr _e238831239063_)))
                        (_hd238832239066_
                         (let ()
                           (declare (not safe))
                           (##car _e238831239063_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl238830239060_))
                        (let ((_e238834239071_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl238830239060_))))
                          (let ((_tl238836239076_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e238834239071_)))
                                (_hd238835239074_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e238834239071_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd238835239074_))
                                (let ((_e238837239079_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd238835239074_))))
                                  (let ((_tl238839239084_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e238837239079_)))
                                        (_hd238838239082_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e238837239079_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd238838239082_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#call
                                               _hd238838239082_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl238839239084_))
                                                (let ((_e238840239087_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl238839239084_))))
                                                  (let ((_tl238842239092_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e238840239087_)))
                                                        (_hd238841239090_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e238840239087_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd238841239090_))
                                                        (let ((_e238843239095_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd238841239090_))))
                  (let ((_tl238845239100_
                         (let () (declare (not safe)) (##cdr _e238843239095_)))
                        (_hd238844239098_
                         (let ()
                           (declare (not safe))
                           (##car _e238843239095_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd238844239098_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd238844239098_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl238845239100_))
                                (let ((_e238846239103_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl238845239100_))))
                                  (let ((_tl238848239108_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e238846239103_)))
                                        (_hd238847239106_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e238846239103_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl238848239108_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl238842239092_))
                                            (let ((_e238849239111_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl238842239092_))))
                                              (let ((_tl238851239116_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e238849239111_)))
                                                    (_hd238850239114_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e238849239111_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd238850239114_))
                                                    (let ((_e238852239119_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd238850239114_))))
                                                      (let ((_tl238854239124_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e238852239119_)))
                    (_hd238853239122_
                     (let () (declare (not safe)) (##car _e238852239119_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd238853239122_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd238853239122_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl238854239124_))
                            (let ((_e238855239127_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl238854239124_))))
                              (let ((_tl238857239132_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e238855239127_)))
                                    (_hd238856239130_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e238855239127_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl238857239132_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl238851239116_))
                                        (let ((_e238858239135_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl238851239116_))))
                                          (let ((_tl238860239140_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e238858239135_)))
                                                (_hd238859239138_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e238858239135_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd238859239138_))
                                                (let ((_e238861239143_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd238859239138_))))
                                                  (let ((_tl238863239148_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e238861239143_)))
                                                        (_hd238862239146_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e238861239143_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd238862239146_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd238862239146_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl238863239148_))
                        (let ((_e238864239151_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl238863239148_))))
                          (let ((_tl238866239156_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e238864239151_)))
                                (_hd238865239154_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e238864239151_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl238866239156_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl238836239076_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl238824239044_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl238803238988_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl238794238964_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl238791238956_))
                                                    (let ((_e238867239159_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl238791238956_))))
                                                      (let ((_tl238869239164_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e238867239159_)))
                    (_hd238868239162_
                     (let () (declare (not safe)) (##car _e238867239159_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd238868239162_))
                    (let ((_e238870239167_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd238868239162_))))
                      (let ((_tl238872239172_
                             (let ()
                               (declare (not safe))
                               (##cdr _e238870239167_)))
                            (_hd238871239170_
                             (let ()
                               (declare (not safe))
                               (##car _e238870239167_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd238871239170_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#lambda _hd238871239170_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl238872239172_))
                                    (let ((_e238873239175_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl238872239172_))))
                                      (let ((_tl238875239180_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e238873239175_)))
                                            (_hd238874239178_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e238873239175_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl238875239180_))
                                            (let ((_e238876239183_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl238875239180_))))
                                              (let ((_tl238878239188_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e238876239183_)))
                                                    (_hd238877239186_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e238876239183_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd238877239186_))
                                                    (let ((_e238879239191_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd238877239186_))))
                                                      (let ((_tl238881239196_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e238879239191_)))
                    (_hd238880239194_
                     (let () (declare (not safe)) (##car _e238879239191_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd238880239194_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd238880239194_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl238881239196_))
                            (let ((_e238882239199_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl238881239196_))))
                              (let ((_tl238884239204_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e238882239199_)))
                                    (_hd238883239202_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e238882239199_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd238883239202_))
                                    (let ((_e238885239207_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd238883239202_))))
                                      (let ((_tl238887239212_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e238885239207_)))
                                            (_hd238886239210_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e238885239207_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd238886239210_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd238886239210_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl238887239212_))
                                                    (let ((_e238888239215_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl238887239212_))))
                                                      (let ((_tl238890239220_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e238888239215_)))
                    (_hd238889239218_
                     (let () (declare (not safe)) (##car _e238888239215_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl238890239220_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl238884239204_))
                        (let ((_e238891239223_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl238884239204_))))
                          (let ((_tl238893239228_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e238891239223_)))
                                (_hd238892239226_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e238891239223_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd238892239226_))
                                (let ((_e238894239231_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd238892239226_))))
                                  (let ((_tl238896239236_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e238894239231_)))
                                        (_hd238895239234_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e238894239231_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd238895239234_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd238895239234_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl238896239236_))
                                                (let ((_e238897239239_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl238896239236_))))
                                                  (let ((_tl238899239244_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e238897239239_)))
                                                        (_hd238898239242_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e238897239239_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl238899239244_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl238893239228_))
                                                            (let ((_e238900239247_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl238893239228_))))
                      (let ((_tl238902239252_
                             (let ()
                               (declare (not safe))
                               (##cdr _e238900239247_)))
                            (_hd238901239250_
                             (let ()
                               (declare (not safe))
                               (##car _e238900239247_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd238901239250_))
                            (let ((_e238903239255_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd238901239250_))))
                              (let ((_tl238905239260_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e238903239255_)))
                                    (_hd238904239258_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e238903239255_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd238904239258_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd238904239258_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl238905239260_))
                                            (let ((_e238906239263_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl238905239260_))))
                                              (let ((_tl238908239268_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e238906239263_)))
                                                    (_hd238907239266_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e238906239263_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl238908239268_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl238902239252_))
                                                        (let ((_e238909239271_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl238902239252_))))
                  (let ((_tl238911239276_
                         (let () (declare (not safe)) (##cdr _e238909239271_)))
                        (_hd238910239274_
                         (let ()
                           (declare (not safe))
                           (##car _e238909239271_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd238910239274_))
                        (let ((_e238912239279_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd238910239274_))))
                          (let ((_tl238914239284_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e238912239279_)))
                                (_hd238913239282_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e238912239279_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd238913239282_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd238913239282_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl238914239284_))
                                        (let ((_e238915239287_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl238914239284_))))
                                          (let ((_tl238917239292_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e238915239287_)))
                                                (_hd238916239290_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e238915239287_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl238917239292_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl238911239276_))
                                                    (let ((_e238918239295_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl238911239276_))))
                                                      (let ((_tl238920239300_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e238918239295_)))
                    (_hd238919239298_
                     (let () (declare (not safe)) (##car _e238918239295_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd238919239298_))
                    (let ((_e238921239303_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd238919239298_))))
                      (let ((_tl238923239308_
                             (let ()
                               (declare (not safe))
                               (##cdr _e238921239303_)))
                            (_hd238922239306_
                             (let ()
                               (declare (not safe))
                               (##car _e238921239303_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd238922239306_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#ref _hd238922239306_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl238923239308_))
                                    (let ((_e238924239311_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl238923239308_))))
                                      (let ((_tl238926239316_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e238924239311_)))
                                            (_hd238925239314_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e238924239311_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl238926239316_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl238920239300_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl238878239188_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl238869239164_))
                                                        (___kont249216249217_
                                                         _hd238925239314_
                                                         _hd238916239290_
                                                         _hd238898239242_
                                                         _hd238889239218_
                                                         _hd238874239178_
                                                         _hd238865239154_
                                                         _hd238856239130_
                                                         _hd238847239106_
                                                         _hd238832239066_
                                                         _hd238817239026_
                                                         _hd238799238978_)
                                                        (___kont249218249219_))
                                                    (___kont249218249219_))
                                                (___kont249218249219_))
                                            (___kont249218249219_))))
                                    (___kont249218249219_))
                                (___kont249218249219_))
                            (___kont249218249219_))))
                    (___kont249218249219_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont249218249219_))
                                                (___kont249218249219_))))
                                        (___kont249218249219_))
                                    (___kont249218249219_))
                                (___kont249218249219_))))
                        (___kont249218249219_))))
                (___kont249218249219_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont249218249219_))))
                                            (___kont249218249219_))
                                        (___kont249218249219_))
                                    (___kont249218249219_))))
                            (___kont249218249219_))))
                    (___kont249218249219_))
                (___kont249218249219_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont249218249219_))
                                            (___kont249218249219_))
                                        (___kont249218249219_))))
                                (___kont249218249219_))))
                        (___kont249218249219_))
                    (___kont249218249219_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont249218249219_))
                                                (___kont249218249219_))
                                            (___kont249218249219_))))
                                    (___kont249218249219_))))
                            (___kont249218249219_))
                        (___kont249218249219_))
                    (___kont249218249219_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont249218249219_))))
                                            (___kont249218249219_))))
                                    (___kont249218249219_))
                                (___kont249218249219_))
                            (___kont249218249219_))))
                    (___kont249218249219_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont249218249219_))
                                                (___kont249218249219_))
                                            (___kont249218249219_))
                                        (___kont249218249219_))
                                    (___kont249218249219_))
                                (___kont249218249219_))))
                        (___kont249218249219_))
                    (___kont249218249219_))
                (___kont249218249219_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont249218249219_))))
                                        (___kont249218249219_))
                                    (___kont249218249219_))))
                            (___kont249218249219_))
                        (___kont249218249219_))
                    (___kont249218249219_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont249218249219_))))
                                            (___kont249218249219_))
                                        (___kont249218249219_))))
                                (___kont249218249219_))
                            (___kont249218249219_))
                        (___kont249218249219_))))
                (___kont249218249219_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont249218249219_))
                                            (___kont249218249219_))
                                        (___kont249218249219_))))
                                (___kont249218249219_))))
                        (___kont249218249219_))))
                (___kont249218249219_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont249218249219_))
                                            (___kont249218249219_))
                                        (___kont249218249219_))))
                                (___kont249218249219_))))
                        (___kont249218249219_))
                    (___kont249218249219_))
                (___kont249218249219_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont249218249219_))
                                            (___kont249218249219_))))
                                    (___kont249218249219_))))
                            (___kont249218249219_))))
                    (___kont249218249219_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont249218249219_))
                                                (___kont249218249219_))
                                            (___kont249218249219_))))
                                    (___kont249218249219_))))
                            (___kont249218249219_))
                        (___kont249218249219_))))
                (___kont249218249219_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont249218249219_))))
                                        (___kont249218249219_))))
                                (___kont249218249219_))
                            (___kont249218249219_))
                        (___kont249218249219_))))
                (___kont249218249219_))))))
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx238512_ _id238513_ _clauses238514_ _gensym?238515_)
        (let _lp238517_ ((_rest238519_ _clauses238514_)
                         (_ids238520_ '())
                         (_impls238521_ '())
                         (_clauses238522_ '()))
          (let* ((_rest238523238531_ _rest238519_)
                 (_else238525238539_
                  (lambda ()
                    (values (reverse _ids238520_)
                            (reverse _impls238521_)
                            (reverse _clauses238522_))))
                 (_K238527238744_
                  (lambda (_rest238542_ _clause238543_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#dispatch-lambda-form? _clause238543_))
                        (let ((__tmp250238
                               (let ()
                                 (declare (not safe))
                                 (cons _clause238543_ _clauses238522_))))
                          (declare (not safe))
                          (_lp238517_
                           _rest238542_
                           _ids238520_
                           _impls238521_
                           __tmp250238))
                        (let* ((_g238545238556_
                                (lambda (_g238546238553_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g238546238553_))))
                               (_g238544238741_
                                (lambda (_g238546238559_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _g238546238559_))
                                      (let ((_e238549238561_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _g238546238559_))))
                                        (let ((_hd238550238564_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e238549238561_)))
                                              (_tl238551238566_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e238549238561_))))
                                          ((lambda (_L238569_ _L238570_)
                                             (let* ((_id238587_
                                                     (let ((__tmp250241
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _id238513_)))
                                                           (__tmp250240
                                                            (length _clauses238522_))
                                                           (__tmp250239
                                                            (if _gensym?238515_
                                                                (gensym '__)
                                                                '"")))
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        __tmp250241
                                                        '"__"
                                                        __tmp250240
                                                        __tmp250239)))
                                                    (_id238589_
                                                     (let ((__tmp250242
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-source
                                                               _stx238512_))))
                                                       (declare (not safe))
                                                       (gx#core-quote-syntax__1
                                                        _id238587_
                                                        __tmp250242)))
                                                    (_impl238591_
                                                     (let ((__tmp250243
                                                            (let ((__tmp250245
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '%#lambda)))
                          (__tmp250244
                           (let ()
                             (declare (not safe))
                             (cons _L238570_ _L238569_))))
                      (declare (not safe))
                      (cons __tmp250245 __tmp250244))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp250243 _stx238512_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause238738_
                                                     (let* ((___stx249598249599_
                                                             _L238570_)
                                                            (_g238595238623_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx249598249599_)))))
               (let ((___kont249600249601_
                      (lambda (_L238717_)
                        (let ((__tmp250246
                               (let ((__tmp250247
                                      (let ((__tmp250248
                                             (let ((__tmp250249
                                                    (let ((__tmp250255
                                                           (let ((__tmp250256
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id238589_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp250256)))
                  (__tmp250250
                   (let ((__tmp250251
                          (lambda (_g238727238730_ _g238728238732_)
                            (let ((__tmp250252
                                   (let ((__tmp250254
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp250253
                                          (let ()
                                            (declare (not safe))
                                            (cons _g238727238730_ '()))))
                                     (declare (not safe))
                                     (cons __tmp250254 __tmp250253))))
                              (declare (not safe))
                              (cons __tmp250252 _g238728238732_)))))
                     (declare (not safe))
                     (foldr1 __tmp250251 '() _L238717_))))
              (declare (not safe))
              (cons __tmp250255 __tmp250250))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp250249))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp250248
                                         _stx238512_))))
                                 (declare (not safe))
                                 (cons __tmp250247 '()))))
                          (declare (not safe))
                          (cons _L238570_ __tmp250246))))
                     (___kont249604249605_
                      (lambda (_L238668_ _L238669_)
                        (let ((__tmp250257
                               (let ((__tmp250258
                                      (let ((__tmp250259
                                             (let ((__tmp250260
                                                    (let ((__tmp250274
                                                           (let ((__tmp250275
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp250275)))
                  (__tmp250261
                   (let ((__tmp250272
                          (let ((__tmp250273
                                 (let ()
                                   (declare (not safe))
                                   (cons _id238589_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp250273)))
                         (__tmp250262
                          (let ((__tmp250268
                                 (let ((__tmp250269
                                        (let ((__tmp250271
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)))
                                              (__tmp250270
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L238668_ '()))))
                                          (declare (not safe))
                                          (cons __tmp250271 __tmp250270))))
                                   (declare (not safe))
                                   (cons __tmp250269 '())))
                                (__tmp250263
                                 (let ((__tmp250264
                                        (lambda (_g238680238683_
                                                 _g238681238685_)
                                          (let ((__tmp250265
                                                 (let ((__tmp250267
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)))
                                                       (__tmp250266
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g238680238683_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp250267
                                                         __tmp250266))))
                                            (declare (not safe))
                                            (cons __tmp250265
                                                  _g238681238685_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp250264 '() _L238669_))))
                            (declare (not safe))
                            (foldr1 cons __tmp250268 __tmp250263))))
                     (declare (not safe))
                     (cons __tmp250272 __tmp250262))))
              (declare (not safe))
              (cons __tmp250274 __tmp250261))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp250260))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp250259
                                         _stx238512_))))
                                 (declare (not safe))
                                 (cons __tmp250258 '()))))
                          (declare (not safe))
                          (cons _L238570_ __tmp250257))))
                     (___kont249608249609_
                      (lambda (_L238628_)
                        (let ((__tmp250276
                               (let ((__tmp250277
                                      (let ((__tmp250278
                                             (let ((__tmp250279
                                                    (let ((__tmp250287
                                                           (let ((__tmp250288
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp250288)))
                  (__tmp250280
                   (let ((__tmp250285
                          (let ((__tmp250286
                                 (let ()
                                   (declare (not safe))
                                   (cons _id238589_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp250286)))
                         (__tmp250281
                          (let ((__tmp250282
                                 (let ((__tmp250284
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '%#ref)))
                                       (__tmp250283
                                        (let ()
                                          (declare (not safe))
                                          (cons _L238628_ '()))))
                                   (declare (not safe))
                                   (cons __tmp250284 __tmp250283))))
                            (declare (not safe))
                            (cons __tmp250282 '()))))
                     (declare (not safe))
                     (cons __tmp250285 __tmp250281))))
              (declare (not safe))
              (cons __tmp250287 __tmp250280))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp250279))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp250278
                                         _stx238512_))))
                                 (declare (not safe))
                                 (cons __tmp250277 '()))))
                          (declare (not safe))
                          (cons _L238570_ __tmp250276)))))
                 (let* ((___match249623249624_
                         (lambda (___splice249606249607_
                                  _target238609238644_
                                  _tl238611238646_)
                           (letrec ((_loop238612238649_
                                     (lambda (_hd238610238652_
                                              _arg238616238654_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd238610238652_))
                                           (let ((_e238613238657_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd238610238652_))))
                                             (let ((_lp-tl238615238662_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e238613238657_)))
                                                   (_lp-hd238614238660_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e238613238657_))))
                                               (let ((__tmp250289
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd238614238660_
                                                              _arg238616238654_))))
                                                 (declare (not safe))
                                                 (_loop238612238649_
                                                  _lp-tl238615238662_
                                                  __tmp250289))))
                                           (let ((_arg238617238665_
                                                  (reverse _arg238616238654_)))
                                             (___kont249604249605_
                                              _tl238611238646_
                                              _arg238617238665_))))))
                             (let ()
                               (declare (not safe))
                               (_loop238612238649_
                                _target238609238644_
                                '())))))
                        (___match249617249618_
                         (lambda (___splice249602249603_
                                  _target238598238693_
                                  _tl238600238695_)
                           (letrec ((_loop238601238698_
                                     (lambda (_hd238599238701_
                                              _arg238605238703_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd238599238701_))
                                           (let ((_e238602238706_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd238599238701_))))
                                             (let ((_lp-tl238604238711_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e238602238706_)))
                                                   (_lp-hd238603238709_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e238602238706_))))
                                               (let ((__tmp250290
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd238603238709_
                                                              _arg238605238703_))))
                                                 (declare (not safe))
                                                 (_loop238601238698_
                                                  _lp-tl238604238711_
                                                  __tmp250290))))
                                           (let ((_arg238606238714_
                                                  (reverse _arg238605238703_)))
                                             (___kont249600249601_
                                              _arg238606238714_))))))
                             (let ()
                               (declare (not safe))
                               (_loop238601238698_
                                _target238598238693_
                                '()))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? ___stx249598249599_))
                       (let ((___splice249602249603_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 ___stx249598249599_
                                 '0))))
                         (let ((_tl238600238695_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice249602249603_ '1)))
                               (_target238598238693_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice249602249603_ '0))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl238600238695_))
                               (___match249617249618_
                                ___splice249602249603_
                                _target238598238693_
                                _tl238600238695_)
                               (___match249623249624_
                                ___splice249602249603_
                                _target238598238693_
                                _tl238600238695_))))
                       (___kont249608249609_ ___stx249598249599_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp250293
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _id238589_
                                                              _ids238520_)))
                                                     (__tmp250292
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _impl238591_
                                                              _impls238521_)))
                                                     (__tmp250291
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _clause238738_
                                                              _clauses238522_))))
                                                 (declare (not safe))
                                                 (_lp238517_
                                                  _rest238542_
                                                  __tmp250293
                                                  __tmp250292
                                                  __tmp250291))))
                                           _tl238551238566_
                                           _hd238550238564_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g238545238556_ _g238546238559_))))))
                          (declare (not safe))
                          (_g238544238741_ _clause238543_))))))
            (if (let () (declare (not safe)) (##pair? _rest238523238531_))
                (let ((_hd238528238747_
                       (let ()
                         (declare (not safe))
                         (##car _rest238523238531_)))
                      (_tl238529238749_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest238523238531_))))
                  (let* ((_clause238752_ _hd238528238747_)
                         (_rest238754_ _tl238529238749_))
                    (declare (not safe))
                    (_K238527238744_ _rest238754_ _clause238752_)))
                (let () (declare (not safe)) (_else238525238539_)))))))
    (define gxc#lift-case-lambda-clauses__0
      (lambda (_stx238759_ _id238760_ _clauses238761_)
        (let ((_gensym?238763_ '#f))
          (declare (not safe))
          (gxc#lift-case-lambda-clauses__%
           _stx238759_
           _id238760_
           _clauses238761_
           _gensym?238763_))))
    (define gxc#lift-case-lambda-clauses
      (lambda _g250295_
        (let ((_g250294_ (let () (declare (not safe)) (##length _g250295_))))
          (cond ((let () (declare (not safe)) (##fx= _g250294_ 3))
                 (apply (lambda (_stx238759_ _id238760_ _clauses238761_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__0
                             _stx238759_
                             _id238760_
                             _clauses238761_)))
                        _g250295_))
                ((let () (declare (not safe)) (##fx= _g250294_ 4))
                 (apply (lambda (_stx238765_
                                 _id238766_
                                 _clauses238767_
                                 _gensym?238768_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__%
                             _stx238765_
                             _id238766_
                             _clauses238767_
                             _gensym?238768_)))
                        _g250295_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#lift-case-lambda-clauses
                  _g250295_))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_stx237789_)
        (letrec ((_case-lambda-clause-def237791_
                  (lambda (_id238508_ _impl238509_)
                    (let ((__tmp250296
                           (let ((__tmp250297
                                  (let ((__tmp250300
                                         (let ()
                                           (declare (not safe))
                                           (cons _id238508_ '())))
                                        (__tmp250298
                                         (let ((__tmp250299
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _impl238509_))))
                                           (declare (not safe))
                                           (cons __tmp250299 '()))))
                                    (declare (not safe))
                                    (cons __tmp250300 __tmp250298))))
                             (declare (not safe))
                             (cons '%#define-values __tmp250297))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp250296 _stx237789_))))
                 (_opt-lambda-dispatch-name237792_
                  (lambda (_id238504_)
                    (if (uninterned-symbol? _id238504_)
                        (let ((_str238506_ (symbol->string _id238504_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"opt-lambda" _str238506_))
                              '"%"
                              _id238504_))
                        _id238504_)))
                 (_kw-lambda-dispatch-name237793_
                  (lambda (_id238499_ _name238500_)
                    (if (uninterned-symbol? _id238499_)
                        (let ((_str238502_ (symbol->string _id238499_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"kw-lambda" _str238502_))
                              _name238500_
                              _id238499_))
                        _id238499_))))
          (let* ((___stx249646249647_ _stx237789_)
                 (_g237798237857_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx249646249647_)))))
            (let ((___kont249648249649_
                   (lambda (_L238408_ _L238409_)
                     (let* ((___stx249626249627_ _L238408_)
                            (_g238426238440_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx249626249627_)))))
                       (let ((___kont249628249629_
                              (lambda (_L238484_) _stx237789_))
                             (___kont249630249631_
                              (lambda (_L238453_)
                                (let ((_g250301_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#lift-case-lambda-clauses__0
                                          _stx237789_
                                          _L238409_
                                          _L238453_))))
                                  (begin
                                    (let ((_g250302_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g250301_)
                                                 (##vector-length _g250301_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g250302_ 3)))
                                          (error "Context expects 3 values"
                                                 _g250302_)))
                                    (let ((_ids238463_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g250301_ 0)))
                                          (_impls238464_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g250301_ 1)))
                                          (_clauses238465_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g250301_ 2))))
                                      (let* ((_g250303_
                                              (for-each
                                               gx#core-bind-runtime!
                                               _ids238463_))
                                             (_defs238468_
                                              (map _case-lambda-clause-def237791_
                                                   _ids238463_
                                                   _impls238464_)))
                                        (let ((__tmp250305
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L238409_)))
                                              (__tmp250304
                                               (map gxc#identifier-symbol
                                                    _ids238463_)))
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"lift case-lambda clauses "
                                           __tmp250305
                                           '" => "
                                           __tmp250304))
                                        (let ((__tmp250306
                                               (let ((__tmp250307
                                                      (let ((__tmp250308
                                                             (let ((__tmp250309
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp250310
                                   (let ((__tmp250311
                                          (let ((__tmp250316
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L238409_ '())))
                                                (__tmp250312
                                                 (let ((__tmp250313
                                                        (let ((__tmp250315
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '%#case-lambda _clauses238465_)))
                      (__tmp250314
                       (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp250315 __tmp250314))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp250313 '()))))
                                            (declare (not safe))
                                            (cons __tmp250316 __tmp250312))))
                                     (declare (not safe))
                                     (cons '%#define-values __tmp250311))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp250310
                               _stx237789_))))
                       (declare (not safe))
                       (cons __tmp250309 '()))))
                (declare (not safe))
                (foldr1 cons __tmp250308 _defs238468_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#begin __tmp250307))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp250306
                                           _stx237789_)))))))))
                         (let ((___match249637249638_
                                (lambda (_e238429238476_
                                         _hd238430238479_
                                         _tl238431238481_)
                                  (let ((_L238484_ _tl238431238481_))
                                    (if (let ()
                                          (declare (not safe))
                                          (andmap1 gxc#dispatch-lambda-form?
                                                   _L238484_))
                                        (___kont249628249629_ _L238484_)
                                        (___kont249630249631_
                                         _tl238431238481_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? ___stx249626249627_))
                               (let ((_e238429238476_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e ___stx249626249627_))))
                                 (let ((_tl238431238481_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e238429238476_)))
                                       (_hd238430238479_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e238429238476_))))
                                   (___match249637249638_
                                    _e238429238476_
                                    _hd238430238479_
                                    _tl238431238481_)))
                               (let ()
                                 (declare (not safe))
                                 (_g238426238440_))))))))
                  (___kont249650249651_
                   (lambda (_L238226_ _L238227_)
                     (let* ((_g238243238273_
                             (lambda (_g238244238270_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g238244238270_))))
                            (_g238242238368_
                             (lambda (_g238244238276_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g238244238276_))
                                   (let ((_e238248238278_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g238244238276_))))
                                     (let ((_hd238249238281_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e238248238278_)))
                                           (_tl238250238283_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e238248238278_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl238250238283_))
                                           (let ((_e238251238286_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl238250238283_))))
                                             (let ((_hd238252238289_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e238251238286_)))
                                                   (_tl238253238291_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e238251238286_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd238252238289_))
                                                   (let ((_e238254238294_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd238252238289_))))
                                                     (let ((_hd238255238297_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e238254238294_)))
                                                           (_tl238256238299_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e238254238294_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd238255238297_))
                                                           (let ((_e238257238302_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd238255238297_))))
                     (let ((_hd238258238305_
                            (let ()
                              (declare (not safe))
                              (##car _e238257238302_)))
                           (_tl238259238307_
                            (let ()
                              (declare (not safe))
                              (##cdr _e238257238302_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd238258238305_))
                           (let ((_e238260238310_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd238258238305_))))
                             (let ((_hd238261238313_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e238260238310_)))
                                   (_tl238262238315_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e238260238310_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl238262238315_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl238259238307_))
                                       (let ((_e238263238318_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl238259238307_))))
                                         (let ((_hd238264238321_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e238263238318_)))
                                               (_tl238265238323_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e238263238318_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl238265238323_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl238256238299_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl238253238291_))
                                                       (let ((_e238266238326_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl238253238291_))))
                 (let ((_hd238267238329_
                        (let () (declare (not safe)) (##car _e238266238326_)))
                       (_tl238268238331_
                        (let () (declare (not safe)) (##cdr _e238266238326_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl238268238331_))
                       ((lambda (_L238334_ _L238335_ _L238336_)
                          (let* ((_lambda-id238360_
                                  (let ((__tmp250319
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L238227_)))
                                        (__tmp250317
                                         (let ((__tmp250318
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L238336_))))
                                           (declare (not safe))
                                           (_opt-lambda-dispatch-name237792_
                                            __tmp250318))))
                                    (declare (not safe))
                                    (make-symbol__1
                                     __tmp250319
                                     '"__"
                                     __tmp250317)))
                                 (_lambda-id238362_
                                  (let ((__tmp250320
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-source _stx237789_))))
                                    (declare (not safe))
                                    (gx#core-quote-syntax__1
                                     _lambda-id238360_
                                     __tmp250320)))
                                 (_g250321_
                                  (let ()
                                    (declare (not safe))
                                    (gx#core-bind-runtime!__0
                                     _lambda-id238362_)))
                                 (_new-case-lambda-expr238365_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-expression-subst
                                     _L238334_
                                     _L238336_
                                     _lambda-id238362_))))
                            (let ((__tmp250323
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol _L238227_)))
                                  (__tmp250322
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol
                                      _lambda-id238362_))))
                              (declare (not safe))
                              (gxc#verbose
                               '"lift opt-lambda dispatch "
                               __tmp250323
                               '" => "
                               __tmp250322))
                            (let ((__tmp250324
                                   (let ((__tmp250325
                                          (let ((__tmp250333
                                                 (let ((__tmp250334
                                                        (let ((__tmp250335
                                                               (let ((__tmp250338
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _lambda-id238362_ '())))
                             (__tmp250336
                              (let ((__tmp250337
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L238335_))))
                                (declare (not safe))
                                (cons __tmp250337 '()))))
                         (declare (not safe))
                         (cons __tmp250338 __tmp250336))))
                  (declare (not safe))
                  (cons '%#define-values __tmp250335))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp250334
                                                    _stx237789_)))
                                                (__tmp250326
                                                 (let ((__tmp250327
                                                        (let ((__tmp250328
                                                               (let ((__tmp250329
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp250330
                                     (let ((__tmp250332
                                            (let ()
                                              (declare (not safe))
                                              (cons _L238227_ '())))
                                           (__tmp250331
                                            (let ()
                                              (declare (not safe))
                                              (cons _new-case-lambda-expr238365_
                                                    '()))))
                                       (declare (not safe))
                                       (cons __tmp250332 __tmp250331))))
                                (declare (not safe))
                                (cons '%#define-values __tmp250330))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp250329 _stx237789_))))
                  (declare (not safe))
                  (gxc#lift-top-lambda-define-values% __tmp250328))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp250327 '()))))
                                            (declare (not safe))
                                            (cons __tmp250333 __tmp250326))))
                                     (declare (not safe))
                                     (cons '%#begin __tmp250325))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp250324
                               _stx237789_))))
                        _hd238267238329_
                        _hd238264238321_
                        _hd238261238313_)
                       (let ()
                         (declare (not safe))
                         (_g238243238273_ _g238244238276_)))))
               (let () (declare (not safe)) (_g238243238273_ _g238244238276_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g238243238273_
                                                      _g238244238276_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g238243238273_
                                                  _g238244238276_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g238243238273_ _g238244238276_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g238243238273_ _g238244238276_)))))
                           (let ()
                             (declare (not safe))
                             (_g238243238273_ _g238244238276_)))))
                   (let ()
                     (declare (not safe))
                     (_g238243238273_ _g238244238276_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g238243238273_
                                                      _g238244238276_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g238243238273_
                                              _g238244238276_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g238243238273_ _g238244238276_))))))
                       (declare (not safe))
                       (_g238242238368_ _L238226_))))
                  (___kont249652249653_
                   (lambda (_L237940_ _L237941_)
                     (let* ((_g237957238010_
                             (lambda (_g237958238007_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g237958238007_))))
                            (_g237956238186_
                             (lambda (_g237958238013_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g237958238013_))
                                   (let ((_e237964238015_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g237958238013_))))
                                     (let ((_hd237965238018_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e237964238015_)))
                                           (_tl237966238020_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e237964238015_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl237966238020_))
                                           (let ((_e237967238023_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl237966238020_))))
                                             (let ((_hd237968238026_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e237967238023_)))
                                                   (_tl237969238028_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e237967238023_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd237968238026_))
                                                   (let ((_e237970238031_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd237968238026_))))
                                                     (let ((_hd237971238034_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e237970238031_)))
                                                           (_tl237972238036_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e237970238031_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd237971238034_))
                                                           (let ((_e237973238039_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd237971238034_))))
                     (let ((_hd237974238042_
                            (let ()
                              (declare (not safe))
                              (##car _e237973238039_)))
                           (_tl237975238044_
                            (let ()
                              (declare (not safe))
                              (##cdr _e237973238039_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd237974238042_))
                           (let ((_e237976238047_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd237974238042_))))
                             (let ((_hd237977238050_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e237976238047_)))
                                   (_tl237978238052_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e237976238047_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl237978238052_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl237975238044_))
                                       (let ((_e237979238055_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl237975238044_))))
                                         (let ((_hd237980238058_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e237979238055_)))
                                               (_tl237981238060_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e237979238055_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd237980238058_))
                                               (let ((_e237982238063_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd237980238058_))))
                                                 (let ((_hd237983238066_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e237982238063_)))
                                                       (_tl237984238068_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e237982238063_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl237984238068_))
                                                       (let ((_e237985238071_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl237984238068_))))
                 (let ((_hd237986238074_
                        (let () (declare (not safe)) (##car _e237985238071_)))
                       (_tl237987238076_
                        (let () (declare (not safe)) (##cdr _e237985238071_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _hd237986238074_))
                       (let ((_e237988238079_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _hd237986238074_))))
                         (let ((_hd237989238082_
                                (let ()
                                  (declare (not safe))
                                  (##car _e237988238079_)))
                               (_tl237990238084_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e237988238079_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd237989238082_))
                               (let ((_e237991238087_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd237989238082_))))
                                 (let ((_hd237992238090_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e237991238087_)))
                                       (_tl237993238092_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e237991238087_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd237992238090_))
                                       (let ((_e237994238095_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd237992238090_))))
                                         (let ((_hd237995238098_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e237994238095_)))
                                               (_tl237996238100_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e237994238095_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl237996238100_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl237993238092_))
                                                   (let ((_e237997238103_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl237993238092_))))
                                                     (let ((_hd237998238106_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e237997238103_)))
                                                           (_tl237999238108_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e237997238103_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl237999238108_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-null? _tl237990238084_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl237987238076_))
                           (let ((_e238000238111_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl237987238076_))))
                             (let ((_hd238001238114_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e238000238111_)))
                                   (_tl238002238116_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e238000238111_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl238002238116_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl237981238060_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl237972238036_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl237969238028_))
                                               (let ((_e238003238119_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl237969238028_))))
                                                 (let ((_hd238004238122_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e238003238119_)))
                                                       (_tl238005238124_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e238003238119_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl238005238124_))
                                                       ((lambda (_L238127_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L238128_
                         _L238129_
                         _L238130_
                         _L238131_)
                  (let* ((_get-kws-id238171_
                          (let ((__tmp250341
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L237941_)))
                                (__tmp250339
                                 (let ((__tmp250340
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L238131_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name237793_
                                    __tmp250340
                                    '"@"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp250341 '"__" __tmp250339)))
                         (_get-kws-id238173_
                          (let ((__tmp250342
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx237789_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _get-kws-id238171_
                             __tmp250342)))
                         (_main-id238175_
                          (let ((__tmp250345
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L237941_)))
                                (__tmp250343
                                 (let ((__tmp250344
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L238130_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name237793_
                                    __tmp250344
                                    '"%"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp250345 '"__" __tmp250343)))
                         (_main-id238177_
                          (let ((__tmp250346
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx237789_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _main-id238175_
                             __tmp250346)))
                         (_g250347_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _get-kws-id238173_)))
                         (_g250348_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _main-id238177_)))
                         (_new-kw-dispatch238181_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L238127_
                             _L238131_
                             _get-kws-id238173_)))
                         (_new-get-kws238183_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L238128_
                             _L238130_
                             _main-id238177_))))
                    (let ((__tmp250351
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L237941_)))
                          (__tmp250350
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _get-kws-id238173_)))
                          (__tmp250349
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _main-id238177_))))
                      (declare (not safe))
                      (gxc#verbose
                       '"lift kw-lambda dispatch "
                       __tmp250351
                       '" => "
                       __tmp250350
                       '" => "
                       __tmp250349))
                    (let ((__tmp250352
                           (let ((__tmp250353
                                  (let ((__tmp250366
                                         (let ((__tmp250367
                                                (let ((__tmp250368
                                                       (let ((__tmp250369
                                                              (let ((__tmp250371
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _main-id238177_ '())))
                            (__tmp250370
                             (let ()
                               (declare (not safe))
                               (cons _L238129_ '()))))
                        (declare (not safe))
                        (cons __tmp250371 __tmp250370))))
                 (declare (not safe))
                 (cons '%#define-values __tmp250369))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp250368
                                                   _stx237789_))))
                                           (declare (not safe))
                                           (gxc#lift-top-lambda-define-values%
                                            __tmp250367)))
                                        (__tmp250354
                                         (let ((__tmp250361
                                                (let ((__tmp250362
                                                       (let ((__tmp250363
                                                              (let ((__tmp250365
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _get-kws-id238173_ '())))
                            (__tmp250364
                             (let ()
                               (declare (not safe))
                               (cons _new-get-kws238183_ '()))))
                        (declare (not safe))
                        (cons __tmp250365 __tmp250364))))
                 (declare (not safe))
                 (cons '%#define-values __tmp250363))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp250362
                                                   _stx237789_)))
                                               (__tmp250355
                                                (let ((__tmp250356
                                                       (let ((__tmp250357
                                                              (let ((__tmp250358
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp250360
                                    (let ()
                                      (declare (not safe))
                                      (cons _L237941_ '())))
                                   (__tmp250359
                                    (let ()
                                      (declare (not safe))
                                      (cons _new-kw-dispatch238181_ '()))))
                               (declare (not safe))
                               (cons __tmp250360 __tmp250359))))
                        (declare (not safe))
                        (cons '%#define-values __tmp250358))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp250357 _stx237789_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp250356 '()))))
                                           (declare (not safe))
                                           (cons __tmp250361 __tmp250355))))
                                    (declare (not safe))
                                    (cons __tmp250366 __tmp250354))))
                             (declare (not safe))
                             (cons '%#begin __tmp250353))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp250352 _stx237789_))))
                _hd238004238122_
                _hd238001238114_
                _hd237998238106_
                _hd237995238098_
                _hd237977238050_)
               (let ()
                 (declare (not safe))
                 (_g237957238010_ _g237958238013_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g237957238010_
                                                  _g237958238013_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g237957238010_
                                              _g237958238013_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g237957238010_ _g237958238013_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g237957238010_ _g237958238013_)))))
                           (let ()
                             (declare (not safe))
                             (_g237957238010_ _g237958238013_)))
                       (let ()
                         (declare (not safe))
                         (_g237957238010_ _g237958238013_)))
                   (let ()
                     (declare (not safe))
                     (_g237957238010_ _g237958238013_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g237957238010_
                                                      _g237958238013_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g237957238010_
                                                  _g237958238013_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g237957238010_ _g237958238013_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g237957238010_ _g237958238013_)))))
                       (let ()
                         (declare (not safe))
                         (_g237957238010_ _g237958238013_)))))
               (let ()
                 (declare (not safe))
                 (_g237957238010_ _g237958238013_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g237957238010_
                                                  _g237958238013_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g237957238010_ _g237958238013_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g237957238010_ _g237958238013_)))))
                           (let ()
                             (declare (not safe))
                             (_g237957238010_ _g237958238013_)))))
                   (let ()
                     (declare (not safe))
                     (_g237957238010_ _g237958238013_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g237957238010_
                                                      _g237958238013_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g237957238010_
                                              _g237958238013_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g237957238010_ _g237958238013_))))))
                       (declare (not safe))
                       (_g237956238186_ _L237940_))))
                  (___kont249654249655_
                   (lambda (_L237886_ _L237887_)
                     (let ((__tmp250372
                            (let ((__tmp250373
                                   (let ((__tmp250374
                                          (let ((__tmp250375
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L237886_))))
                                            (declare (not safe))
                                            (cons __tmp250375 '()))))
                                     (declare (not safe))
                                     (cons _L237887_ __tmp250374))))
                              (declare (not safe))
                              (cons '%#define-values __tmp250373))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp250372 _stx237789_)))))
              (let* ((___match249739249740_
                      (lambda (_e237830237908_
                               _hd237831237911_
                               _tl237832237913_
                               _e237833237916_
                               _hd237834237919_
                               _tl237835237921_
                               _e237836237924_
                               _hd237837237927_
                               _tl237838237929_
                               _e237839237932_
                               _hd237840237935_
                               _tl237841237937_)
                        (let ((_L237940_ _hd237840237935_)
                              (_L237941_ _hd237837237927_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L237941_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L237940_)))
                              (___kont249652249653_ _L237940_ _L237941_)
                              (___kont249654249655_
                               _hd237840237935_
                               _hd237834237919_)))))
                     (___match249711249712_
                      (lambda (_e237816238194_
                               _hd237817238197_
                               _tl237818238199_
                               _e237819238202_
                               _hd237820238205_
                               _tl237821238207_
                               _e237822238210_
                               _hd237823238213_
                               _tl237824238215_
                               _e237825238218_
                               _hd237826238221_
                               _tl237827238223_)
                        (let ((_L238226_ _hd237826238221_)
                              (_L238227_ _hd237823238213_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L238227_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr? _L238226_)))
                              (___kont249650249651_ _L238226_ _L238227_)
                              (___match249739249740_
                               _e237816238194_
                               _hd237817238197_
                               _tl237818238199_
                               _e237819238202_
                               _hd237820238205_
                               _tl237821238207_
                               _e237822238210_
                               _hd237823238213_
                               _tl237824238215_
                               _e237825238218_
                               _hd237826238221_
                               _tl237827238223_)))))
                     (___match249683249684_
                      (lambda (_e237802238376_
                               _hd237803238379_
                               _tl237804238381_
                               _e237805238384_
                               _hd237806238387_
                               _tl237807238389_
                               _e237808238392_
                               _hd237809238395_
                               _tl237810238397_
                               _e237811238400_
                               _hd237812238403_
                               _tl237813238405_)
                        (let ((_L238408_ _hd237812238403_)
                              (_L238409_ _hd237809238395_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L238409_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#case-lambda-expr? _L238408_)))
                              (___kont249648249649_ _L238408_ _L238409_)
                              (___match249711249712_
                               _e237802238376_
                               _hd237803238379_
                               _tl237804238381_
                               _e237805238384_
                               _hd237806238387_
                               _tl237807238389_
                               _e237808238392_
                               _hd237809238395_
                               _tl237810238397_
                               _e237811238400_
                               _hd237812238403_
                               _tl237813238405_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx249646249647_))
                    (let ((_e237802238376_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx249646249647_))))
                      (let ((_tl237804238381_
                             (let ()
                               (declare (not safe))
                               (##cdr _e237802238376_)))
                            (_hd237803238379_
                             (let ()
                               (declare (not safe))
                               (##car _e237802238376_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl237804238381_))
                            (let ((_e237805238384_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl237804238381_))))
                              (let ((_tl237807238389_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e237805238384_)))
                                    (_hd237806238387_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e237805238384_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd237806238387_))
                                    (let ((_e237808238392_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd237806238387_))))
                                      (let ((_tl237810238397_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e237808238392_)))
                                            (_hd237809238395_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e237808238392_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl237810238397_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl237807238389_))
                                                (let ((_e237811238400_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl237807238389_))))
                                                  (let ((_tl237813238405_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e237811238400_)))
                                                        (_hd237812238403_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e237811238400_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl237813238405_))
                                                        (___match249683249684_
                                                         _e237802238376_
                                                         _hd237803238379_
                                                         _tl237804238381_
                                                         _e237805238384_
                                                         _hd237806238387_
                                                         _tl237807238389_
                                                         _e237808238392_
                                                         _hd237809238395_
                                                         _tl237810238397_
                                                         _e237811238400_
                                                         _hd237812238403_
                                                         _tl237813238405_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g237798237857_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g237798237857_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl237807238389_))
                                                (let ((_e237850237878_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl237807238389_))))
                                                  (let ((_tl237852237883_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e237850237878_)))
                                                        (_hd237851237881_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e237850237878_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl237852237883_))
                                                        (___kont249654249655_
                                                         _hd237851237881_
                                                         _hd237806238387_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g237798237857_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g237798237857_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl237807238389_))
                                        (let ((_e237850237878_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl237807238389_))))
                                          (let ((_tl237852237883_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e237850237878_)))
                                                (_hd237851237881_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e237850237878_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl237852237883_))
                                                (___kont249654249655_
                                                 _hd237851237881_
                                                 _hd237806238387_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g237798237857_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g237798237857_))))))
                            (let () (declare (not safe)) (_g237798237857_)))))
                    (let () (declare (not safe)) (_g237798237857_)))))))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_stx236721_)
        (letrec* ((_bind-e__248042248043_
                   (lambda (_id237773_ _expr237774_ _compile?237775_)
                     (let ((__tmp250378
                            (let ()
                              (declare (not safe))
                              (cons _id237773_ '())))
                           (__tmp250376
                            (let ((__tmp250377
                                   (if _compile?237775_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr237774_))
                                       _expr237774_)))
                              (declare (not safe))
                              (cons __tmp250377 '()))))
                       (declare (not safe))
                       (cons __tmp250378 __tmp250376))))
                  (_bind-e__0__248044248045_
                   (lambda (_id237780_ _expr237781_)
                     (let ((_compile?237783_ '#t))
                       (declare (not safe))
                       (_bind-e__248042248043_
                        _id237780_
                        _expr237781_
                        _compile?237783_))))
                  (_bind-e236723_
                   (lambda _g250380_
                     (let ((_g250379_
                            (let ()
                              (declare (not safe))
                              (##length _g250380_))))
                       (cond ((let () (declare (not safe)) (##fx= _g250379_ 2))
                              (apply (lambda (_id237780_ _expr237781_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__248044248045_
                                          _id237780_
                                          _expr237781_)))
                                     _g250380_))
                             ((let () (declare (not safe)) (##fx= _g250379_ 3))
                              (apply (lambda (_id237785_
                                              _expr237786_
                                              _compile?237787_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__248042248043_
                                          _id237785_
                                          _expr237786_
                                          _compile?237787_)))
                                     _g250380_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g250380_))))))
                  (_compile-bindings236724_
                   (lambda (_bindings237357_)
                     (let _lp237359_ ((_rest237361_ _bindings237357_)
                                      (_lift1237362_ '())
                                      (_lift2237363_ '())
                                      (_bind237364_ '()))
                       (let* ((_rest237365237373_ _rest237361_)
                              (_else237367237381_
                               (lambda ()
                                 (values (reverse _lift1237362_)
                                         (reverse _lift2237363_)
                                         (reverse _bind237364_))))
                              (_K237369237760_
                               (lambda (_rest237384_ _hd237385_)
                                 (let* ((___stx249782249783_ _hd237385_)
                                        (_g237389237425_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx249782249783_)))))
                                   (let ((___kont249784249785_
                                          (lambda (_L237667_ _L237668_)
                                            (let* ((___stx249762249763_
                                                    _L237667_)
                                                   (_g237683237697_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx249762249763_)))))
                                              (let ((___kont249764249765_
                                                     (lambda (_L237745_)
                                                       (let ((__tmp250381
                                                              (let ((__tmp250382
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__248042248043_
                                _L237668_
                                _L237667_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp250382 _bind237364_))))
                 (declare (not safe))
                 (_lp237359_
                  _rest237384_
                  _lift1237362_
                  _lift2237363_
                  __tmp250381))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont249766249767_
                                                     (lambda (_L237710_)
                                                       (let ((_g250383_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx236721_
                         _L237668_
                         _L237710_
                         '#t))))
                 (begin
                   (let ((_g250384_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g250383_)
                                (##vector-length _g250383_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g250384_ 3)))
                         (error "Context expects 3 values" _g250384_)))
                   (let ((_ids237720_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g250383_ 0)))
                         (_impls237721_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g250383_ 1)))
                         (_clauses237722_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g250383_ 2))))
                     (let* ((_g250385_
                             (for-each gx#core-bind-runtime! _ids237720_))
                            (_xbind237725_
                             (map _bind-e236723_ _ids237720_ _impls237721_))
                            (_expr*237727_
                             (let ((__tmp250387
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses237722_)))
                                   (__tmp250386
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp250387
                                __tmp250386)))
                            (_bind*237729_
                             (let ()
                               (declare (not safe))
                               (_bind-e__248042248043_
                                _L237668_
                                _expr*237727_
                                '#f))))
                       (let ((__tmp250389
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L237668_)))
                             (__tmp250388
                              (map gxc#identifier-symbol _ids237720_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp250389
                          '" => "
                          __tmp250388))
                       (let ((__tmp250391
                              (let ()
                                (declare (not safe))
                                (foldl1 cons _lift2237363_ _xbind237725_)))
                             (__tmp250390
                              (let ()
                                (declare (not safe))
                                (cons _bind*237729_ _bind237364_))))
                         (declare (not safe))
                         (_lp237359_
                          _rest237384_
                          _lift1237362_
                          __tmp250391
                          __tmp250390)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match249773249774_
                                                       (lambda (_e237686237737_
                                                                _hd237687237740_
                                                                _tl237688237742_)
                                                         (let ((_L237745_
                                                                _tl237688237742_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L237745_))
                       (___kont249764249765_ _L237745_)
                       (___kont249766249767_ _tl237688237742_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx249762249763_))
                                                      (let ((_e237686237737_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx249762249763_))))
                (let ((_tl237688237742_
                       (let () (declare (not safe)) (##cdr _e237686237737_)))
                      (_hd237687237740_
                       (let () (declare (not safe)) (##car _e237686237737_))))
                  (___match249773249774_
                   _e237686237737_
                   _hd237687237740_
                   _tl237688237742_)))
              (let () (declare (not safe)) (_g237683237697_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont249786249787_
                                          (lambda (_L237495_ _L237496_)
                                            (let* ((_g237510237540_
                                                    (lambda (_g237511237537_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g237511237537_))))
                                                   (_g237509237635_
                                                    (lambda (_g237511237543_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g237511237543_))
                                                          (let ((_e237515237545_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g237511237543_))))
                    (let ((_hd237516237548_
                           (let ()
                             (declare (not safe))
                             (##car _e237515237545_)))
                          (_tl237517237550_
                           (let ()
                             (declare (not safe))
                             (##cdr _e237515237545_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl237517237550_))
                          (let ((_e237518237553_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl237517237550_))))
                            (let ((_hd237519237556_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e237518237553_)))
                                  (_tl237520237558_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e237518237553_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd237519237556_))
                                  (let ((_e237521237561_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd237519237556_))))
                                    (let ((_hd237522237564_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e237521237561_)))
                                          (_tl237523237566_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e237521237561_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd237522237564_))
                                          (let ((_e237524237569_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd237522237564_))))
                                            (let ((_hd237525237572_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e237524237569_)))
                                                  (_tl237526237574_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e237524237569_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd237525237572_))
                                                  (let ((_e237527237577_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd237525237572_))))
                                                    (let ((_hd237528237580_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e237527237577_)))
                                                          (_tl237529237582_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e237527237577_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl237529237582_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl237526237574_))
                      (let ((_e237530237585_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl237526237574_))))
                        (let ((_hd237531237588_
                               (let ()
                                 (declare (not safe))
                                 (##car _e237530237585_)))
                              (_tl237532237590_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e237530237585_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl237532237590_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl237523237566_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl237520237558_))
                                      (let ((_e237533237593_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl237520237558_))))
                                        (let ((_hd237534237596_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e237533237593_)))
                                              (_tl237535237598_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e237533237593_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl237535237598_))
                                              ((lambda (_L237601_
                                                        _L237602_
                                                        _L237603_)
                                                 (let* ((_lambda-id237627_
                                                         (let ((__tmp250393
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L237496_)))
                       (__tmp250392 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp250393 __tmp250392)))
                (_lambda-id237629_
                 (let ((__tmp250394
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx236721_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id237627_ __tmp250394)))
                (_g250395_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id237629_)))
                (_new-case-lambda-expr237632_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L237601_
                    _L237603_
                    _lambda-id237629_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp250397
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L237496_)))
                                                         (__tmp250396
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id237629_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp250397
                                                      '" => "
                                                      __tmp250396))
                                                   (let ((__tmp250400
                                                          (let ((__tmp250401
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__248042248043_
                            _L237496_
                            _new-case-lambda-expr237632_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp250401 _rest237384_)))
                 (__tmp250398
                  (let ((__tmp250399
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__248044248045_
                            _lambda-id237629_
                            _L237602_))))
                    (declare (not safe))
                    (cons __tmp250399 _lift1237362_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp237359_
                                                      __tmp250400
                                                      __tmp250398
                                                      _lift2237363_
                                                      _bind237364_))))
                                               _hd237534237596_
                                               _hd237531237588_
                                               _hd237528237580_)
                                              (let ()
                                                (declare (not safe))
                                                (_g237510237540_
                                                 _g237511237543_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g237510237540_ _g237511237543_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g237510237540_ _g237511237543_)))
                              (let ()
                                (declare (not safe))
                                (_g237510237540_ _g237511237543_)))))
                      (let ()
                        (declare (not safe))
                        (_g237510237540_ _g237511237543_)))
                  (let ()
                    (declare (not safe))
                    (_g237510237540_ _g237511237543_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g237510237540_
                                                     _g237511237543_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g237510237540_
                                             _g237511237543_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g237510237540_ _g237511237543_)))))
                          (let ()
                            (declare (not safe))
                            (_g237510237540_ _g237511237543_)))))
                  (let ()
                    (declare (not safe))
                    (_g237510237540_ _g237511237543_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g237509237635_ _L237495_))))
                                         (___kont249788249789_
                                          (lambda (_L237446_ _L237447_)
                                            (let ((__tmp250402
                                                   (let ((__tmp250403
                                                          (let ((__tmp250404
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp250405
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L237446_))))
                           (declare (not safe))
                           (cons __tmp250405 '()))))
                    (declare (not safe))
                    (cons _L237447_ __tmp250404))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp250403
                                                           _bind237364_))))
                                              (declare (not safe))
                                              (_lp237359_
                                               _rest237384_
                                               _lift1237362_
                                               _lift2237363_
                                               __tmp250402)))))
                                     (let* ((___match249833249834_
                                             (lambda (_e237404237471_
                                                      _hd237405237474_
                                                      _tl237406237476_
                                                      _e237407237479_
                                                      _hd237408237482_
                                                      _tl237409237484_
                                                      _e237410237487_
                                                      _hd237411237490_
                                                      _tl237412237492_)
                                               (let ((_L237495_
                                                      _hd237411237490_)
                                                     (_L237496_
                                                      _hd237408237482_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L237496_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L237495_)))
                                                     (___kont249786249787_
                                                      _L237495_
                                                      _L237496_)
                                                     (___kont249788249789_
                                                      _hd237411237490_
                                                      _hd237405237474_)))))
                                            (___match249811249812_
                                             (lambda (_e237393237643_
                                                      _hd237394237646_
                                                      _tl237395237648_
                                                      _e237396237651_
                                                      _hd237397237654_
                                                      _tl237398237656_
                                                      _e237399237659_
                                                      _hd237400237662_
                                                      _tl237401237664_)
                                               (let ((_L237667_
                                                      _hd237400237662_)
                                                     (_L237668_
                                                      _hd237397237654_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L237668_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L237667_)))
                                                     (___kont249784249785_
                                                      _L237667_
                                                      _L237668_)
                                                     (___match249833249834_
                                                      _e237393237643_
                                                      _hd237394237646_
                                                      _tl237395237648_
                                                      _e237396237651_
                                                      _hd237397237654_
                                                      _tl237398237656_
                                                      _e237399237659_
                                                      _hd237400237662_
                                                      _tl237401237664_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx249782249783_))
                                           (let ((_e237393237643_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx249782249783_))))
                                             (let ((_tl237395237648_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e237393237643_)))
                                                   (_hd237394237646_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e237393237643_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd237394237646_))
                                                   (let ((_e237396237651_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd237394237646_))))
                                                     (let ((_tl237398237656_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e237396237651_)))
                                                           (_hd237397237654_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e237396237651_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl237398237656_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl237395237648_))
                       (let ((_e237399237659_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl237395237648_))))
                         (let ((_tl237401237664_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e237399237659_)))
                               (_hd237400237662_
                                (let ()
                                  (declare (not safe))
                                  (##car _e237399237659_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl237401237664_))
                               (___match249811249812_
                                _e237393237643_
                                _hd237394237646_
                                _tl237395237648_
                                _e237396237651_
                                _hd237397237654_
                                _tl237398237656_
                                _e237399237659_
                                _hd237400237662_
                                _tl237401237664_)
                               (let ()
                                 (declare (not safe))
                                 (_g237389237425_)))))
                       (let () (declare (not safe)) (_g237389237425_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl237395237648_))
                       (let ((_e237418237438_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl237395237648_))))
                         (let ((_tl237420237443_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e237418237438_)))
                               (_hd237419237441_
                                (let ()
                                  (declare (not safe))
                                  (##car _e237418237438_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl237420237443_))
                               (___kont249788249789_
                                _hd237419237441_
                                _hd237394237646_)
                               (let ()
                                 (declare (not safe))
                                 (_g237389237425_)))))
                       (let () (declare (not safe)) (_g237389237425_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl237395237648_))
                                                       (let ((_e237418237438_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl237395237648_))))
                 (let ((_tl237420237443_
                        (let () (declare (not safe)) (##cdr _e237418237438_)))
                       (_hd237419237441_
                        (let () (declare (not safe)) (##car _e237418237438_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl237420237443_))
                       (___kont249788249789_ _hd237419237441_ _hd237394237646_)
                       (let () (declare (not safe)) (_g237389237425_)))))
               (let () (declare (not safe)) (_g237389237425_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g237389237425_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest237365237373_))
                             (let ((_hd237370237763_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest237365237373_)))
                                   (_tl237371237765_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest237365237373_))))
                               (let* ((_hd237768_ _hd237370237763_)
                                      (_rest237770_ _tl237371237765_))
                                 (declare (not safe))
                                 (_K237369237760_ _rest237770_ _hd237768_)))
                             (let ()
                               (declare (not safe))
                               (_else237367237381_)))))))
                  (_lift-kw-lambda?236725_
                   (lambda (_bind237281_)
                     (let* ((___stx249850249851_ _bind237281_)
                            (_g237284237301_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx249850249851_)))))
                       (let ((___kont249852249853_
                              (lambda (_L237337_ _L237338_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _L237338_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#kw-lambda-expr? _L237337_))
                                    '#f)))
                             (___kont249854249855_ (lambda () '#f)))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? ___stx249850249851_))
                             (let ((_e237288237313_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e ___stx249850249851_))))
                               (let ((_tl237290237318_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e237288237313_)))
                                     (_hd237289237316_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e237288237313_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd237289237316_))
                                     (let ((_e237291237321_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd237289237316_))))
                                       (let ((_tl237293237326_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e237291237321_)))
                                             (_hd237292237324_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e237291237321_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl237293237326_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl237290237318_))
                                                 (let ((_e237294237329_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl237290237318_))))
                                                   (let ((_tl237296237334_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e237294237329_)))
                                                         (_hd237295237332_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e237294237329_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl237296237334_))
                                                         (___kont249852249853_
                                                          _hd237295237332_
                                                          _hd237292237324_)
                                                         (___kont249854249855_))))
                                                 (___kont249854249855_))
                                             (___kont249854249855_))))
                                     (___kont249854249855_))))
                             (___kont249854249855_))))))
                  (_lift-kw-lambda-bindings236726_
                   (lambda (_bindings236893_)
                     (let _lp236895_ ((_rest236897_ _bindings236893_)
                                      (_lift1236898_ '())
                                      (_lift2236899_ '())
                                      (_bind236900_ '()))
                       (let* ((_rest236901236909_ _rest236897_)
                              (_else236903236917_
                               (lambda ()
                                 (values (reverse _lift1236898_)
                                         (reverse _lift2236899_)
                                         (reverse _bind236900_))))
                              (_K236905237269_
                               (lambda (_rest236920_ _hd236921_)
                                 (let* ((___stx249880249881_ _hd236921_)
                                        (_g236924236949_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx249880249881_)))))
                                   (let ((___kont249882249883_
                                          (lambda (_L237019_ _L237020_)
                                            (let* ((_g237034237087_
                                                    (lambda (_g237035237084_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g237035237084_))))
                                                   (_g237033237263_
                                                    (lambda (_g237035237090_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g237035237090_))
                                                          (let ((_e237041237092_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g237035237090_))))
                    (let ((_hd237042237095_
                           (let ()
                             (declare (not safe))
                             (##car _e237041237092_)))
                          (_tl237043237097_
                           (let ()
                             (declare (not safe))
                             (##cdr _e237041237092_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl237043237097_))
                          (let ((_e237044237100_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl237043237097_))))
                            (let ((_hd237045237103_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e237044237100_)))
                                  (_tl237046237105_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e237044237100_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd237045237103_))
                                  (let ((_e237047237108_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd237045237103_))))
                                    (let ((_hd237048237111_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e237047237108_)))
                                          (_tl237049237113_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e237047237108_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd237048237111_))
                                          (let ((_e237050237116_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd237048237111_))))
                                            (let ((_hd237051237119_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e237050237116_)))
                                                  (_tl237052237121_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e237050237116_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd237051237119_))
                                                  (let ((_e237053237124_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd237051237119_))))
                                                    (let ((_hd237054237127_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e237053237124_)))
                                                          (_tl237055237129_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e237053237124_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl237055237129_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl237052237121_))
                      (let ((_e237056237132_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl237052237121_))))
                        (let ((_hd237057237135_
                               (let ()
                                 (declare (not safe))
                                 (##car _e237056237132_)))
                              (_tl237058237137_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e237056237132_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd237057237135_))
                              (let ((_e237059237140_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd237057237135_))))
                                (let ((_hd237060237143_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e237059237140_)))
                                      (_tl237061237145_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e237059237140_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl237061237145_))
                                      (let ((_e237062237148_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl237061237145_))))
                                        (let ((_hd237063237151_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e237062237148_)))
                                              (_tl237064237153_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e237062237148_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd237063237151_))
                                              (let ((_e237065237156_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd237063237151_))))
                                                (let ((_hd237066237159_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e237065237156_)))
                                                      (_tl237067237161_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e237065237156_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd237066237159_))
                                                      (let ((_e237068237164_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd237066237159_))))
                (let ((_hd237069237167_
                       (let () (declare (not safe)) (##car _e237068237164_)))
                      (_tl237070237169_
                       (let () (declare (not safe)) (##cdr _e237068237164_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd237069237167_))
                      (let ((_e237071237172_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd237069237167_))))
                        (let ((_hd237072237175_
                               (let ()
                                 (declare (not safe))
                                 (##car _e237071237172_)))
                              (_tl237073237177_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e237071237172_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl237073237177_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl237070237169_))
                                  (let ((_e237074237180_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl237070237169_))))
                                    (let ((_hd237075237183_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e237074237180_)))
                                          (_tl237076237185_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e237074237180_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl237076237185_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl237067237161_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl237064237153_))
                                                  (let ((_e237077237188_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl237064237153_))))
                                                    (let ((_hd237078237191_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e237077237188_)))
                                                          (_tl237079237193_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e237077237188_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl237079237193_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl237058237137_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl237049237113_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl237046237105_))
                              (let ((_e237080237196_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl237046237105_))))
                                (let ((_hd237081237199_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e237080237196_)))
                                      (_tl237082237201_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e237080237196_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl237082237201_))
                                      ((lambda (_L237204_
                                                _L237205_
                                                _L237206_
                                                _L237207_
                                                _L237208_)
                                         (let* ((_get-kws-id237248_
                                                 (let ((__tmp250407
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L237020_)))
                                                       (__tmp250406
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp250407
                                                    __tmp250406)))
                                                (_get-kws-id237250_
                                                 (let ((__tmp250408
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx236721_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id237248_
                                                    __tmp250408)))
                                                (_main-id237252_
                                                 (let ((__tmp250410
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L237020_)))
                                                       (__tmp250409
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp250410
                                                    __tmp250409)))
                                                (_main-id237254_
                                                 (let ((__tmp250411
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx236721_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id237252_
                                                    __tmp250411)))
                                                (_g250412_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id237250_)))
                                                (_g250413_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id237254_)))
                                                (_new-kw-dispatch237258_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L237204_
                                                    _L237208_
                                                    _get-kws-id237250_)))
                                                (_new-get-kws237260_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L237205_
                                                    _L237207_
                                                    _main-id237254_))))
                                           (let ((__tmp250416
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L237020_)))
                                                 (__tmp250415
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id237250_)))
                                                 (__tmp250414
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id237254_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp250416
                                              '" => "
                                              __tmp250415
                                              '" => "
                                              __tmp250414))
                                           (let ((__tmp250421
                                                  (let ((__tmp250422
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__248042248043_
                                                            _main-id237254_
                                                            _L237206_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp250422
                                                          _lift1236898_)))
                                                 (__tmp250419
                                                  (let ((__tmp250420
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__248042248043_
                                                            _get-kws-id237250_
                                                            _new-get-kws237260_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp250420
                                                          _lift2236899_)))
                                                 (__tmp250417
                                                  (let ((__tmp250418
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__248042248043_
                                                            _L237020_
                                                            _new-kw-dispatch237258_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp250418
                                                          _bind236900_))))
                                             (declare (not safe))
                                             (_lp236895_
                                              _rest236920_
                                              __tmp250421
                                              __tmp250419
                                              __tmp250417))))
                                       _hd237081237199_
                                       _hd237078237191_
                                       _hd237075237183_
                                       _hd237072237175_
                                       _hd237054237127_)
                                      (let ()
                                        (declare (not safe))
                                        (_g237034237087_ _g237035237090_)))))
                              (let ()
                                (declare (not safe))
                                (_g237034237087_ _g237035237090_)))
                          (let ()
                            (declare (not safe))
                            (_g237034237087_ _g237035237090_)))
                      (let ()
                        (declare (not safe))
                        (_g237034237087_ _g237035237090_)))
                  (let ()
                    (declare (not safe))
                    (_g237034237087_ _g237035237090_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g237034237087_
                                                     _g237035237090_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g237034237087_
                                                 _g237035237090_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g237034237087_
                                             _g237035237090_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g237034237087_ _g237035237090_)))
                              (let ()
                                (declare (not safe))
                                (_g237034237087_ _g237035237090_)))))
                      (let ()
                        (declare (not safe))
                        (_g237034237087_ _g237035237090_)))))
              (let ()
                (declare (not safe))
                (_g237034237087_ _g237035237090_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g237034237087_
                                                 _g237035237090_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g237034237087_ _g237035237090_)))))
                              (let ()
                                (declare (not safe))
                                (_g237034237087_ _g237035237090_)))))
                      (let ()
                        (declare (not safe))
                        (_g237034237087_ _g237035237090_)))
                  (let ()
                    (declare (not safe))
                    (_g237034237087_ _g237035237090_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g237034237087_
                                                     _g237035237090_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g237034237087_
                                             _g237035237090_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g237034237087_ _g237035237090_)))))
                          (let ()
                            (declare (not safe))
                            (_g237034237087_ _g237035237090_)))))
                  (let ()
                    (declare (not safe))
                    (_g237034237087_ _g237035237090_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g237033237263_ _L237019_))))
                                         (___kont249884249885_
                                          (lambda (_L236970_ _L236971_)
                                            (let ((__tmp250423
                                                   (let ((__tmp250424
                                                          (let ((__tmp250425
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L236970_ '()))))
                    (declare (not safe))
                    (cons _L236971_ __tmp250425))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp250424
                                                           _bind236900_))))
                                              (declare (not safe))
                                              (_lp236895_
                                               _rest236920_
                                               _lift1236898_
                                               _lift2236899_
                                               __tmp250423)))))
                                     (let ((___match249907249908_
                                            (lambda (_e236928236995_
                                                     _hd236929236998_
                                                     _tl236930237000_
                                                     _e236931237003_
                                                     _hd236932237006_
                                                     _tl236933237008_
                                                     _e236934237011_
                                                     _hd236935237014_
                                                     _tl236936237016_)
                                              (let ((_L237019_
                                                     _hd236935237014_)
                                                    (_L237020_
                                                     _hd236932237006_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _L237020_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#kw-lambda-expr?
                                                            _L237019_)))
                                                    (___kont249882249883_
                                                     _L237019_
                                                     _L237020_)
                                                    (___kont249884249885_
                                                     _hd236935237014_
                                                     _hd236929236998_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx249880249881_))
                                           (let ((_e236928236995_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx249880249881_))))
                                             (let ((_tl236930237000_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e236928236995_)))
                                                   (_hd236929236998_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e236928236995_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd236929236998_))
                                                   (let ((_e236931237003_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd236929236998_))))
                                                     (let ((_tl236933237008_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e236931237003_)))
                                                           (_hd236932237006_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e236931237003_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl236933237008_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl236930237000_))
                       (let ((_e236934237011_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl236930237000_))))
                         (let ((_tl236936237016_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e236934237011_)))
                               (_hd236935237014_
                                (let ()
                                  (declare (not safe))
                                  (##car _e236934237011_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl236936237016_))
                               (___match249907249908_
                                _e236928236995_
                                _hd236929236998_
                                _tl236930237000_
                                _e236931237003_
                                _hd236932237006_
                                _tl236933237008_
                                _e236934237011_
                                _hd236935237014_
                                _tl236936237016_)
                               (let ()
                                 (declare (not safe))
                                 (_g236924236949_)))))
                       (let () (declare (not safe)) (_g236924236949_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl236930237000_))
                       (let ((_e236942236962_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl236930237000_))))
                         (let ((_tl236944236967_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e236942236962_)))
                               (_hd236943236965_
                                (let ()
                                  (declare (not safe))
                                  (##car _e236942236962_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl236944236967_))
                               (___kont249884249885_
                                _hd236943236965_
                                _hd236929236998_)
                               (let ()
                                 (declare (not safe))
                                 (_g236924236949_)))))
                       (let () (declare (not safe)) (_g236924236949_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl236930237000_))
                                                       (let ((_e236942236962_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl236930237000_))))
                 (let ((_tl236944236967_
                        (let () (declare (not safe)) (##cdr _e236942236962_)))
                       (_hd236943236965_
                        (let () (declare (not safe)) (##car _e236942236962_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl236944236967_))
                       (___kont249884249885_ _hd236943236965_ _hd236929236998_)
                       (let () (declare (not safe)) (_g236924236949_)))))
               (let () (declare (not safe)) (_g236924236949_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g236924236949_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest236901236909_))
                             (let ((_hd236906237272_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest236901236909_)))
                                   (_tl236907237274_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest236901236909_))))
                               (let* ((_hd237277_ _hd236906237272_)
                                      (_rest237279_ _tl236907237274_))
                                 (declare (not safe))
                                 (_K236905237269_ _rest237279_ _hd237277_)))
                             (let ()
                               (declare (not safe))
                               (_else236903236917_))))))))
          (let* ((___stx249924249925_ _stx236721_)
                 (_g236729236755_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx249924249925_)))))
            (let ((___kont249926249927_
                   (lambda (_L236815_ _L236816_)
                     (let ((__tmp250427
                            (lambda ()
                              (if (let ((__tmp250428
                                         (let ((__tmp250429
                                                (lambda (_g236844236847_
                                                         _g236845236849_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g236844236847_
                                                          _g236845236849_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp250429
                                                   '()
                                                   _L236816_))))
                                    (declare (not safe))
                                    (ormap1 _lift-kw-lambda?236725_
                                            __tmp250428))
                                  (let ((_g250430_
                                         (let ((__tmp250432
                                                (let ((__tmp250433
                                                       (lambda (_g236851236854_
                                                                _g236852236856_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g236851236854_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g236852236856_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp250433
                                                          '()
                                                          _L236816_))))
                                           (declare (not safe))
                                           (_lift-kw-lambda-bindings236726_
                                            __tmp250432))))
                                    (begin
                                      (let ((_g250431_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g250430_)
                                                   (##vector-length _g250430_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g250431_ 3)))
                                            (error "Context expects 3 values"
                                                   _g250431_)))
                                      (let ((_lift1236859_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g250430_ 0)))
                                            (_lift2236860_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g250430_ 1)))
                                            (_hd236861_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g250430_ 2))))
                                        (let* ((_expr236863_
                                                (let ((__tmp250434
                                                       (let ((__tmp250435
                                                              (let ((__tmp250436
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L236815_ '()))))
                        (declare (not safe))
                        (cons _hd236861_ __tmp250436))))
                 (declare (not safe))
                 (cons '%#let-values __tmp250435))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp250434
                                                   _stx236721_)))
                                               (_expr236865_
                                                (let ((__tmp250437
                                                       (let ((__tmp250438
                                                              (let ((__tmp250439
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr236863_ '()))))
                        (declare (not safe))
                        (cons _lift2236860_ __tmp250439))))
                 (declare (not safe))
                 (cons '%#let-values __tmp250438))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp250437
                                                   _stx236721_)))
                                               (_expr236867_
                                                (let ((__tmp250440
                                                       (let ((__tmp250441
                                                              (let ((__tmp250442
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr236865_ '()))))
                        (declare (not safe))
                        (cons _lift1236859_ __tmp250442))))
                 (declare (not safe))
                 (cons '%#let-values __tmp250441))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp250440
                                                   _stx236721_))))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#lift-top-lambda-let-values%
                                             _expr236867_))))))
                                  (let ((_g250443_
                                         (let ((__tmp250445
                                                (let ((__tmp250446
                                                       (lambda (_g236869236872_
                                                                _g236870236874_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g236869236872_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g236870236874_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp250446
                                                          '()
                                                          _L236816_))))
                                           (declare (not safe))
                                           (_compile-bindings236724_
                                            __tmp250445))))
                                    (begin
                                      (let ((_g250444_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g250443_)
                                                   (##vector-length _g250443_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g250444_ 3)))
                                            (error "Context expects 3 values"
                                                   _g250444_)))
                                      (let ((_lift1236877_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g250443_ 0)))
                                            (_lift2236878_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g250443_ 1)))
                                            (_hd236879_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g250443_ 2))))
                                        (let* ((_body236881_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _L236815_)))
                                               (_expr236883_
                                                (let ((__tmp250447
                                                       (let ((__tmp250448
                                                              (let ((__tmp250449
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _body236881_ '()))))
                        (declare (not safe))
                        (cons _hd236879_ __tmp250449))))
                 (declare (not safe))
                 (cons '%#let-values __tmp250448))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp250447
                                                   _stx236721_)))
                                               (_expr236885_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift2236878_))
                                                    _expr236883_
                                                    (let ((__tmp250450
                                                           (let ((__tmp250451
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp250452
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr236883_ '()))))
                            (declare (not safe))
                            (cons _lift2236878_ __tmp250452))))
                     (declare (not safe))
                     (cons '%#let-values __tmp250451))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp250450 _stx236721_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_expr236887_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift1236877_))
                                                    _expr236885_
                                                    (let ((__tmp250453
                                                           (let ((__tmp250454
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp250455
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr236885_ '()))))
                            (declare (not safe))
                            (cons _lift1236877_ __tmp250455))))
                     (declare (not safe))
                     (cons '%#let-values __tmp250454))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp250453 _stx236721_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _expr236887_)))))))
                           (__tmp250426
                            (let ((__obj250130
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj250130)
                              __obj250130)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp250427
                        gx#current-expander-context
                        __tmp250426))))
                  (___kont249930249931_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx236721_)))))
              (let ((___match249951249952_
                     (lambda (_e236733236767_
                              _hd236734236770_
                              _tl236735236772_
                              _e236736236775_
                              _hd236737236778_
                              _tl236738236780_
                              ___splice249928249929_
                              _target236739236783_
                              _tl236741236785_)
                       (letrec ((_loop236742236788_
                                 (lambda (_hd236740236791_ _bind236746236793_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd236740236791_))
                                       (let ((_e236743236796_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd236740236791_))))
                                         (let ((_lp-tl236745236801_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e236743236796_)))
                                               (_lp-hd236744236799_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e236743236796_))))
                                           (let ((__tmp250456
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd236744236799_
                                                          _bind236746236793_))))
                                             (declare (not safe))
                                             (_loop236742236788_
                                              _lp-tl236745236801_
                                              __tmp250456))))
                                       (let ((_bind236747236804_
                                              (reverse _bind236746236793_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl236738236780_))
                                             (let ((_e236748236807_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl236738236780_))))
                                               (let ((_tl236750236812_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e236748236807_)))
                                                     (_hd236749236810_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e236748236807_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl236750236812_))
                                                     (let ((_L236815_
                                                            _hd236749236810_)
                                                           (_L236816_
                                                            _bind236747236804_))
                                                       (if (let ((__tmp250457
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp250458
                                 (lambda (_g236836236839_ _g236837236841_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g236836236839_ _g236837236841_)))))
                            (declare (not safe))
                            (foldr1 __tmp250458 '() _L236816_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp250457))
                   (___kont249926249927_ _L236815_ _L236816_)
                   (___kont249930249931_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont249930249931_))))
                                             (___kont249930249931_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop236742236788_ _target236739236783_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx249924249925_))
                    (let ((_e236733236767_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx249924249925_))))
                      (let ((_tl236735236772_
                             (let ()
                               (declare (not safe))
                               (##cdr _e236733236767_)))
                            (_hd236734236770_
                             (let ()
                               (declare (not safe))
                               (##car _e236733236767_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl236735236772_))
                            (let ((_e236736236775_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl236735236772_))))
                              (let ((_tl236738236780_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e236736236775_)))
                                    (_hd236737236778_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e236736236775_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd236737236778_))
                                    (let ((___splice249928249929_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd236737236778_
                                              '0))))
                                      (let ((_tl236741236785_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice249928249929_
                                                '1)))
                                            (_target236739236783_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice249928249929_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl236741236785_))
                                            (___match249951249952_
                                             _e236733236767_
                                             _hd236734236770_
                                             _tl236735236772_
                                             _e236736236775_
                                             _hd236737236778_
                                             _tl236738236780_
                                             ___splice249928249929_
                                             _target236739236783_
                                             _tl236741236785_)
                                            (___kont249930249931_))))
                                    (___kont249930249931_))))
                            (___kont249930249931_))))
                    (___kont249930249931_))))))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_stx235865_)
        (letrec* ((_bind-e__248047248048_
                   (lambda (_id236705_ _expr236706_ _compile?236707_)
                     (let ((__tmp250461
                            (let ()
                              (declare (not safe))
                              (cons _id236705_ '())))
                           (__tmp250459
                            (let ((__tmp250460
                                   (if _compile?236707_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr236706_))
                                       _expr236706_)))
                              (declare (not safe))
                              (cons __tmp250460 '()))))
                       (declare (not safe))
                       (cons __tmp250461 __tmp250459))))
                  (_bind-e__0__248049248050_
                   (lambda (_id236712_ _expr236713_)
                     (let ((_compile?236715_ '#t))
                       (declare (not safe))
                       (_bind-e__248047248048_
                        _id236712_
                        _expr236713_
                        _compile?236715_))))
                  (_bind-e235867_
                   (lambda _g250463_
                     (let ((_g250462_
                            (let ()
                              (declare (not safe))
                              (##length _g250463_))))
                       (cond ((let () (declare (not safe)) (##fx= _g250462_ 2))
                              (apply (lambda (_id236712_ _expr236713_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__248049248050_
                                          _id236712_
                                          _expr236713_)))
                                     _g250463_))
                             ((let () (declare (not safe)) (##fx= _g250462_ 3))
                              (apply (lambda (_id236717_
                                              _expr236718_
                                              _compile?236719_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__248047248048_
                                          _id236717_
                                          _expr236718_
                                          _compile?236719_)))
                                     _g250463_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g250463_))))))
                  (_compile-bindings235868_
                   (lambda (_rest236003_)
                     (let _lp236005_ ((_rest236007_ _rest236003_)
                                      (_bind236008_ '()))
                       (let* ((_rest236009236017_ _rest236007_)
                              (_else236011236025_
                               (lambda () (reverse _bind236008_)))
                              (_K236013236692_
                               (lambda (_rest236028_ _hd236029_)
                                 (let* ((___stx249974249975_ _hd236029_)
                                        (_g236034236081_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx249974249975_)))))
                                   (let ((___kont249976249977_
                                          (lambda (_L236599_ _L236600_)
                                            (let* ((___stx249954249955_
                                                    _L236599_)
                                                   (_g236615236629_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx249954249955_)))))
                                              (let ((___kont249956249957_
                                                     (lambda (_L236677_)
                                                       (let ((__tmp250464
                                                              (let ((__tmp250465
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__248047248048_
                                _L236600_
                                _L236599_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp250465 _bind236008_))))
                 (declare (not safe))
                 (_lp236005_ _rest236028_ __tmp250464))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont249958249959_
                                                     (lambda (_L236642_)
                                                       (let ((_g250466_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx235865_
                         _L236600_
                         _L236642_
                         '#t))))
                 (begin
                   (let ((_g250467_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g250466_)
                                (##vector-length _g250466_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g250467_ 3)))
                         (error "Context expects 3 values" _g250467_)))
                   (let ((_ids236652_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g250466_ 0)))
                         (_impls236653_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g250466_ 1)))
                         (_clauses236654_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g250466_ 2))))
                     (let* ((_g250468_
                             (for-each gx#core-bind-runtime! _ids236652_))
                            (_xbind236657_
                             (map _bind-e235867_ _ids236652_ _impls236653_))
                            (_expr*236659_
                             (let ((__tmp250470
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses236654_)))
                                   (__tmp250469
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp250470
                                __tmp250469)))
                            (_bind*236661_
                             (let ()
                               (declare (not safe))
                               (_bind-e__248047248048_
                                _L236600_
                                _expr*236659_
                                '#f))))
                       (let ((__tmp250472
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L236600_)))
                             (__tmp250471
                              (map gxc#identifier-symbol _ids236652_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp250472
                          '" => "
                          __tmp250471))
                       (let ((__tmp250473
                              (let ((__tmp250474
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _bind236008_
                                               _xbind236657_))))
                                (declare (not safe))
                                (cons _bind*236661_ __tmp250474))))
                         (declare (not safe))
                         (_lp236005_ _rest236028_ __tmp250473)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match249965249966_
                                                       (lambda (_e236618236669_
                                                                _hd236619236672_
                                                                _tl236620236674_)
                                                         (let ((_L236677_
                                                                _tl236620236674_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L236677_))
                       (___kont249956249957_ _L236677_)
                       (___kont249958249959_ _tl236620236674_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx249954249955_))
                                                      (let ((_e236618236669_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx249954249955_))))
                (let ((_tl236620236674_
                       (let () (declare (not safe)) (##cdr _e236618236669_)))
                      (_hd236619236672_
                       (let () (declare (not safe)) (##car _e236618236669_))))
                  (___match249965249966_
                   _e236618236669_
                   _hd236619236672_
                   _tl236620236674_)))
              (let () (declare (not safe)) (_g236615236629_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont249978249979_
                                          (lambda (_L236427_ _L236428_)
                                            (let* ((_g236442236472_
                                                    (lambda (_g236443236469_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g236443236469_))))
                                                   (_g236441236567_
                                                    (lambda (_g236443236475_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g236443236475_))
                                                          (let ((_e236447236477_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g236443236475_))))
                    (let ((_hd236448236480_
                           (let ()
                             (declare (not safe))
                             (##car _e236447236477_)))
                          (_tl236449236482_
                           (let ()
                             (declare (not safe))
                             (##cdr _e236447236477_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl236449236482_))
                          (let ((_e236450236485_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl236449236482_))))
                            (let ((_hd236451236488_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e236450236485_)))
                                  (_tl236452236490_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e236450236485_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd236451236488_))
                                  (let ((_e236453236493_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd236451236488_))))
                                    (let ((_hd236454236496_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e236453236493_)))
                                          (_tl236455236498_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e236453236493_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd236454236496_))
                                          (let ((_e236456236501_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd236454236496_))))
                                            (let ((_hd236457236504_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e236456236501_)))
                                                  (_tl236458236506_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e236456236501_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd236457236504_))
                                                  (let ((_e236459236509_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd236457236504_))))
                                                    (let ((_hd236460236512_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e236459236509_)))
                                                          (_tl236461236514_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e236459236509_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl236461236514_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl236458236506_))
                      (let ((_e236462236517_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl236458236506_))))
                        (let ((_hd236463236520_
                               (let ()
                                 (declare (not safe))
                                 (##car _e236462236517_)))
                              (_tl236464236522_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e236462236517_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl236464236522_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl236455236498_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl236452236490_))
                                      (let ((_e236465236525_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl236452236490_))))
                                        (let ((_hd236466236528_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e236465236525_)))
                                              (_tl236467236530_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e236465236525_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl236467236530_))
                                              ((lambda (_L236533_
                                                        _L236534_
                                                        _L236535_)
                                                 (let* ((_lambda-id236559_
                                                         (let ((__tmp250476
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L236428_)))
                       (__tmp250475 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp250476 __tmp250475)))
                (_lambda-id236561_
                 (let ((__tmp250477
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx235865_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id236559_ __tmp250477)))
                (_g250478_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id236561_)))
                (_new-case-lambda-expr236564_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L236533_
                    _L236535_
                    _lambda-id236561_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp250480
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L236428_)))
                                                         (__tmp250479
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id236561_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp250480
                                                      '" => "
                                                      __tmp250479))
                                                   (let ((__tmp250483
                                                          (let ((__tmp250484
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__248047248048_
                            _L236428_
                            _new-case-lambda-expr236564_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp250484 _rest236028_)))
                 (__tmp250481
                  (let ((__tmp250482
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__248049248050_
                            _lambda-id236561_
                            _L236534_))))
                    (declare (not safe))
                    (cons __tmp250482 _bind236008_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp236005_
                                                      __tmp250483
                                                      __tmp250481))))
                                               _hd236466236528_
                                               _hd236463236520_
                                               _hd236460236512_)
                                              (let ()
                                                (declare (not safe))
                                                (_g236442236472_
                                                 _g236443236475_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g236442236472_ _g236443236475_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g236442236472_ _g236443236475_)))
                              (let ()
                                (declare (not safe))
                                (_g236442236472_ _g236443236475_)))))
                      (let ()
                        (declare (not safe))
                        (_g236442236472_ _g236443236475_)))
                  (let ()
                    (declare (not safe))
                    (_g236442236472_ _g236443236475_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g236442236472_
                                                     _g236443236475_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g236442236472_
                                             _g236443236475_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g236442236472_ _g236443236475_)))))
                          (let ()
                            (declare (not safe))
                            (_g236442236472_ _g236443236475_)))))
                  (let ()
                    (declare (not safe))
                    (_g236442236472_ _g236443236475_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g236441236567_ _L236427_))))
                                         (___kont249980249981_
                                          (lambda (_L236151_ _L236152_)
                                            (let* ((_g236166236219_
                                                    (lambda (_g236167236216_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g236167236216_))))
                                                   (_g236165236395_
                                                    (lambda (_g236167236222_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g236167236222_))
                                                          (let ((_e236173236224_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g236167236222_))))
                    (let ((_hd236174236227_
                           (let ()
                             (declare (not safe))
                             (##car _e236173236224_)))
                          (_tl236175236229_
                           (let ()
                             (declare (not safe))
                             (##cdr _e236173236224_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl236175236229_))
                          (let ((_e236176236232_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl236175236229_))))
                            (let ((_hd236177236235_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e236176236232_)))
                                  (_tl236178236237_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e236176236232_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd236177236235_))
                                  (let ((_e236179236240_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd236177236235_))))
                                    (let ((_hd236180236243_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e236179236240_)))
                                          (_tl236181236245_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e236179236240_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd236180236243_))
                                          (let ((_e236182236248_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd236180236243_))))
                                            (let ((_hd236183236251_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e236182236248_)))
                                                  (_tl236184236253_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e236182236248_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd236183236251_))
                                                  (let ((_e236185236256_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd236183236251_))))
                                                    (let ((_hd236186236259_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e236185236256_)))
                                                          (_tl236187236261_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e236185236256_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl236187236261_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl236184236253_))
                      (let ((_e236188236264_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl236184236253_))))
                        (let ((_hd236189236267_
                               (let ()
                                 (declare (not safe))
                                 (##car _e236188236264_)))
                              (_tl236190236269_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e236188236264_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd236189236267_))
                              (let ((_e236191236272_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd236189236267_))))
                                (let ((_hd236192236275_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e236191236272_)))
                                      (_tl236193236277_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e236191236272_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl236193236277_))
                                      (let ((_e236194236280_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl236193236277_))))
                                        (let ((_hd236195236283_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e236194236280_)))
                                              (_tl236196236285_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e236194236280_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd236195236283_))
                                              (let ((_e236197236288_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd236195236283_))))
                                                (let ((_hd236198236291_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e236197236288_)))
                                                      (_tl236199236293_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e236197236288_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd236198236291_))
                                                      (let ((_e236200236296_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd236198236291_))))
                (let ((_hd236201236299_
                       (let () (declare (not safe)) (##car _e236200236296_)))
                      (_tl236202236301_
                       (let () (declare (not safe)) (##cdr _e236200236296_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd236201236299_))
                      (let ((_e236203236304_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd236201236299_))))
                        (let ((_hd236204236307_
                               (let ()
                                 (declare (not safe))
                                 (##car _e236203236304_)))
                              (_tl236205236309_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e236203236304_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl236205236309_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl236202236301_))
                                  (let ((_e236206236312_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl236202236301_))))
                                    (let ((_hd236207236315_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e236206236312_)))
                                          (_tl236208236317_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e236206236312_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl236208236317_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl236199236293_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl236196236285_))
                                                  (let ((_e236209236320_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl236196236285_))))
                                                    (let ((_hd236210236323_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e236209236320_)))
                                                          (_tl236211236325_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e236209236320_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl236211236325_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl236190236269_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl236181236245_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl236178236237_))
                              (let ((_e236212236328_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl236178236237_))))
                                (let ((_hd236213236331_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e236212236328_)))
                                      (_tl236214236333_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e236212236328_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl236214236333_))
                                      ((lambda (_L236336_
                                                _L236337_
                                                _L236338_
                                                _L236339_
                                                _L236340_)
                                         (let* ((_get-kws-id236380_
                                                 (let ((__tmp250486
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L236152_)))
                                                       (__tmp250485
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp250486
                                                    __tmp250485)))
                                                (_get-kws-id236382_
                                                 (let ((__tmp250487
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx235865_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id236380_
                                                    __tmp250487)))
                                                (_main-id236384_
                                                 (let ((__tmp250489
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L236152_)))
                                                       (__tmp250488
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp250489
                                                    __tmp250488)))
                                                (_main-id236386_
                                                 (let ((__tmp250490
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx235865_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id236384_
                                                    __tmp250490)))
                                                (_g250491_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id236382_)))
                                                (_g250492_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id236386_)))
                                                (_new-kw-dispatch236390_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L236336_
                                                    _L236340_
                                                    _get-kws-id236382_)))
                                                (_new-get-kws236392_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L236337_
                                                    _L236339_
                                                    _main-id236386_))))
                                           (let ((__tmp250495
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L236152_)))
                                                 (__tmp250494
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id236382_)))
                                                 (__tmp250493
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id236386_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp250495
                                              '" => "
                                              __tmp250494
                                              '" => "
                                              __tmp250493))
                                           (let ((__tmp250496
                                                  (let ((__tmp250501
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__248047248048_
                                                            _main-id236386_
                                                            _L236338_
                                                            '#f)))
                                                        (__tmp250497
                                                         (let ((__tmp250500
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_bind-e__248047248048_
                           _get-kws-id236382_
                           _new-get-kws236392_
                           '#f)))
                       (__tmp250498
                        (let ((__tmp250499
                               (let ()
                                 (declare (not safe))
                                 (_bind-e__248047248048_
                                  _L236152_
                                  _new-kw-dispatch236390_
                                  '#f))))
                          (declare (not safe))
                          (cons __tmp250499 _rest236028_))))
                   (declare (not safe))
                   (cons __tmp250500 __tmp250498))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp250501
                                                          __tmp250497))))
                                             (declare (not safe))
                                             (_lp236005_
                                              __tmp250496
                                              _bind236008_))))
                                       _hd236213236331_
                                       _hd236210236323_
                                       _hd236207236315_
                                       _hd236204236307_
                                       _hd236186236259_)
                                      (let ()
                                        (declare (not safe))
                                        (_g236166236219_ _g236167236222_)))))
                              (let ()
                                (declare (not safe))
                                (_g236166236219_ _g236167236222_)))
                          (let ()
                            (declare (not safe))
                            (_g236166236219_ _g236167236222_)))
                      (let ()
                        (declare (not safe))
                        (_g236166236219_ _g236167236222_)))
                  (let ()
                    (declare (not safe))
                    (_g236166236219_ _g236167236222_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g236166236219_
                                                     _g236167236222_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g236166236219_
                                                 _g236167236222_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g236166236219_
                                             _g236167236222_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g236166236219_ _g236167236222_)))
                              (let ()
                                (declare (not safe))
                                (_g236166236219_ _g236167236222_)))))
                      (let ()
                        (declare (not safe))
                        (_g236166236219_ _g236167236222_)))))
              (let ()
                (declare (not safe))
                (_g236166236219_ _g236167236222_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g236166236219_
                                                 _g236167236222_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g236166236219_ _g236167236222_)))))
                              (let ()
                                (declare (not safe))
                                (_g236166236219_ _g236167236222_)))))
                      (let ()
                        (declare (not safe))
                        (_g236166236219_ _g236167236222_)))
                  (let ()
                    (declare (not safe))
                    (_g236166236219_ _g236167236222_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g236166236219_
                                                     _g236167236222_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g236166236219_
                                             _g236167236222_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g236166236219_ _g236167236222_)))))
                          (let ()
                            (declare (not safe))
                            (_g236166236219_ _g236167236222_)))))
                  (let ()
                    (declare (not safe))
                    (_g236166236219_ _g236167236222_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g236165236395_ _L236151_))))
                                         (___kont249982249983_
                                          (lambda (_L236102_ _L236103_)
                                            (let ((__tmp250502
                                                   (let ((__tmp250503
                                                          (let ((__tmp250504
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp250505
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L236102_))))
                           (declare (not safe))
                           (cons __tmp250505 '()))))
                    (declare (not safe))
                    (cons _L236103_ __tmp250504))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp250503
                                                           _bind236008_))))
                                              (declare (not safe))
                                              (_lp236005_
                                               _rest236028_
                                               __tmp250502)))))
                                     (let* ((___match250049250050_
                                             (lambda (_e236060236127_
                                                      _hd236061236130_
                                                      _tl236062236132_
                                                      _e236063236135_
                                                      _hd236064236138_
                                                      _tl236065236140_
                                                      _e236066236143_
                                                      _hd236067236146_
                                                      _tl236068236148_)
                                               (let ((_L236151_
                                                      _hd236067236146_)
                                                     (_L236152_
                                                      _hd236064236138_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L236152_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#kw-lambda-expr?
                                                             _L236151_)))
                                                     (___kont249980249981_
                                                      _L236151_
                                                      _L236152_)
                                                     (___kont249982249983_
                                                      _hd236067236146_
                                                      _hd236061236130_)))))
                                            (___match250027250028_
                                             (lambda (_e236049236403_
                                                      _hd236050236406_
                                                      _tl236051236408_
                                                      _e236052236411_
                                                      _hd236053236414_
                                                      _tl236054236416_
                                                      _e236055236419_
                                                      _hd236056236422_
                                                      _tl236057236424_)
                                               (let ((_L236427_
                                                      _hd236056236422_)
                                                     (_L236428_
                                                      _hd236053236414_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L236428_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L236427_)))
                                                     (___kont249978249979_
                                                      _L236427_
                                                      _L236428_)
                                                     (___match250049250050_
                                                      _e236049236403_
                                                      _hd236050236406_
                                                      _tl236051236408_
                                                      _e236052236411_
                                                      _hd236053236414_
                                                      _tl236054236416_
                                                      _e236055236419_
                                                      _hd236056236422_
                                                      _tl236057236424_)))))
                                            (___match250005250006_
                                             (lambda (_e236038236575_
                                                      _hd236039236578_
                                                      _tl236040236580_
                                                      _e236041236583_
                                                      _hd236042236586_
                                                      _tl236043236588_
                                                      _e236044236591_
                                                      _hd236045236594_
                                                      _tl236046236596_)
                                               (let ((_L236599_
                                                      _hd236045236594_)
                                                     (_L236600_
                                                      _hd236042236586_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L236600_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L236599_)))
                                                     (___kont249976249977_
                                                      _L236599_
                                                      _L236600_)
                                                     (___match250027250028_
                                                      _e236038236575_
                                                      _hd236039236578_
                                                      _tl236040236580_
                                                      _e236041236583_
                                                      _hd236042236586_
                                                      _tl236043236588_
                                                      _e236044236591_
                                                      _hd236045236594_
                                                      _tl236046236596_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx249974249975_))
                                           (let ((_e236038236575_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx249974249975_))))
                                             (let ((_tl236040236580_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e236038236575_)))
                                                   (_hd236039236578_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e236038236575_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd236039236578_))
                                                   (let ((_e236041236583_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd236039236578_))))
                                                     (let ((_tl236043236588_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e236041236583_)))
                                                           (_hd236042236586_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e236041236583_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl236043236588_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl236040236580_))
                       (let ((_e236044236591_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl236040236580_))))
                         (let ((_tl236046236596_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e236044236591_)))
                               (_hd236045236594_
                                (let ()
                                  (declare (not safe))
                                  (##car _e236044236591_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl236046236596_))
                               (___match250005250006_
                                _e236038236575_
                                _hd236039236578_
                                _tl236040236580_
                                _e236041236583_
                                _hd236042236586_
                                _tl236043236588_
                                _e236044236591_
                                _hd236045236594_
                                _tl236046236596_)
                               (let ()
                                 (declare (not safe))
                                 (_g236034236081_)))))
                       (let () (declare (not safe)) (_g236034236081_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl236040236580_))
                       (let ((_e236074236094_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl236040236580_))))
                         (let ((_tl236076236099_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e236074236094_)))
                               (_hd236075236097_
                                (let ()
                                  (declare (not safe))
                                  (##car _e236074236094_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl236076236099_))
                               (___kont249982249983_
                                _hd236075236097_
                                _hd236039236578_)
                               (let ()
                                 (declare (not safe))
                                 (_g236034236081_)))))
                       (let () (declare (not safe)) (_g236034236081_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl236040236580_))
                                                       (let ((_e236074236094_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl236040236580_))))
                 (let ((_tl236076236099_
                        (let () (declare (not safe)) (##cdr _e236074236094_)))
                       (_hd236075236097_
                        (let () (declare (not safe)) (##car _e236074236094_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl236076236099_))
                       (___kont249982249983_ _hd236075236097_ _hd236039236578_)
                       (let () (declare (not safe)) (_g236034236081_)))))
               (let () (declare (not safe)) (_g236034236081_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g236034236081_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest236009236017_))
                             (let ((_hd236014236695_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest236009236017_)))
                                   (_tl236015236697_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest236009236017_))))
                               (let* ((_hd236700_ _hd236014236695_)
                                      (_rest236702_ _tl236015236697_))
                                 (declare (not safe))
                                 (_K236013236692_ _rest236702_ _hd236700_)))
                             (let ()
                               (declare (not safe))
                               (_else236011236025_))))))))
          (let* ((___stx250066250067_ _stx235865_)
                 (_g235871235898_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx250066250067_)))))
            (let ((___kont250068250069_
                   (lambda (_L235958_ _L235959_ _L235960_)
                     (let ((__tmp250507
                            (lambda ()
                              (let ((_hd235997_
                                     (let ((__tmp250508
                                            (let ((__tmp250509
                                                   (lambda (_g235989235992_
                                                            _g235990235994_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g235989235992_
                                                             _g235990235994_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp250509
                                                      '()
                                                      _L235959_))))
                                       (declare (not safe))
                                       (_compile-bindings235868_ __tmp250508)))
                                    (_body235998_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L235958_))))
                                (let ((__tmp250510
                                       (let ((__tmp250511
                                              (let ((__tmp250512
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body235998_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _hd235997_
                                                      __tmp250512))))
                                         (declare (not safe))
                                         (cons _L235960_ __tmp250511))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp250510
                                   _stx235865_)))))
                           (__tmp250506
                            (let ((__obj250131
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj250131)
                              __obj250131)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp250507
                        gx#current-expander-context
                        __tmp250506))))
                  (___kont250072250073_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx235865_)))))
              (let ((___match250093250094_
                     (lambda (_e235876235910_
                              _hd235877235913_
                              _tl235878235915_
                              _e235879235918_
                              _hd235880235921_
                              _tl235881235923_
                              ___splice250070250071_
                              _target235882235926_
                              _tl235884235928_)
                       (letrec ((_loop235885235931_
                                 (lambda (_hd235883235934_ _bind235889235936_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd235883235934_))
                                       (let ((_e235886235939_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd235883235934_))))
                                         (let ((_lp-tl235888235944_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e235886235939_)))
                                               (_lp-hd235887235942_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e235886235939_))))
                                           (let ((__tmp250513
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd235887235942_
                                                          _bind235889235936_))))
                                             (declare (not safe))
                                             (_loop235885235931_
                                              _lp-tl235888235944_
                                              __tmp250513))))
                                       (let ((_bind235890235947_
                                              (reverse _bind235889235936_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl235881235923_))
                                             (let ((_e235891235950_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl235881235923_))))
                                               (let ((_tl235893235955_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e235891235950_)))
                                                     (_hd235892235953_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e235891235950_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl235893235955_))
                                                     (let ((_L235958_
                                                            _hd235892235953_)
                                                           (_L235959_
                                                            _bind235890235947_)
                                                           (_L235960_
                                                            _hd235877235913_))
                                                       (if (let ((__tmp250514
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp250515
                                 (lambda (_g235981235984_ _g235982235986_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g235981235984_ _g235982235986_)))))
                            (declare (not safe))
                            (foldr1 __tmp250515 '() _L235959_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp250514))
                   (___kont250068250069_ _L235958_ _L235959_ _L235960_)
                   (___kont250072250073_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont250072250073_))))
                                             (___kont250072250073_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop235885235931_ _target235882235926_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx250066250067_))
                    (let ((_e235876235910_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx250066250067_))))
                      (let ((_tl235878235915_
                             (let ()
                               (declare (not safe))
                               (##cdr _e235876235910_)))
                            (_hd235877235913_
                             (let ()
                               (declare (not safe))
                               (##car _e235876235910_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl235878235915_))
                            (let ((_e235879235918_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl235878235915_))))
                              (let ((_tl235881235923_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e235879235918_)))
                                    (_hd235880235921_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e235879235918_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd235880235921_))
                                    (let ((___splice250070250071_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd235880235921_
                                              '0))))
                                      (let ((_tl235884235928_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice250070250071_
                                                '1)))
                                            (_target235882235926_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice250070250071_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl235884235928_))
                                            (___match250093250094_
                                             _e235876235910_
                                             _hd235877235913_
                                             _tl235878235915_
                                             _e235879235918_
                                             _hd235880235921_
                                             _tl235881235923_
                                             ___splice250070250071_
                                             _target235882235926_
                                             _tl235884235928_)
                                            (___kont250072250073_))))
                                    (___kont250072250073_))))
                            (___kont250072250073_))))
                    (___kont250072250073_))))))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_bind235783_)
        (let* ((___stx250096250097_ _bind235783_)
               (_g235786235803_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx250096250097_)))))
          (let ((___kont250098250099_
                 (lambda (_L235839_ _L235840_)
                   (if (let () (declare (not safe)) (gx#identifier? _L235840_))
                       (let ((_$e235856_
                              (let ()
                                (declare (not safe))
                                (gxc#case-lambda-expr? _L235839_))))
                         (if _$e235856_
                             _$e235856_
                             (let ((_$e235859_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#opt-lambda-expr? _L235839_))))
                               (if _$e235859_
                                   _$e235859_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L235839_))))))
                       '#f)))
                (___kont250100250101_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx250096250097_))
                (let ((_e235790235815_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx250096250097_))))
                  (let ((_tl235792235820_
                         (let () (declare (not safe)) (##cdr _e235790235815_)))
                        (_hd235791235818_
                         (let ()
                           (declare (not safe))
                           (##car _e235790235815_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd235791235818_))
                        (let ((_e235793235823_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd235791235818_))))
                          (let ((_tl235795235828_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e235793235823_)))
                                (_hd235794235826_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e235793235823_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl235795235828_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl235792235820_))
                                    (let ((_e235796235831_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl235792235820_))))
                                      (let ((_tl235798235836_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e235796235831_)))
                                            (_hd235797235834_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e235796235831_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl235798235836_))
                                            (___kont250098250099_
                                             _hd235797235834_
                                             _hd235794235826_)
                                            (___kont250100250101_))))
                                    (___kont250100250101_))
                                (___kont250100250101_))))
                        (___kont250100250101_))))
                (___kont250100250101_))))))))
