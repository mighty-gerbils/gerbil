(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1707742543)
  (begin
    (define gxc#&collect-top-level-type-info
      (make-promise
       (lambda ()
         (let ((_tbl236980_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp243641 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl236980_ __tmp243641))
           (let ()
             (declare (not safe))
             (table-set! _tbl236980_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236980_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl236980_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236980_
              '%#define-values
              gxc#collect-top-level-type-define-values%))
           _tbl236980_))))
    (define gxc#apply-collect-top-level-type-info
      (lambda (_stx236963_ . _args236965_)
        (let ((__tmp243643
               (lambda ()
                 (declare (not safe))
                 (if (null? _args236965_)
                     (gxc#compile-e__0 _stx236963_)
                     (let ((_arg1236970_ (car _args236965_))
                           (_rest236972_ (cdr _args236965_)))
                       (if (null? _rest236972_)
                           (gxc#compile-e__1 _stx236963_ _arg1236970_)
                           (let ((_arg2236975_ (car _rest236972_))
                                 (_rest236977_ (cdr _rest236972_)))
                             (if (null? _rest236977_)
                                 (gxc#compile-e__2
                                  _stx236963_
                                  _arg1236970_
                                  _arg2236975_)
                                 (apply gxc#compile-e
                                        _stx236963_
                                        _arg1236970_
                                        _arg2236975_
                                        _rest236977_))))))))
              (__tmp243642 (force gxc#&collect-top-level-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp243643
           gxc#current-compile-methods
           __tmp243642))))
    (define gxc#&basic-expression-top-level-type
      (make-promise
       (lambda ()
         (let ((_tbl236960_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp243644 (force gxc#&false)))
             (declare (not safe))
             (hash-copy! _tbl236960_ __tmp243644))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236960_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl236960_ '%#call gxc#basic-expression-type-call%))
           _tbl236960_))))
    (define gxc#apply-basic-expression-top-level-type
      (lambda (_stx236943_ . _args236945_)
        (let ((__tmp243646
               (lambda ()
                 (declare (not safe))
                 (if (null? _args236945_)
                     (gxc#compile-e__0 _stx236943_)
                     (let ((_arg1236950_ (car _args236945_))
                           (_rest236952_ (cdr _args236945_)))
                       (if (null? _rest236952_)
                           (gxc#compile-e__1 _stx236943_ _arg1236950_)
                           (let ((_arg2236955_ (car _rest236952_))
                                 (_rest236957_ (cdr _rest236952_)))
                             (if (null? _rest236957_)
                                 (gxc#compile-e__2
                                  _stx236943_
                                  _arg1236950_
                                  _arg2236955_)
                                 (apply gxc#compile-e
                                        _stx236943_
                                        _arg1236950_
                                        _arg2236955_
                                        _rest236957_))))))))
              (__tmp243645 (force gxc#&basic-expression-top-level-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp243646
           gxc#current-compile-methods
           __tmp243645))))
    (define gxc#&collect-type-info
      (make-promise
       (lambda ()
         (let ((_tbl236940_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp243647 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl236940_ __tmp243647))
           (let ()
             (declare (not safe))
             (table-set! _tbl236940_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236940_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl236940_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236940_
              '%#define-values
              gxc#collect-type-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236940_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl236940_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236940_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236940_
              '%#let-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236940_
              '%#letrec-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236940_
              '%#letrec*-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl236940_ '%#call gxc#collect-type-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl236940_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl236940_ '%#set! gxc#collect-body-setq%))
           _tbl236940_))))
    (define gxc#apply-collect-type-info
      (lambda (_stx236923_ . _args236925_)
        (let ((__tmp243649
               (lambda ()
                 (declare (not safe))
                 (if (null? _args236925_)
                     (gxc#compile-e__0 _stx236923_)
                     (let ((_arg1236930_ (car _args236925_))
                           (_rest236932_ (cdr _args236925_)))
                       (if (null? _rest236932_)
                           (gxc#compile-e__1 _stx236923_ _arg1236930_)
                           (let ((_arg2236935_ (car _rest236932_))
                                 (_rest236937_ (cdr _rest236932_)))
                             (if (null? _rest236937_)
                                 (gxc#compile-e__2
                                  _stx236923_
                                  _arg1236930_
                                  _arg2236935_)
                                 (apply gxc#compile-e
                                        _stx236923_
                                        _arg1236930_
                                        _arg2236935_
                                        _rest236937_))))))))
              (__tmp243648 (force gxc#&collect-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp243649
           gxc#current-compile-methods
           __tmp243648))))
    (define gxc#&basic-expression-type
      (make-promise
       (lambda ()
         (let ((_tbl236920_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp243650 (force gxc#&false)))
             (declare (not safe))
             (hash-copy! _tbl236920_ __tmp243650))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236920_
              '%#begin
              gxc#basic-expression-type-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236920_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236920_
              '%#lambda
              gxc#basic-expression-type-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236920_
              '%#case-lambda
              gxc#basic-expression-type-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236920_
              '%#let-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236920_
              '%#letrec-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236920_
              '%#letrec*-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl236920_ '%#call gxc#basic-expression-type-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl236920_ '%#ref gxc#basic-expression-type-ref%))
           _tbl236920_))))
    (define gxc#apply-basic-expression-type
      (lambda (_stx236903_ . _args236905_)
        (let ((__tmp243652
               (lambda ()
                 (declare (not safe))
                 (if (null? _args236905_)
                     (gxc#compile-e__0 _stx236903_)
                     (let ((_arg1236910_ (car _args236905_))
                           (_rest236912_ (cdr _args236905_)))
                       (if (null? _rest236912_)
                           (gxc#compile-e__1 _stx236903_ _arg1236910_)
                           (let ((_arg2236915_ (car _rest236912_))
                                 (_rest236917_ (cdr _rest236912_)))
                             (if (null? _rest236917_)
                                 (gxc#compile-e__2
                                  _stx236903_
                                  _arg1236910_
                                  _arg2236915_)
                                 (apply gxc#compile-e
                                        _stx236903_
                                        _arg1236910_
                                        _arg2236915_
                                        _rest236917_))))))))
              (__tmp243651 (force gxc#&basic-expression-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp243652
           gxc#current-compile-methods
           __tmp243651))))
    (define gxc#&lift-top-lambdas
      (make-promise
       (lambda ()
         (let ((_tbl236900_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp243653 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-copy! _tbl236900_ __tmp243653))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236900_
              '%#define-values
              gxc#lift-top-lambda-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236900_
              '%#let-values
              gxc#lift-top-lambda-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236900_
              '%#letrec-values
              gxc#lift-top-lambda-letrec-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236900_
              '%#letrec*-values
              gxc#lift-top-lambda-letrec-values%))
           _tbl236900_))))
    (define gxc#apply-lift-top-lambdas
      (lambda (_stx236883_ . _args236885_)
        (let ((__tmp243655
               (lambda ()
                 (declare (not safe))
                 (if (null? _args236885_)
                     (gxc#compile-e__0 _stx236883_)
                     (let ((_arg1236890_ (car _args236885_))
                           (_rest236892_ (cdr _args236885_)))
                       (if (null? _rest236892_)
                           (gxc#compile-e__1 _stx236883_ _arg1236890_)
                           (let ((_arg2236895_ (car _rest236892_))
                                 (_rest236897_ (cdr _rest236892_)))
                             (if (null? _rest236897_)
                                 (gxc#compile-e__2
                                  _stx236883_
                                  _arg1236890_
                                  _arg2236895_)
                                 (apply gxc#compile-e
                                        _stx236883_
                                        _arg1236890_
                                        _arg2236895_
                                        _rest236897_))))))))
              (__tmp243654 (force gxc#&lift-top-lambdas)))
          (declare (not safe))
          (call-with-parameters
           __tmp243655
           gxc#current-compile-methods
           __tmp243654))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_stx236786_)
        (let* ((___stx241561241562_ _stx236786_)
               (_g236789236809_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx241561241562_)))))
          (let ((___kont241563241564_
                 (lambda (_L236853_ _L236854_)
                   (let ((_sym236872_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L236854_))))
                     (if (let ((__tmp243656 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (table-ref __tmp243656 _sym236872_ '#f))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym236872_))
                         (let ((_type236873236875_
                                (let ()
                                  (declare (not safe))
                                  (gxc#apply-basic-expression-top-level-type
                                   _L236853_))))
                           (if _type236873236875_
                               (let ((_type236878_ _type236873236875_))
                                 (declare (not safe))
                                 (gxc#optimizer-declare-type!__0
                                  _sym236872_
                                  _type236878_))
                               '#f))))))
                (___kont241565241566_ (lambda () '#!void)))
            (let ((___match241594241595_
                   (lambda (_e236795236821_
                            _hd236794236824_
                            _tl236793236826_
                            _e236798236829_
                            _hd236797236832_
                            _tl236796236834_
                            _e236801236837_
                            _hd236800236840_
                            _tl236799236842_
                            _e236804236845_
                            _hd236803236848_
                            _tl236802236850_)
                     (let ((_L236853_ _hd236803236848_)
                           (_L236854_ _hd236800236840_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L236854_))
                           (___kont241563241564_ _L236853_ _L236854_)
                           (___kont241565241566_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx241561241562_))
                  (let ((_e236795236821_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx241561241562_))))
                    (let ((_tl236793236826_
                           (let ()
                             (declare (not safe))
                             (##cdr _e236795236821_)))
                          (_hd236794236824_
                           (let ()
                             (declare (not safe))
                             (##car _e236795236821_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl236793236826_))
                          (let ((_e236798236829_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl236793236826_))))
                            (let ((_tl236796236834_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e236798236829_)))
                                  (_hd236797236832_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e236798236829_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd236797236832_))
                                  (let ((_e236801236837_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd236797236832_))))
                                    (let ((_tl236799236842_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e236801236837_)))
                                          (_hd236800236840_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e236801236837_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl236799236842_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl236796236834_))
                                              (let ((_e236804236845_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl236796236834_))))
                                                (let ((_tl236802236850_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e236804236845_)))
                                                      (_hd236803236848_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e236804236845_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl236802236850_))
                                                      (___match241594241595_
                                                       _e236795236821_
                                                       _hd236794236824_
                                                       _tl236793236826_
                                                       _e236798236829_
                                                       _hd236797236832_
                                                       _tl236796236834_
                                                       _e236801236837_
                                                       _hd236800236840_
                                                       _tl236799236842_
                                                       _e236804236845_
                                                       _hd236803236848_
                                                       _tl236802236850_)
                                                      (___kont241565241566_))))
                                              (___kont241565241566_))
                                          (___kont241565241566_))))
                                  (___kont241565241566_))))
                          (___kont241565241566_))))
                  (___kont241565241566_)))))))
    (define gxc#collect-type-define-values%
      (lambda (_stx236642_)
        (let* ((___stx241597241598_ _stx236642_)
               (_g236645236676_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx241597241598_)))))
          (let ((___kont241599241600_
                 (lambda (_L236758_ _L236759_)
                   (let ((_sym236775_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L236759_))))
                     (if (let ((__tmp243657 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (table-ref __tmp243657 _sym236775_ '#f))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym236775_))
                         (if (let ()
                               (declare (not safe))
                               (gxc#optimizer-lookup-type _sym236775_))
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"skipping type inference for already declared type "
                                _sym236775_))
                             (let ((_type236776236778_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#apply-basic-expression-type
                                       _L236758_))))
                               (if _type236776236778_
                                   (let ((_type236781_ _type236776236778_))
                                     (declare (not safe))
                                     (gxc#optimizer-declare-type!__0
                                      _sym236775_
                                      _type236781_))
                                   '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__0 _L236758_)))))
                (___kont241601241602_
                 (lambda (_L236705_ _L236706_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__0 _L236705_)))))
            (let ((___match241630241631_
                   (lambda (_e236651236726_
                            _hd236650236729_
                            _tl236649236731_
                            _e236654236734_
                            _hd236653236737_
                            _tl236652236739_
                            _e236657236742_
                            _hd236656236745_
                            _tl236655236747_
                            _e236660236750_
                            _hd236659236753_
                            _tl236658236755_)
                     (let ((_L236758_ _hd236659236753_)
                           (_L236759_ _hd236656236745_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L236759_))
                           (___kont241599241600_ _L236758_ _L236759_)
                           (___kont241601241602_
                            _hd236659236753_
                            _hd236653236737_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx241597241598_))
                  (let ((_e236651236726_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx241597241598_))))
                    (let ((_tl236649236731_
                           (let ()
                             (declare (not safe))
                             (##cdr _e236651236726_)))
                          (_hd236650236729_
                           (let ()
                             (declare (not safe))
                             (##car _e236651236726_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl236649236731_))
                          (let ((_e236654236734_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl236649236731_))))
                            (let ((_tl236652236739_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e236654236734_)))
                                  (_hd236653236737_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e236654236734_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd236653236737_))
                                  (let ((_e236657236742_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd236653236737_))))
                                    (let ((_tl236655236747_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e236657236742_)))
                                          (_hd236656236745_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e236657236742_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl236655236747_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl236652236739_))
                                              (let ((_e236660236750_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl236652236739_))))
                                                (let ((_tl236658236755_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e236660236750_)))
                                                      (_hd236659236753_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e236660236750_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl236658236755_))
                                                      (___match241630241631_
                                                       _e236651236726_
                                                       _hd236650236729_
                                                       _tl236649236731_
                                                       _e236654236734_
                                                       _hd236653236737_
                                                       _tl236652236739_
                                                       _e236657236742_
                                                       _hd236656236745_
                                                       _tl236655236747_
                                                       _e236660236750_
                                                       _hd236659236753_
                                                       _tl236658236755_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g236645236676_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g236645236676_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl236652236739_))
                                              (let ((_e236671236697_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl236652236739_))))
                                                (let ((_tl236669236702_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e236671236697_)))
                                                      (_hd236670236700_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e236671236697_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl236669236702_))
                                                      (___kont241601241602_
                                                       _hd236670236700_
                                                       _hd236653236737_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g236645236676_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g236645236676_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl236652236739_))
                                      (let ((_e236671236697_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl236652236739_))))
                                        (let ((_tl236669236702_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e236671236697_)))
                                              (_hd236670236700_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e236671236697_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl236669236702_))
                                              (___kont241601241602_
                                               _hd236670236700_
                                               _hd236653236737_)
                                              (let ()
                                                (declare (not safe))
                                                (_g236645236676_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g236645236676_))))))
                          (let () (declare (not safe)) (_g236645236676_)))))
                  (let () (declare (not safe)) (_g236645236676_))))))))
    (define gxc#collect-type-let-values%
      (lambda (_stx236427_)
        (letrec ((_collect-e236429_
                  (lambda (_hd236586_ _expr236587_)
                    (let* ((___stx241653241654_ _hd236586_)
                           (_g236590236600_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx241653241654_)))))
                      (let ((___kont241655241656_
                             (lambda (_L236620_)
                               (let ((_sym236631_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#identifier-symbol _L236620_))))
                                 (if (let ((__tmp243658
                                            (gxc#current-compile-mutators)))
                                       (declare (not safe))
                                       (table-ref __tmp243658 _sym236631_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#verbose
                                        '"skipping type declaration for mutable binding "
                                        _sym236631_))
                                     (let ((_type236632236634_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-basic-expression-type
                                               _expr236587_))))
                                       (if _type236632236634_
                                           (let ((_type236637_
                                                  _type236632236634_))
                                             (declare (not safe))
                                             (gxc#optimizer-declare-type!__%
                                              _sym236631_
                                              _type236637_
                                              '#t))
                                           '#f))))))
                            (___kont241657241658_ (lambda () '#!void)))
                        (let ((___match241666241667_
                               (lambda (_e236595236612_
                                        _hd236594236615_
                                        _tl236593236617_)
                                 (let ((_L236620_ _hd236594236615_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _L236620_))
                                       (___kont241655241656_ _L236620_)
                                       (___kont241657241658_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx241653241654_))
                              (let ((_e236595236612_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx241653241654_))))
                                (let ((_tl236593236617_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e236595236612_)))
                                      (_hd236594236615_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e236595236612_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl236593236617_))
                                      (___match241666241667_
                                       _e236595236612_
                                       _hd236594236615_
                                       _tl236593236617_)
                                      (___kont241657241658_))))
                              (___kont241657241658_))))))))
          (let* ((_g236431236466_
                  (lambda (_g236432236463_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g236432236463_))))
                 (_g236430236583_
                  (lambda (_g236432236469_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g236432236469_))
                        (let ((_e236438236471_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g236432236469_))))
                          (let ((_hd236437236474_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e236438236471_)))
                                (_tl236436236476_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e236438236471_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl236436236476_))
                                (let ((_e236441236479_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl236436236476_))))
                                  (let ((_hd236440236482_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e236441236479_)))
                                        (_tl236439236484_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e236441236479_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd236440236482_))
                                        (let ((_g243659_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd236440236482_
                                                  '0))))
                                          (begin
                                            (let ((_g243660_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g243659_)
                                                         (##vector-length
                                                          _g243659_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g243660_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g243660_)))
                                            (let ((_target236442236487_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g243659_
                                                      0)))
                                                  (_tl236444236489_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g243659_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl236444236489_))
                                                  (letrec ((_loop236445236492_
                                                            (lambda (_hd236443236495_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr236449236497_
                             _hd236450236499_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd236443236495_))
                          (let ((_e236446236502_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd236443236495_))))
                            (let ((_lp-hd236447236505_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e236446236502_)))
                                  (_lp-tl236448236507_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e236446236502_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _lp-hd236447236505_))
                                  (let ((_e236455236510_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _lp-hd236447236505_))))
                                    (let ((_hd236454236513_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e236455236510_)))
                                          (_tl236453236515_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e236455236510_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl236453236515_))
                                          (let ((_e236458236518_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl236453236515_))))
                                            (let ((_hd236457236521_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e236458236518_)))
                                                  (_tl236456236523_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e236458236518_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl236456236523_))
                                                  (let ((__tmp243665
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _hd236457236521_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr236449236497_)))
                (__tmp243664
                 (let ()
                   (declare (not safe))
                   (cons _hd236454236513_ _hd236450236499_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_loop236445236492_
                                                     _lp-tl236448236507_
                                                     __tmp243665
                                                     __tmp243664))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g236431236466_
                                                     _g236432236469_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g236431236466_
                                             _g236432236469_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g236431236466_ _g236432236469_)))))
                          (let ((_expr236451236526_
                                 (reverse _expr236449236497_))
                                (_hd236452236528_ (reverse _hd236450236499_)))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl236439236484_))
                                (let ((_e236461236531_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl236439236484_))))
                                  (let ((_hd236460236534_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e236461236531_)))
                                        (_tl236459236536_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e236461236531_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl236459236536_))
                                        ((lambda (_L236539_
                                                  _L236540_
                                                  _L236541_)
                                           (for-each
                                            _collect-e236429_
                                            (let ((__tmp243661
                                                   (lambda (_g236561236564_
                                                            _g236562236566_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g236561236564_
                                                             _g236562236566_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp243661
                                                      '()
                                                      _L236541_))
                                            (let ((__tmp243662
                                                   (lambda (_g236568236571_
                                                            _g236569236573_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g236568236571_
                                                             _g236569236573_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp243662
                                                      '()
                                                      _L236540_)))
                                           (for-each
                                            gxc#compile-e
                                            (let ((__tmp243663
                                                   (lambda (_g236575236578_
                                                            _g236576236580_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g236575236578_
                                                             _g236576236580_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp243663
                                                      '()
                                                      _L236540_)))
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _L236539_)))
                                         _hd236460236534_
                                         _expr236451236526_
                                         _hd236452236528_)
                                        (let ()
                                          (declare (not safe))
                                          (_g236431236466_ _g236432236469_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g236431236466_ _g236432236469_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop236445236492_
                                                       _target236442236487_
                                                       '()
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g236431236466_
                                                     _g236432236469_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g236431236466_ _g236432236469_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g236431236466_ _g236432236469_)))))
                        (let ()
                          (declare (not safe))
                          (_g236431236466_ _g236432236469_))))))
            (declare (not safe))
            (_g236430236583_ _stx236427_)))))
    (define gxc#collect-type-call%
      (lambda (_stx235919_)
        (let* ((___stx241669241670_ _stx235919_)
               (_g235923236038_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx241669241670_)))))
          (let ((___kont241671241672_
                 (lambda (_L236377_ _L236378_ _L236379_ _L236380_ _L236381_)
                   (let ((__tmp243669
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L236380_)))
                         (__tmp243668
                          (let () (declare (not safe)) (gx#stx-e _L236379_)))
                         (__tmp243667
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L236378_)))
                         (__tmp243666
                          (let () (declare (not safe)) (gx#stx-e _L236377_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp243669
                      __tmp243668
                      __tmp243667
                      __tmp243666))))
                (___kont241673241674_
                 (lambda (_L236205_ _L236206_ _L236207_ _L236208_)
                   (let ((__tmp243672
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L236207_)))
                         (__tmp243671
                          (let () (declare (not safe)) (gx#stx-e _L236206_)))
                         (__tmp243670
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L236205_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp243672
                      __tmp243671
                      __tmp243670
                      '#f))))
                (___kont241675241676_
                 (lambda (_L236075_)
                   (for-each
                    gxc#compile-e
                    (let ((__tmp243673
                           (lambda (_g236088236091_ _g236089236093_)
                             (let ()
                               (declare (not safe))
                               (cons _g236088236091_ _g236089236093_)))))
                      (declare (not safe))
                      (foldr1 __tmp243673 '() _L236075_))))))
            (let* ((___match241926241927_
                    (lambda (_e236024236043_
                             _hd236023236046_
                             _tl236022236048_
                             ___splice241677241678_
                             _target236025236051_
                             _tl236027236053_)
                      (letrec ((_loop236028236056_
                                (lambda (_hd236026236059_ _expr236032236061_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd236026236059_))
                                      (let ((_e236029236064_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd236026236059_))))
                                        (let ((_lp-tl236031236069_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e236029236064_)))
                                              (_lp-hd236030236067_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e236029236064_))))
                                          (let ((__tmp243674
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd236030236067_
                                                         _expr236032236061_))))
                                            (declare (not safe))
                                            (_loop236028236056_
                                             _lp-tl236031236069_
                                             __tmp243674))))
                                      (let ((_expr236033236072_
                                             (reverse _expr236032236061_)))
                                        (___kont241675241676_
                                         _expr236033236072_))))))
                        (let ()
                          (declare (not safe))
                          (_loop236028236056_ _target236025236051_ '())))))
                   (___match241806241807_
                    (lambda (_e235932236249_
                             _hd235931236252_
                             _tl235930236254_
                             _e235935236257_
                             _hd235934236260_
                             _tl235933236262_
                             _e235938236265_
                             _hd235937236268_
                             _tl235936236270_
                             _e235941236273_
                             _hd235940236276_
                             _tl235939236278_
                             _e235944236281_
                             _hd235943236284_
                             _tl235942236286_
                             _e235947236289_
                             _hd235946236292_
                             _tl235945236294_
                             _e235950236297_
                             _hd235949236300_
                             _tl235948236302_
                             _e235953236305_
                             _hd235952236308_
                             _tl235951236310_
                             _e235956236313_
                             _hd235955236316_
                             _tl235954236318_
                             _e235959236321_
                             _hd235958236324_
                             _tl235957236326_
                             _e235962236329_
                             _hd235961236332_
                             _tl235960236334_
                             _e235965236337_
                             _hd235964236340_
                             _tl235963236342_
                             _e235968236345_
                             _hd235967236348_
                             _tl235966236350_
                             _e235971236353_
                             _hd235970236356_
                             _tl235969236358_
                             _e235974236361_
                             _hd235973236364_
                             _tl235972236366_
                             _e235977236369_
                             _hd235976236372_
                             _tl235975236374_)
                      (let ((_L236377_ _hd235976236372_)
                            (_L236378_ _hd235967236348_)
                            (_L236379_ _hd235958236324_)
                            (_L236380_ _hd235949236300_)
                            (_L236381_ _hd235940236276_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _L236381_
                               'bind-method!))
                            (___kont241671241672_
                             _L236377_
                             _L236378_
                             _L236379_
                             _L236380_
                             _L236381_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl235930236254_))
                                (let ((___splice241677241678_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl235930236254_
                                          '0))))
                                  (let ((_tl236027236053_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice241677241678_
                                            '1)))
                                        (_target236025236051_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice241677241678_
                                            '0))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl236027236053_))
                                        (___match241926241927_
                                         _e235932236249_
                                         _hd235931236252_
                                         _tl235930236254_
                                         ___splice241677241678_
                                         _target236025236051_
                                         _tl236027236053_)
                                        (let ()
                                          (declare (not safe))
                                          (_g235923236038_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g235923236038_))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx241669241670_))
                  (let ((_e235932236249_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx241669241670_))))
                    (let ((_tl235930236254_
                           (let ()
                             (declare (not safe))
                             (##cdr _e235932236249_)))
                          (_hd235931236252_
                           (let ()
                             (declare (not safe))
                             (##car _e235932236249_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl235930236254_))
                          (let ((_e235935236257_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl235930236254_))))
                            (let ((_tl235933236262_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e235935236257_)))
                                  (_hd235934236260_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e235935236257_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd235934236260_))
                                  (let ((_e235938236265_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd235934236260_))))
                                    (let ((_tl235936236270_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e235938236265_)))
                                          (_hd235937236268_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e235938236265_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd235937236268_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd235937236268_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl235936236270_))
                                                  (let ((_e235941236273_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl235936236270_))))
                                                    (let ((_tl235939236278_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e235941236273_)))
                                                          (_hd235940236276_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e235941236273_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl235939236278_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl235933236262_))
                      (let ((_e235944236281_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl235933236262_))))
                        (let ((_tl235942236286_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235944236281_)))
                              (_hd235943236284_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235944236281_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd235943236284_))
                              (let ((_e235947236289_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd235943236284_))))
                                (let ((_tl235945236294_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e235947236289_)))
                                      (_hd235946236292_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e235947236289_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd235946236292_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd235946236292_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl235945236294_))
                                              (let ((_e235950236297_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl235945236294_))))
                                                (let ((_tl235948236302_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e235950236297_)))
                                                      (_hd235949236300_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e235950236297_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl235948236302_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl235942236286_))
                                                          (let ((_e235953236305_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl235942236286_))))
                    (let ((_tl235951236310_
                           (let ()
                             (declare (not safe))
                             (##cdr _e235953236305_)))
                          (_hd235952236308_
                           (let ()
                             (declare (not safe))
                             (##car _e235953236305_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd235952236308_))
                          (let ((_e235956236313_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd235952236308_))))
                            (let ((_tl235954236318_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e235956236313_)))
                                  (_hd235955236316_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e235956236313_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd235955236316_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd235955236316_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl235954236318_))
                                          (let ((_e235959236321_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl235954236318_))))
                                            (let ((_tl235957236326_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e235959236321_)))
                                                  (_hd235958236324_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e235959236321_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl235957236326_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl235951236310_))
                                                      (let ((_e235962236329_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl235951236310_))))
                (let ((_tl235960236334_
                       (let () (declare (not safe)) (##cdr _e235962236329_)))
                      (_hd235961236332_
                       (let () (declare (not safe)) (##car _e235962236329_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd235961236332_))
                      (let ((_e235965236337_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd235961236332_))))
                        (let ((_tl235963236342_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235965236337_)))
                              (_hd235964236340_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235965236337_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd235964236340_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd235964236340_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl235963236342_))
                                      (let ((_e235968236345_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl235963236342_))))
                                        (let ((_tl235966236350_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e235968236345_)))
                                              (_hd235967236348_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e235968236345_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl235966236350_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl235960236334_))
                                                  (let ((_e235971236353_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl235960236334_))))
                                                    (let ((_tl235969236358_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e235971236353_)))
                                                          (_hd235970236356_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e235971236353_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd235970236356_))
                                                          (let ((_e235974236361_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd235970236356_))))
                    (let ((_tl235972236366_
                           (let ()
                             (declare (not safe))
                             (##cdr _e235974236361_)))
                          (_hd235973236364_
                           (let ()
                             (declare (not safe))
                             (##car _e235974236361_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd235973236364_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd235973236364_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl235972236366_))
                                  (let ((_e235977236369_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl235972236366_))))
                                    (let ((_tl235975236374_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e235977236369_)))
                                          (_hd235976236372_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e235977236369_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl235975236374_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl235969236358_))
                                              (___match241806241807_
                                               _e235932236249_
                                               _hd235931236252_
                                               _tl235930236254_
                                               _e235935236257_
                                               _hd235934236260_
                                               _tl235933236262_
                                               _e235938236265_
                                               _hd235937236268_
                                               _tl235936236270_
                                               _e235941236273_
                                               _hd235940236276_
                                               _tl235939236278_
                                               _e235944236281_
                                               _hd235943236284_
                                               _tl235942236286_
                                               _e235947236289_
                                               _hd235946236292_
                                               _tl235945236294_
                                               _e235950236297_
                                               _hd235949236300_
                                               _tl235948236302_
                                               _e235953236305_
                                               _hd235952236308_
                                               _tl235951236310_
                                               _e235956236313_
                                               _hd235955236316_
                                               _tl235954236318_
                                               _e235959236321_
                                               _hd235958236324_
                                               _tl235957236326_
                                               _e235962236329_
                                               _hd235961236332_
                                               _tl235960236334_
                                               _e235965236337_
                                               _hd235964236340_
                                               _tl235963236342_
                                               _e235968236345_
                                               _hd235967236348_
                                               _tl235966236350_
                                               _e235971236353_
                                               _hd235970236356_
                                               _tl235969236358_
                                               _e235974236361_
                                               _hd235973236364_
                                               _tl235972236366_
                                               _e235977236369_
                                               _hd235976236372_
                                               _tl235975236374_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl235930236254_))
                                                  (let ((___splice241677241678_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl235930236254_
                                                            '0))))
                                                    (let ((_tl236027236053_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice241677241678_
                                                              '1)))
                                                          (_target236025236051_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice241677241678_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl236027236053_))
                                                          (___match241926241927_
                                                           _e235932236249_
                                                           _hd235931236252_
                                                           _tl235930236254_
                                                           ___splice241677241678_
                                                           _target236025236051_
                                                           _tl236027236053_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g235923236038_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g235923236038_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl235930236254_))
                                              (let ((___splice241677241678_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl235930236254_
                                                        '0))))
                                                (let ((_tl236027236053_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice241677241678_
                                                          '1)))
                                                      (_target236025236051_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice241677241678_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl236027236053_))
                                                      (___match241926241927_
                                                       _e235932236249_
                                                       _hd235931236252_
                                                       _tl235930236254_
                                                       ___splice241677241678_
                                                       _target236025236051_
                                                       _tl236027236053_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g235923236038_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g235923236038_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl235930236254_))
                                      (let ((___splice241677241678_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl235930236254_
                                                '0))))
                                        (let ((_tl236027236053_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice241677241678_
                                                  '1)))
                                              (_target236025236051_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice241677241678_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl236027236053_))
                                              (___match241926241927_
                                               _e235932236249_
                                               _hd235931236252_
                                               _tl235930236254_
                                               ___splice241677241678_
                                               _target236025236051_
                                               _tl236027236053_)
                                              (let ()
                                                (declare (not safe))
                                                (_g235923236038_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g235923236038_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl235930236254_))
                                  (let ((___splice241677241678_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl235930236254_
                                            '0))))
                                    (let ((_tl236027236053_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice241677241678_
                                              '1)))
                                          (_target236025236051_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice241677241678_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl236027236053_))
                                          (___match241926241927_
                                           _e235932236249_
                                           _hd235931236252_
                                           _tl235930236254_
                                           ___splice241677241678_
                                           _target236025236051_
                                           _tl236027236053_)
                                          (let ()
                                            (declare (not safe))
                                            (_g235923236038_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g235923236038_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl235930236254_))
                              (let ((___splice241677241678_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl235930236254_
                                        '0))))
                                (let ((_tl236027236053_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice241677241678_
                                          '1)))
                                      (_target236025236051_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice241677241678_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl236027236053_))
                                      (___match241926241927_
                                       _e235932236249_
                                       _hd235931236252_
                                       _tl235930236254_
                                       ___splice241677241678_
                                       _target236025236051_
                                       _tl236027236053_)
                                      (let ()
                                        (declare (not safe))
                                        (_g235923236038_)))))
                              (let ()
                                (declare (not safe))
                                (_g235923236038_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl235930236254_))
                      (let ((___splice241677241678_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl235930236254_ '0))))
                        (let ((_tl236027236053_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice241677241678_ '1)))
                              (_target236025236051_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice241677241678_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl236027236053_))
                              (___match241926241927_
                               _e235932236249_
                               _hd235931236252_
                               _tl235930236254_
                               ___splice241677241678_
                               _target236025236051_
                               _tl236027236053_)
                              (let ()
                                (declare (not safe))
                                (_g235923236038_)))))
                      (let () (declare (not safe)) (_g235923236038_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl235960236334_))
                                                      (if (let ((__tmp243675
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp243675 'bind-method!))
                  (let ((_L236205_ _hd235967236348_)
                        (_L236206_ _hd235958236324_)
                        (_L236207_ _hd235949236300_)
                        (_L236208_ _hd235940236276_))
                    (___kont241673241674_
                     _L236205_
                     _L236206_
                     _L236207_
                     _L236208_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl235930236254_))
                      (let ((___splice241677241678_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl235930236254_ '0))))
                        (let ((_tl236027236053_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice241677241678_ '1)))
                              (_target236025236051_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice241677241678_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl236027236053_))
                              (___match241926241927_
                               _e235932236249_
                               _hd235931236252_
                               _tl235930236254_
                               ___splice241677241678_
                               _target236025236051_
                               _tl236027236053_)
                              (let ()
                                (declare (not safe))
                                (_g235923236038_)))))
                      (let () (declare (not safe)) (_g235923236038_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl235930236254_))
                  (let ((___splice241677241678_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl235930236254_ '0))))
                    (let ((_tl236027236053_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice241677241678_ '1)))
                          (_target236025236051_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice241677241678_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl236027236053_))
                          (___match241926241927_
                           _e235932236249_
                           _hd235931236252_
                           _tl235930236254_
                           ___splice241677241678_
                           _target236025236051_
                           _tl236027236053_)
                          (let () (declare (not safe)) (_g235923236038_)))))
                  (let () (declare (not safe)) (_g235923236038_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl235930236254_))
                                                  (let ((___splice241677241678_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl235930236254_
                                                            '0))))
                                                    (let ((_tl236027236053_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice241677241678_
                                                              '1)))
                                                          (_target236025236051_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice241677241678_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl236027236053_))
                                                          (___match241926241927_
                                                           _e235932236249_
                                                           _hd235931236252_
                                                           _tl235930236254_
                                                           ___splice241677241678_
                                                           _target236025236051_
                                                           _tl236027236053_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g235923236038_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g235923236038_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl235930236254_))
                                          (let ((___splice241677241678_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl235930236254_
                                                    '0))))
                                            (let ((_tl236027236053_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice241677241678_
                                                      '1)))
                                                  (_target236025236051_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice241677241678_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl236027236053_))
                                                  (___match241926241927_
                                                   _e235932236249_
                                                   _hd235931236252_
                                                   _tl235930236254_
                                                   ___splice241677241678_
                                                   _target236025236051_
                                                   _tl236027236053_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g235923236038_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g235923236038_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl235930236254_))
                                      (let ((___splice241677241678_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl235930236254_
                                                '0))))
                                        (let ((_tl236027236053_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice241677241678_
                                                  '1)))
                                              (_target236025236051_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice241677241678_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl236027236053_))
                                              (___match241926241927_
                                               _e235932236249_
                                               _hd235931236252_
                                               _tl235930236254_
                                               ___splice241677241678_
                                               _target236025236051_
                                               _tl236027236053_)
                                              (let ()
                                                (declare (not safe))
                                                (_g235923236038_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g235923236038_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl235930236254_))
                                  (let ((___splice241677241678_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl235930236254_
                                            '0))))
                                    (let ((_tl236027236053_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice241677241678_
                                              '1)))
                                          (_target236025236051_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice241677241678_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl236027236053_))
                                          (___match241926241927_
                                           _e235932236249_
                                           _hd235931236252_
                                           _tl235930236254_
                                           ___splice241677241678_
                                           _target236025236051_
                                           _tl236027236053_)
                                          (let ()
                                            (declare (not safe))
                                            (_g235923236038_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g235923236038_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl235930236254_))
                          (let ((___splice241677241678_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl235930236254_
                                    '0))))
                            (let ((_tl236027236053_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice241677241678_ '1)))
                                  (_target236025236051_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice241677241678_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl236027236053_))
                                  (___match241926241927_
                                   _e235932236249_
                                   _hd235931236252_
                                   _tl235930236254_
                                   ___splice241677241678_
                                   _target236025236051_
                                   _tl236027236053_)
                                  (let ()
                                    (declare (not safe))
                                    (_g235923236038_)))))
                          (let () (declare (not safe)) (_g235923236038_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl235930236254_))
                  (let ((___splice241677241678_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl235930236254_ '0))))
                    (let ((_tl236027236053_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice241677241678_ '1)))
                          (_target236025236051_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice241677241678_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl236027236053_))
                          (___match241926241927_
                           _e235932236249_
                           _hd235931236252_
                           _tl235930236254_
                           ___splice241677241678_
                           _target236025236051_
                           _tl236027236053_)
                          (let () (declare (not safe)) (_g235923236038_)))))
                  (let () (declare (not safe)) (_g235923236038_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl235930236254_))
                                                      (let ((___splice241677241678_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl235930236254_ '0))))
                (let ((_tl236027236053_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice241677241678_ '1)))
                      (_target236025236051_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice241677241678_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl236027236053_))
                      (___match241926241927_
                       _e235932236249_
                       _hd235931236252_
                       _tl235930236254_
                       ___splice241677241678_
                       _target236025236051_
                       _tl236027236053_)
                      (let () (declare (not safe)) (_g235923236038_)))))
              (let () (declare (not safe)) (_g235923236038_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl235930236254_))
                                              (let ((___splice241677241678_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl235930236254_
                                                        '0))))
                                                (let ((_tl236027236053_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice241677241678_
                                                          '1)))
                                                      (_target236025236051_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice241677241678_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl236027236053_))
                                                      (___match241926241927_
                                                       _e235932236249_
                                                       _hd235931236252_
                                                       _tl235930236254_
                                                       ___splice241677241678_
                                                       _target236025236051_
                                                       _tl236027236053_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g235923236038_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g235923236038_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl235930236254_))
                                          (let ((___splice241677241678_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl235930236254_
                                                    '0))))
                                            (let ((_tl236027236053_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice241677241678_
                                                      '1)))
                                                  (_target236025236051_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice241677241678_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl236027236053_))
                                                  (___match241926241927_
                                                   _e235932236249_
                                                   _hd235931236252_
                                                   _tl235930236254_
                                                   ___splice241677241678_
                                                   _target236025236051_
                                                   _tl236027236053_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g235923236038_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g235923236038_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl235930236254_))
                                      (let ((___splice241677241678_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl235930236254_
                                                '0))))
                                        (let ((_tl236027236053_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice241677241678_
                                                  '1)))
                                              (_target236025236051_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice241677241678_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl236027236053_))
                                              (___match241926241927_
                                               _e235932236249_
                                               _hd235931236252_
                                               _tl235930236254_
                                               ___splice241677241678_
                                               _target236025236051_
                                               _tl236027236053_)
                                              (let ()
                                                (declare (not safe))
                                                (_g235923236038_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g235923236038_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl235930236254_))
                              (let ((___splice241677241678_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl235930236254_
                                        '0))))
                                (let ((_tl236027236053_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice241677241678_
                                          '1)))
                                      (_target236025236051_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice241677241678_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl236027236053_))
                                      (___match241926241927_
                                       _e235932236249_
                                       _hd235931236252_
                                       _tl235930236254_
                                       ___splice241677241678_
                                       _target236025236051_
                                       _tl236027236053_)
                                      (let ()
                                        (declare (not safe))
                                        (_g235923236038_)))))
                              (let ()
                                (declare (not safe))
                                (_g235923236038_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl235930236254_))
                      (let ((___splice241677241678_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl235930236254_ '0))))
                        (let ((_tl236027236053_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice241677241678_ '1)))
                              (_target236025236051_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice241677241678_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl236027236053_))
                              (___match241926241927_
                               _e235932236249_
                               _hd235931236252_
                               _tl235930236254_
                               ___splice241677241678_
                               _target236025236051_
                               _tl236027236053_)
                              (let ()
                                (declare (not safe))
                                (_g235923236038_)))))
                      (let () (declare (not safe)) (_g235923236038_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl235930236254_))
                  (let ((___splice241677241678_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl235930236254_ '0))))
                    (let ((_tl236027236053_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice241677241678_ '1)))
                          (_target236025236051_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice241677241678_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl236027236053_))
                          (___match241926241927_
                           _e235932236249_
                           _hd235931236252_
                           _tl235930236254_
                           ___splice241677241678_
                           _target236025236051_
                           _tl236027236053_)
                          (let () (declare (not safe)) (_g235923236038_)))))
                  (let () (declare (not safe)) (_g235923236038_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl235930236254_))
                                                  (let ((___splice241677241678_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl235930236254_
                                                            '0))))
                                                    (let ((_tl236027236053_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice241677241678_
                                                              '1)))
                                                          (_target236025236051_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice241677241678_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl236027236053_))
                                                          (___match241926241927_
                                                           _e235932236249_
                                                           _hd235931236252_
                                                           _tl235930236254_
                                                           ___splice241677241678_
                                                           _target236025236051_
                                                           _tl236027236053_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g235923236038_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g235923236038_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl235930236254_))
                                              (let ((___splice241677241678_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl235930236254_
                                                        '0))))
                                                (let ((_tl236027236053_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice241677241678_
                                                          '1)))
                                                      (_target236025236051_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice241677241678_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl236027236053_))
                                                      (___match241926241927_
                                                       _e235932236249_
                                                       _hd235931236252_
                                                       _tl235930236254_
                                                       ___splice241677241678_
                                                       _target236025236051_
                                                       _tl236027236053_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g235923236038_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g235923236038_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl235930236254_))
                                          (let ((___splice241677241678_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl235930236254_
                                                    '0))))
                                            (let ((_tl236027236053_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice241677241678_
                                                      '1)))
                                                  (_target236025236051_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice241677241678_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl236027236053_))
                                                  (___match241926241927_
                                                   _e235932236249_
                                                   _hd235931236252_
                                                   _tl235930236254_
                                                   ___splice241677241678_
                                                   _target236025236051_
                                                   _tl236027236053_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g235923236038_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g235923236038_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl235930236254_))
                                  (let ((___splice241677241678_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl235930236254_
                                            '0))))
                                    (let ((_tl236027236053_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice241677241678_
                                              '1)))
                                          (_target236025236051_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice241677241678_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl236027236053_))
                                          (___match241926241927_
                                           _e235932236249_
                                           _hd235931236252_
                                           _tl235930236254_
                                           ___splice241677241678_
                                           _target236025236051_
                                           _tl236027236053_)
                                          (let ()
                                            (declare (not safe))
                                            (_g235923236038_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g235923236038_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl235930236254_))
                          (let ((___splice241677241678_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl235930236254_
                                    '0))))
                            (let ((_tl236027236053_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice241677241678_ '1)))
                                  (_target236025236051_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice241677241678_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl236027236053_))
                                  (___match241926241927_
                                   _e235932236249_
                                   _hd235931236252_
                                   _tl235930236254_
                                   ___splice241677241678_
                                   _target236025236051_
                                   _tl236027236053_)
                                  (let ()
                                    (declare (not safe))
                                    (_g235923236038_)))))
                          (let () (declare (not safe)) (_g235923236038_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl235930236254_))
                      (let ((___splice241677241678_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl235930236254_ '0))))
                        (let ((_tl236027236053_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice241677241678_ '1)))
                              (_target236025236051_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice241677241678_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl236027236053_))
                              (___match241926241927_
                               _e235932236249_
                               _hd235931236252_
                               _tl235930236254_
                               ___splice241677241678_
                               _target236025236051_
                               _tl236027236053_)
                              (let ()
                                (declare (not safe))
                                (_g235923236038_)))))
                      (let () (declare (not safe)) (_g235923236038_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl235930236254_))
                                                      (let ((___splice241677241678_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl235930236254_ '0))))
                (let ((_tl236027236053_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice241677241678_ '1)))
                      (_target236025236051_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice241677241678_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl236027236053_))
                      (___match241926241927_
                       _e235932236249_
                       _hd235931236252_
                       _tl235930236254_
                       ___splice241677241678_
                       _target236025236051_
                       _tl236027236053_)
                      (let () (declare (not safe)) (_g235923236038_)))))
              (let () (declare (not safe)) (_g235923236038_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl235930236254_))
                                                  (let ((___splice241677241678_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl235930236254_
                                                            '0))))
                                                    (let ((_tl236027236053_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice241677241678_
                                                              '1)))
                                                          (_target236025236051_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice241677241678_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl236027236053_))
                                                          (___match241926241927_
                                                           _e235932236249_
                                                           _hd235931236252_
                                                           _tl235930236254_
                                                           ___splice241677241678_
                                                           _target236025236051_
                                                           _tl236027236053_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g235923236038_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g235923236038_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl235930236254_))
                                              (let ((___splice241677241678_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl235930236254_
                                                        '0))))
                                                (let ((_tl236027236053_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice241677241678_
                                                          '1)))
                                                      (_target236025236051_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice241677241678_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl236027236053_))
                                                      (___match241926241927_
                                                       _e235932236249_
                                                       _hd235931236252_
                                                       _tl235930236254_
                                                       ___splice241677241678_
                                                       _target236025236051_
                                                       _tl236027236053_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g235923236038_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g235923236038_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl235930236254_))
                                      (let ((___splice241677241678_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl235930236254_
                                                '0))))
                                        (let ((_tl236027236053_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice241677241678_
                                                  '1)))
                                              (_target236025236051_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice241677241678_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl236027236053_))
                                              (___match241926241927_
                                               _e235932236249_
                                               _hd235931236252_
                                               _tl235930236254_
                                               ___splice241677241678_
                                               _target236025236051_
                                               _tl236027236053_)
                                              (let ()
                                                (declare (not safe))
                                                (_g235923236038_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g235923236038_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl235930236254_))
                              (let ((___splice241677241678_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl235930236254_
                                        '0))))
                                (let ((_tl236027236053_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice241677241678_
                                          '1)))
                                      (_target236025236051_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice241677241678_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl236027236053_))
                                      (___match241926241927_
                                       _e235932236249_
                                       _hd235931236252_
                                       _tl235930236254_
                                       ___splice241677241678_
                                       _target236025236051_
                                       _tl236027236053_)
                                      (let ()
                                        (declare (not safe))
                                        (_g235923236038_)))))
                              (let ()
                                (declare (not safe))
                                (_g235923236038_))))))
                  (let () (declare (not safe)) (_g235923236038_))))))))
    (define gxc#current-compile-type-closure (make-parameter '#f))
    (define gxc#basic-expression-type-begin%
      (lambda (_stx235859_)
        (let* ((___stx241929241930_ _stx235859_)
               (_g235862235875_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx241929241930_)))))
          (let ((___kont241931241932_
                 (lambda (_L235903_)
                   (let () (declare (not safe)) (gxc#compile-e__0 _L235903_))))
                (___kont241933241934_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx241929241930_))
                (let ((_e235867235887_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx241929241930_))))
                  (let ((_tl235865235892_
                         (let () (declare (not safe)) (##cdr _e235867235887_)))
                        (_hd235866235890_
                         (let ()
                           (declare (not safe))
                           (##car _e235867235887_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl235865235892_))
                        (let ((_e235870235895_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl235865235892_))))
                          (let ((_tl235868235900_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e235870235895_)))
                                (_hd235869235898_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e235870235895_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl235868235900_))
                                (___kont241931241932_ _hd235869235898_)
                                (___kont241933241934_))))
                        (___kont241933241934_))))
                (___kont241933241934_))))))
    (define gxc#basic-expression-type-annotations
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_stx235739_)
        (let* ((_g235741235758_
                (lambda (_g235742235755_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g235742235755_))))
               (_g235740235856_
                (lambda (_g235742235761_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g235742235761_))
                      (let ((_e235747235763_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g235742235761_))))
                        (let ((_hd235746235766_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235747235763_)))
                              (_tl235745235768_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235747235763_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl235745235768_))
                              (let ((_e235750235771_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl235745235768_))))
                                (let ((_hd235749235774_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e235750235771_)))
                                      (_tl235748235776_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e235750235771_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl235748235776_))
                                      (let ((_e235753235779_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl235748235776_))))
                                        (let ((_hd235752235782_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e235753235779_)))
                                              (_tl235751235784_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e235753235779_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl235751235784_))
                                              ((lambda (_L235787_ _L235788_)
                                                 (let* ((___stx241951241952_
                                                         _L235788_)
                                                        (_g235804235815_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx241951241952_)))))
                                                   (let ((___kont241953241954_
                                                          (lambda (_L235835_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L235836_)
                    (let ((_$e235848_
                           (let ((__tmp243676
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _L235836_))))
                             (declare (not safe))
                             (table-ref
                              gxc#basic-expression-type-annotations
                              __tmp243676
                              '#f))))
                      (if _$e235848_
                          ((lambda (_type-e235851_)
                             (_type-e235851_ _stx235739_ _L235788_))
                           _$e235848_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _L235787_))))))
                 (___kont241955241956_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__0 _L235787_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((___match241962241963_
                                                            (lambda (_e235810235827_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd235809235830_
                             _tl235808235832_)
                      (let ((_L235835_ _tl235808235832_)
                            (_L235836_ _hd235809235830_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L235836_))
                            (___kont241953241954_ _L235835_ _L235836_)
                            (___kont241955241956_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? ___stx241951241952_))
                   (let ((_e235810235827_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e ___stx241951241952_))))
                     (let ((_tl235808235832_
                            (let ()
                              (declare (not safe))
                              (##cdr _e235810235827_)))
                           (_hd235809235830_
                            (let ()
                              (declare (not safe))
                              (##car _e235810235827_))))
                       (___match241962241963_
                        _e235810235827_
                        _hd235809235830_
                        _tl235808235832_)))
                   (___kont241955241956_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd235752235782_
                                               _hd235749235774_)
                                              (let ()
                                                (declare (not safe))
                                                (_g235741235758_
                                                 _g235742235761_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g235741235758_ _g235742235761_)))))
                              (let ()
                                (declare (not safe))
                                (_g235741235758_ _g235742235761_)))))
                      (let ()
                        (declare (not safe))
                        (_g235741235758_ _g235742235761_))))))
          (declare (not safe))
          (_g235740235856_ _stx235739_))))
    (define gxc#basic-expression-type-annotation-mop.class
      (lambda (_stx235600_ _ann235601_)
        (let* ((_g235603235636_
                (lambda (_g235604235633_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g235604235633_))))
               (_g235602235736_
                (lambda (_g235604235639_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g235604235639_))
                      (let ((_e235613235641_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g235604235639_))))
                        (let ((_hd235612235644_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235613235641_)))
                              (_tl235611235646_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235613235641_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl235611235646_))
                              (let ((_e235616235649_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl235611235646_))))
                                (let ((_hd235615235652_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e235616235649_)))
                                      (_tl235614235654_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e235616235649_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl235614235654_))
                                      (let ((_e235619235657_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl235614235654_))))
                                        (let ((_hd235618235660_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e235619235657_)))
                                              (_tl235617235662_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e235619235657_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl235617235662_))
                                              (let ((_e235622235665_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl235617235662_))))
                                                (let ((_hd235621235668_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e235622235665_)))
                                                      (_tl235620235670_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e235622235665_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl235620235670_))
                                                      (let ((_e235625235673_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl235620235670_))))
                (let ((_hd235624235676_
                       (let () (declare (not safe)) (##car _e235625235673_)))
                      (_tl235623235678_
                       (let () (declare (not safe)) (##cdr _e235625235673_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl235623235678_))
                      (let ((_e235628235681_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl235623235678_))))
                        (let ((_hd235627235684_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235628235681_)))
                              (_tl235626235686_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235628235681_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl235626235686_))
                              (let ((_e235631235689_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl235626235686_))))
                                (let ((_hd235630235692_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e235631235689_)))
                                      (_tl235629235694_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e235631235689_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl235629235694_))
                                      ((lambda (_L235697_
                                                _L235698_
                                                _L235699_
                                                _L235700_
                                                _L235701_
                                                _L235702_)
                                         (let ((_type-id235729_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L235702_)))
                                               (_super235730_
                                                (map gxc#identifier-symbol
                                                     _L235701_))
                                               (_slots235731_
                                                (map gx#stx-e _L235700_))
                                               (_ctor-method235732_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L235699_)))
                                               (_struct?235733_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L235698_)))
                                               (_final?235734_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L235697_))))
                                           (let ((__obj243634
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
                                              __obj243634
                                              _type-id235729_
                                              _super235730_
                                              _slots235731_
                                              _ctor-method235732_
                                              _struct?235733_
                                              _final?235734_)
                                             __obj243634)))
                                       _hd235630235692_
                                       _hd235627235684_
                                       _hd235624235676_
                                       _hd235621235668_
                                       _hd235618235660_
                                       _hd235615235652_)
                                      (let ()
                                        (declare (not safe))
                                        (_g235603235636_ _g235604235639_)))))
                              (let ()
                                (declare (not safe))
                                (_g235603235636_ _g235604235639_)))))
                      (let ()
                        (declare (not safe))
                        (_g235603235636_ _g235604235639_)))))
              (let ()
                (declare (not safe))
                (_g235603235636_ _g235604235639_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g235603235636_
                                                 _g235604235639_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g235603235636_ _g235604235639_)))))
                              (let ()
                                (declare (not safe))
                                (_g235603235636_ _g235604235639_)))))
                      (let ()
                        (declare (not safe))
                        (_g235603235636_ _g235604235639_))))))
          (declare (not safe))
          (_g235602235736_ _ann235601_))))
    (define gxc#basic-expression-type-annotation-mop.constructor
      (lambda (_stx235548_ _ann235549_)
        (let* ((_g235551235564_
                (lambda (_g235552235561_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g235552235561_))))
               (_g235550235597_
                (lambda (_g235552235567_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g235552235567_))
                      (let ((_e235556235569_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g235552235567_))))
                        (let ((_hd235555235572_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235556235569_)))
                              (_tl235554235574_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235556235569_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl235554235574_))
                              (let ((_e235559235577_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl235554235574_))))
                                (let ((_hd235558235580_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e235559235577_)))
                                      (_tl235557235582_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e235559235577_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl235557235582_))
                                      ((lambda (_L235585_)
                                         (let ((__tmp243677
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L235585_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!constructor::t
                                            __tmp243677)))
                                       _hd235558235580_)
                                      (let ()
                                        (declare (not safe))
                                        (_g235551235564_ _g235552235567_)))))
                              (let ()
                                (declare (not safe))
                                (_g235551235564_ _g235552235567_)))))
                      (let ()
                        (declare (not safe))
                        (_g235551235564_ _g235552235567_))))))
          (declare (not safe))
          (_g235550235597_ _ann235549_))))
    (define gxc#basic-expression-type-annotation-mop.predicate
      (lambda (_stx235496_ _ann235497_)
        (let* ((_g235499235512_
                (lambda (_g235500235509_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g235500235509_))))
               (_g235498235545_
                (lambda (_g235500235515_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g235500235515_))
                      (let ((_e235504235517_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g235500235515_))))
                        (let ((_hd235503235520_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235504235517_)))
                              (_tl235502235522_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235504235517_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl235502235522_))
                              (let ((_e235507235525_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl235502235522_))))
                                (let ((_hd235506235528_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e235507235525_)))
                                      (_tl235505235530_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e235507235525_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl235505235530_))
                                      ((lambda (_L235533_)
                                         (let ((__tmp243678
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L235533_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!predicate::t
                                            __tmp243678)))
                                       _hd235506235528_)
                                      (let ()
                                        (declare (not safe))
                                        (_g235499235512_ _g235500235515_)))))
                              (let ()
                                (declare (not safe))
                                (_g235499235512_ _g235500235515_)))))
                      (let ()
                        (declare (not safe))
                        (_g235499235512_ _g235500235515_))))))
          (declare (not safe))
          (_g235498235545_ _ann235497_))))
    (define gxc#basic-expression-type-annotation-mop.accessor
      (lambda (_stx235412_ _ann235413_)
        (let* ((_g235415235436_
                (lambda (_g235416235433_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g235416235433_))))
               (_g235414235493_
                (lambda (_g235416235439_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g235416235439_))
                      (let ((_e235422235441_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g235416235439_))))
                        (let ((_hd235421235444_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235422235441_)))
                              (_tl235420235446_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235422235441_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl235420235446_))
                              (let ((_e235425235449_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl235420235446_))))
                                (let ((_hd235424235452_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e235425235449_)))
                                      (_tl235423235454_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e235425235449_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl235423235454_))
                                      (let ((_e235428235457_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl235423235454_))))
                                        (let ((_hd235427235460_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e235428235457_)))
                                              (_tl235426235462_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e235428235457_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl235426235462_))
                                              (let ((_e235431235465_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl235426235462_))))
                                                (let ((_hd235430235468_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e235431235465_)))
                                                      (_tl235429235470_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e235431235465_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl235429235470_))
                                                      ((lambda (_L235473_
                                                                _L235474_
                                                                _L235475_)
                                                         (let ((__tmp243681
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L235475_)))
                       (__tmp243680
                        (let () (declare (not safe)) (gx#stx-e _L235474_)))
                       (__tmp243679
                        (let () (declare (not safe)) (gx#stx-e _L235473_))))
                   (declare (not safe))
                   (##structure
                    gxc#!accessor::t
                    __tmp243681
                    __tmp243680
                    __tmp243679)))
               _hd235430235468_
               _hd235427235460_
               _hd235424235452_)
              (let ()
                (declare (not safe))
                (_g235415235436_ _g235416235439_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g235415235436_
                                                 _g235416235439_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g235415235436_ _g235416235439_)))))
                              (let ()
                                (declare (not safe))
                                (_g235415235436_ _g235416235439_)))))
                      (let ()
                        (declare (not safe))
                        (_g235415235436_ _g235416235439_))))))
          (declare (not safe))
          (_g235414235493_ _ann235413_))))
    (define gxc#basic-expression-type-annotation-mop.mutator
      (lambda (_stx235328_ _ann235329_)
        (let* ((_g235331235352_
                (lambda (_g235332235349_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g235332235349_))))
               (_g235330235409_
                (lambda (_g235332235355_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g235332235355_))
                      (let ((_e235338235357_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g235332235355_))))
                        (let ((_hd235337235360_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235338235357_)))
                              (_tl235336235362_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235338235357_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl235336235362_))
                              (let ((_e235341235365_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl235336235362_))))
                                (let ((_hd235340235368_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e235341235365_)))
                                      (_tl235339235370_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e235341235365_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl235339235370_))
                                      (let ((_e235344235373_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl235339235370_))))
                                        (let ((_hd235343235376_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e235344235373_)))
                                              (_tl235342235378_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e235344235373_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl235342235378_))
                                              (let ((_e235347235381_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl235342235378_))))
                                                (let ((_hd235346235384_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e235347235381_)))
                                                      (_tl235345235386_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e235347235381_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl235345235386_))
                                                      ((lambda (_L235389_
                                                                _L235390_
                                                                _L235391_)
                                                         (let ((__tmp243684
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L235391_)))
                       (__tmp243683
                        (let () (declare (not safe)) (gx#stx-e _L235390_)))
                       (__tmp243682
                        (let () (declare (not safe)) (gx#stx-e _L235389_))))
                   (declare (not safe))
                   (##structure
                    gxc#!mutator::t
                    __tmp243684
                    __tmp243683
                    __tmp243682)))
               _hd235346235384_
               _hd235343235376_
               _hd235340235368_)
              (let ()
                (declare (not safe))
                (_g235331235352_ _g235332235355_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g235331235352_
                                                 _g235332235355_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g235331235352_ _g235332235355_)))))
                              (let ()
                                (declare (not safe))
                                (_g235331235352_ _g235332235355_)))))
                      (let ()
                        (declare (not safe))
                        (_g235331235352_ _g235332235355_))))))
          (declare (not safe))
          (_g235330235409_ _ann235329_))))
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
      (lambda (_stx234448_)
        (let* ((___stx241965241966_ _stx234448_)
               (_g234454234650_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx241965241966_)))))
          (let ((___kont241967241968_
                 (lambda (_L235316_)
                   (let ((__obj243635
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj243635
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L235316_))
                      '#f)
                     __obj243635)))
                (___kont241969241970_
                 (lambda (_L235243_
                          _L235244_
                          _L235245_
                          _L235246_
                          _L235247_
                          _L235248_)
                   (let* ((_tab235298_
                           (let () (declare (not safe)) (gx#stx-e _L235245_)))
                          (_keys235300_
                           (if _tab235298_
                               (let ((__tmp243685 (vector->list _tab235298_)))
                                 (declare (not safe))
                                 (filter values __tmp243685))
                               '#f)))
                     (let ((__tmp243686
                            (let ()
                              (declare (not safe))
                              (gxc#identifier-symbol _L235244_))))
                       (declare (not safe))
                       (##structure
                        gxc#!kw-lambda::t
                        'kw-lambda
                        _keys235300_
                        __tmp243686)))))
                (___kont241971241972_
                 (lambda (_L234976_
                          _L234977_
                          _L234978_
                          _L234979_
                          _L234980_
                          _L234981_
                          _L234982_
                          _L234983_
                          _L234984_
                          _L234985_)
                   (let ((__tmp243688
                          (map gx#stx-e
                               (let ((__tmp243689
                                      (lambda (_g235078235081_ _g235079235083_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g235078235081_
                                                _g235079235083_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp243689 '() _L234978_))))
                         (__tmp243687
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L234982_))))
                     (declare (not safe))
                     (##structure
                      gxc#!kw-lambda-primary::t
                      'kw-lambda-dispatch
                      __tmp243688
                      __tmp243687))))
                (___kont241975241976_
                 (lambda (_L234686_)
                   (let ((__obj243636
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj243636
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L234686_))
                      (let ()
                        (declare (not safe))
                        (gxc#dispatch-lambda-form-delegate _L234686_)))
                     __obj243636)))
                (___kont241977241978_
                 (lambda (_L234663_)
                   (let ((__obj243637
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj243637
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L234663_))
                      '#f)
                     __obj243637))))
            (let* ((___match242284242285_
                    (lambda (_e234641234678_ _hd234640234681_ _tl234639234683_)
                      (let ((_L234686_ _tl234639234683_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#dispatch-lambda-form? _L234686_))
                            (___kont241975241976_ _L234686_)
                            (___kont241977241978_ _tl234639234683_)))))
                   (___match242278242279_
                    (lambda (_e234535234700_
                             _hd234534234703_
                             _tl234533234705_
                             _e234538234708_
                             _hd234537234711_
                             _tl234536234713_
                             _e234541234716_
                             _hd234540234719_
                             _tl234539234721_
                             _e234544234724_
                             _hd234543234727_
                             _tl234542234729_
                             _e234547234732_
                             _hd234546234735_
                             _tl234545234737_
                             _e234550234740_
                             _hd234549234743_
                             _tl234548234745_
                             _e234553234748_
                             _hd234552234751_
                             _tl234551234753_
                             _e234556234756_
                             _hd234555234759_
                             _tl234554234761_
                             _e234559234764_
                             _hd234558234767_
                             _tl234557234769_
                             _e234562234772_
                             _hd234561234775_
                             _tl234560234777_
                             _e234565234780_
                             _hd234564234783_
                             _tl234563234785_
                             _e234568234788_
                             _hd234567234791_
                             _tl234566234793_
                             _e234571234796_
                             _hd234570234799_
                             _tl234569234801_
                             _e234574234804_
                             _hd234573234807_
                             _tl234572234809_
                             ___splice241973241974_
                             _target234575234812_
                             _tl234577234814_
                             _e234592234817_
                             _hd234591234820_
                             _tl234590234822_
                             _e234595234825_
                             _hd234594234828_
                             _tl234593234830_
                             _e234598234833_
                             _hd234597234836_
                             _tl234596234838_)
                      (letrec ((_loop234578234841_
                                (lambda (_hd234576234844_
                                         _-absent-value234582234846_
                                         _key234583234848_
                                         _-xkwvar234584234850_
                                         _-hash-ref234585234852_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd234576234844_))
                                      (let ((_e234579234855_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd234576234844_))))
                                        (let ((_lp-tl234581234860_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234579234855_)))
                                              (_lp-hd234580234858_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234579234855_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _lp-hd234580234858_))
                                              (let ((_e234601234863_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _lp-hd234580234858_))))
                                                (let ((_tl234599234868_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e234601234863_)))
                                                      (_hd234600234866_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e234601234863_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd234600234866_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#call
                                                             _hd234600234866_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl234599234868_))
                      (let ((_e234604234871_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl234599234868_))))
                        (let ((_tl234602234876_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e234604234871_)))
                              (_hd234603234874_
                               (let ()
                                 (declare (not safe))
                                 (##car _e234604234871_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd234603234874_))
                              (let ((_e234607234879_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd234603234874_))))
                                (let ((_tl234605234884_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e234607234879_)))
                                      (_hd234606234882_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e234607234879_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd234606234882_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd234606234882_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl234605234884_))
                                              (let ((_e234610234887_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl234605234884_))))
                                                (let ((_tl234608234892_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e234610234887_)))
                                                      (_hd234609234890_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e234610234887_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl234608234892_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl234602234876_))
                                                          (let ((_e234613234895_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl234602234876_))))
                    (let ((_tl234611234900_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234613234895_)))
                          (_hd234612234898_
                           (let ()
                             (declare (not safe))
                             (##car _e234613234895_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd234612234898_))
                          (let ((_e234616234903_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd234612234898_))))
                            (let ((_tl234614234908_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234616234903_)))
                                  (_hd234615234906_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234616234903_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd234615234906_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd234615234906_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl234614234908_))
                                          (let ((_e234619234911_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl234614234908_))))
                                            (let ((_tl234617234916_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e234619234911_)))
                                                  (_hd234618234914_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e234619234911_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl234617234916_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl234611234900_))
                                                      (let ((_e234622234919_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl234611234900_))))
                (let ((_tl234620234924_
                       (let () (declare (not safe)) (##cdr _e234622234919_)))
                      (_hd234621234922_
                       (let () (declare (not safe)) (##car _e234622234919_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd234621234922_))
                      (let ((_e234625234927_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd234621234922_))))
                        (let ((_tl234623234932_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e234625234927_)))
                              (_hd234624234930_
                               (let ()
                                 (declare (not safe))
                                 (##car _e234625234927_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd234624234930_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#quote _hd234624234930_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl234623234932_))
                                      (let ((_e234628234935_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl234623234932_))))
                                        (let ((_tl234626234940_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234628234935_)))
                                              (_hd234627234938_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234628234935_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl234626234940_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl234620234924_))
                                                  (let ((_e234631234943_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl234620234924_))))
                                                    (let ((_tl234629234948_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e234631234943_)))
                                                          (_hd234630234946_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e234631234943_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd234630234946_))
                                                          (let ((_e234634234951_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd234630234946_))))
                    (let ((_tl234632234956_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234634234951_)))
                          (_hd234633234954_
                           (let ()
                             (declare (not safe))
                             (##car _e234634234951_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd234633234954_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd234633234954_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl234632234956_))
                                  (let ((_e234637234959_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl234632234956_))))
                                    (let ((_tl234635234964_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e234637234959_)))
                                          (_hd234636234962_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e234637234959_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl234635234964_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl234629234948_))
                                              (let ((__tmp243704
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd234636234962_
                                                             _-absent-value234582234846_)))
                                                    (__tmp243703
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd234627234938_
                                                             _key234583234848_)))
                                                    (__tmp243702
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd234618234914_
                                                             _-xkwvar234584234850_)))
                                                    (__tmp243701
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd234609234890_
                                                             _-hash-ref234585234852_))))
                                                (declare (not safe))
                                                (_loop234578234841_
                                                 _lp-tl234581234860_
                                                 __tmp243704
                                                 __tmp243703
                                                 __tmp243702
                                                 __tmp243701))
                                              (___match242284242285_
                                               _e234535234700_
                                               _hd234534234703_
                                               _tl234533234705_))
                                          (___match242284242285_
                                           _e234535234700_
                                           _hd234534234703_
                                           _tl234533234705_))))
                                  (___match242284242285_
                                   _e234535234700_
                                   _hd234534234703_
                                   _tl234533234705_))
                              (___match242284242285_
                               _e234535234700_
                               _hd234534234703_
                               _tl234533234705_))
                          (___match242284242285_
                           _e234535234700_
                           _hd234534234703_
                           _tl234533234705_))))
                  (___match242284242285_
                   _e234535234700_
                   _hd234534234703_
                   _tl234533234705_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match242284242285_
                                                   _e234535234700_
                                                   _hd234534234703_
                                                   _tl234533234705_))
                                              (___match242284242285_
                                               _e234535234700_
                                               _hd234534234703_
                                               _tl234533234705_))))
                                      (___match242284242285_
                                       _e234535234700_
                                       _hd234534234703_
                                       _tl234533234705_))
                                  (___match242284242285_
                                   _e234535234700_
                                   _hd234534234703_
                                   _tl234533234705_))
                              (___match242284242285_
                               _e234535234700_
                               _hd234534234703_
                               _tl234533234705_))))
                      (___match242284242285_
                       _e234535234700_
                       _hd234534234703_
                       _tl234533234705_))))
              (___match242284242285_
               _e234535234700_
               _hd234534234703_
               _tl234533234705_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match242284242285_
                                                   _e234535234700_
                                                   _hd234534234703_
                                                   _tl234533234705_))))
                                          (___match242284242285_
                                           _e234535234700_
                                           _hd234534234703_
                                           _tl234533234705_))
                                      (___match242284242285_
                                       _e234535234700_
                                       _hd234534234703_
                                       _tl234533234705_))
                                  (___match242284242285_
                                   _e234535234700_
                                   _hd234534234703_
                                   _tl234533234705_))))
                          (___match242284242285_
                           _e234535234700_
                           _hd234534234703_
                           _tl234533234705_))))
                  (___match242284242285_
                   _e234535234700_
                   _hd234534234703_
                   _tl234533234705_))
              (___match242284242285_
               _e234535234700_
               _hd234534234703_
               _tl234533234705_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match242284242285_
                                               _e234535234700_
                                               _hd234534234703_
                                               _tl234533234705_))
                                          (___match242284242285_
                                           _e234535234700_
                                           _hd234534234703_
                                           _tl234533234705_))
                                      (___match242284242285_
                                       _e234535234700_
                                       _hd234534234703_
                                       _tl234533234705_))))
                              (___match242284242285_
                               _e234535234700_
                               _hd234534234703_
                               _tl234533234705_))))
                      (___match242284242285_
                       _e234535234700_
                       _hd234534234703_
                       _tl234533234705_))
                  (___match242284242285_
                   _e234535234700_
                   _hd234534234703_
                   _tl234533234705_))
              (___match242284242285_
               _e234535234700_
               _hd234534234703_
               _tl234533234705_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match242284242285_
                                               _e234535234700_
                                               _hd234534234703_
                                               _tl234533234705_))))
                                      (let ((_-hash-ref234589234973_
                                             (reverse _-hash-ref234585234852_))
                                            (_-xkwvar234588234971_
                                             (reverse _-xkwvar234584234850_))
                                            (_key234587234969_
                                             (reverse _key234583234848_))
                                            (_-absent-value234586234967_
                                             (reverse _-absent-value234582234846_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl234542234729_))
                                            (let ((_L234976_ _hd234597234836_)
                                                  (_L234977_
                                                   _-absent-value234586234967_)
                                                  (_L234978_ _key234587234969_)
                                                  (_L234979_
                                                   _-xkwvar234588234971_)
                                                  (_L234980_
                                                   _-hash-ref234589234973_)
                                                  (_L234981_ _hd234573234807_)
                                                  (_L234982_ _hd234564234783_)
                                                  (_L234983_ _hd234555234759_)
                                                  (_L234984_ _tl234539234721_)
                                                  (_L234985_ _hd234540234719_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L234985_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L234984_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#runtime-identifier=?
                                                          _L234983_
                                                          'apply))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#free-identifier=?
                                                          _L234985_
                                                          _L234981_))
                                                       (let ((__tmp243699
                                                              (let ((__tmp243700
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g235038235041_ _g235039235043_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g235038235041_ _g235039235043_)))))
                        (declare (not safe))
                        (foldr1 __tmp243700 '() _L234978_))))
                 (declare (not safe))
                 (andmap1 gx#stx-keyword? __tmp243699))
               (let ((__tmp243698
                      (lambda (_g235045235047_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g235045235047_
                           'hash-ref))))
                     (__tmp243696
                      (let ((__tmp243697
                             (lambda (_g235049235052_ _g235050235054_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g235049235052_ _g235050235054_)))))
                        (declare (not safe))
                        (foldr1 __tmp243697 '() _L234980_))))
                 (declare (not safe))
                 (andmap1 __tmp243698 __tmp243696))
               (let ((__tmp243695
                      (lambda (_g235056235058_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g235056235058_
                           'absent-value))))
                     (__tmp243693
                      (let ((__tmp243694
                             (lambda (_g235060235063_ _g235061235065_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g235060235063_ _g235061235065_)))))
                        (declare (not safe))
                        (foldr1 __tmp243694 '() _L234977_))))
                 (declare (not safe))
                 (andmap1 __tmp243695 __tmp243693))
               (let ((__tmp243692
                      (lambda (_g235067235069_)
                        (let ()
                          (declare (not safe))
                          (gx#free-identifier=? _g235067235069_ _L234985_))))
                     (__tmp243690
                      (let ((__tmp243691
                             (lambda (_g235071235074_ _g235072235076_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g235071235074_ _g235072235076_)))))
                        (declare (not safe))
                        (foldr1 __tmp243691 '() _L234979_))))
                 (declare (not safe))
                 (andmap1 __tmp243692 __tmp243690)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont241971241972_
                                                   _L234976_
                                                   _L234977_
                                                   _L234978_
                                                   _L234979_
                                                   _L234980_
                                                   _L234981_
                                                   _L234982_
                                                   _L234983_
                                                   _L234984_
                                                   _L234985_)
                                                  (___match242284242285_
                                                   _e234535234700_
                                                   _hd234534234703_
                                                   _tl234533234705_)))
                                            (___match242284242285_
                                             _e234535234700_
                                             _hd234534234703_
                                             _tl234533234705_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop234578234841_
                           _target234575234812_
                           '()
                           '()
                           '()
                           '())))))
                   (___match242150242151_
                    (lambda (_e234535234700_
                             _hd234534234703_
                             _tl234533234705_
                             _e234538234708_
                             _hd234537234711_
                             _tl234536234713_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd234537234711_))
                          (let ((_e234541234716_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd234537234711_))))
                            (let ((_tl234539234721_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234541234716_)))
                                  (_hd234540234719_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234541234716_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl234536234713_))
                                  (let ((_e234544234724_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl234536234713_))))
                                    (let ((_tl234542234729_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e234544234724_)))
                                          (_hd234543234727_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e234544234724_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd234543234727_))
                                          (let ((_e234547234732_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd234543234727_))))
                                            (let ((_tl234545234737_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e234547234732_)))
                                                  (_hd234546234735_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e234547234732_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd234546234735_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd234546234735_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl234545234737_))
                                                          (let ((_e234550234740_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl234545234737_))))
                    (let ((_tl234548234745_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234550234740_)))
                          (_hd234549234743_
                           (let ()
                             (declare (not safe))
                             (##car _e234550234740_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd234549234743_))
                          (let ((_e234553234748_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd234549234743_))))
                            (let ((_tl234551234753_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234553234748_)))
                                  (_hd234552234751_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234553234748_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd234552234751_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd234552234751_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl234551234753_))
                                          (let ((_e234556234756_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl234551234753_))))
                                            (let ((_tl234554234761_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e234556234756_)))
                                                  (_hd234555234759_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e234556234756_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl234554234761_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl234548234745_))
                                                      (let ((_e234559234764_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl234548234745_))))
                (let ((_tl234557234769_
                       (let () (declare (not safe)) (##cdr _e234559234764_)))
                      (_hd234558234767_
                       (let () (declare (not safe)) (##car _e234559234764_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd234558234767_))
                      (let ((_e234562234772_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd234558234767_))))
                        (let ((_tl234560234777_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e234562234772_)))
                              (_hd234561234775_
                               (let ()
                                 (declare (not safe))
                                 (##car _e234562234772_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd234561234775_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd234561234775_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl234560234777_))
                                      (let ((_e234565234780_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl234560234777_))))
                                        (let ((_tl234563234785_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234565234780_)))
                                              (_hd234564234783_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234565234780_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl234563234785_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl234557234769_))
                                                  (let ((_e234568234788_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl234557234769_))))
                                                    (let ((_tl234566234793_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e234568234788_)))
                                                          (_hd234567234791_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e234568234788_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd234567234791_))
                                                          (let ((_e234571234796_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd234567234791_))))
                    (let ((_tl234569234801_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234571234796_)))
                          (_hd234570234799_
                           (let ()
                             (declare (not safe))
                             (##car _e234571234796_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd234570234799_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd234570234799_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl234569234801_))
                                  (let ((_e234574234804_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl234569234801_))))
                                    (let ((_tl234572234809_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e234574234804_)))
                                          (_hd234573234807_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e234574234804_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl234572234809_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl234566234793_))
                                              (if (fx>= (let ()
                                                          (declare (not safe))
                                                          (gx#stx-length
                                                           _tl234566234793_))
                                                        '1)
                                                  (let ((___splice241973241974_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl234566234793_
                                                            '1))))
                                                    (let ((_tl234577234814_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice241973241974_
                                                              '1)))
                                                          (_target234575234812_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice241973241974_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl234577234814_))
                                                          (let ((_e234592234817_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl234577234814_))))
                    (let ((_tl234590234822_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234592234817_)))
                          (_hd234591234820_
                           (let ()
                             (declare (not safe))
                             (##car _e234592234817_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd234591234820_))
                          (let ((_e234595234825_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd234591234820_))))
                            (let ((_tl234593234830_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234595234825_)))
                                  (_hd234594234828_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234595234825_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd234594234828_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd234594234828_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl234593234830_))
                                          (let ((_e234598234833_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl234593234830_))))
                                            (let ((_tl234596234838_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e234598234833_)))
                                                  (_hd234597234836_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e234598234833_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl234596234838_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl234590234822_))
                                                      (___match242278242279_
                                                       _e234535234700_
                                                       _hd234534234703_
                                                       _tl234533234705_
                                                       _e234538234708_
                                                       _hd234537234711_
                                                       _tl234536234713_
                                                       _e234541234716_
                                                       _hd234540234719_
                                                       _tl234539234721_
                                                       _e234544234724_
                                                       _hd234543234727_
                                                       _tl234542234729_
                                                       _e234547234732_
                                                       _hd234546234735_
                                                       _tl234545234737_
                                                       _e234550234740_
                                                       _hd234549234743_
                                                       _tl234548234745_
                                                       _e234553234748_
                                                       _hd234552234751_
                                                       _tl234551234753_
                                                       _e234556234756_
                                                       _hd234555234759_
                                                       _tl234554234761_
                                                       _e234559234764_
                                                       _hd234558234767_
                                                       _tl234557234769_
                                                       _e234562234772_
                                                       _hd234561234775_
                                                       _tl234560234777_
                                                       _e234565234780_
                                                       _hd234564234783_
                                                       _tl234563234785_
                                                       _e234568234788_
                                                       _hd234567234791_
                                                       _tl234566234793_
                                                       _e234571234796_
                                                       _hd234570234799_
                                                       _tl234569234801_
                                                       _e234574234804_
                                                       _hd234573234807_
                                                       _tl234572234809_
                                                       ___splice241973241974_
                                                       _target234575234812_
                                                       _tl234577234814_
                                                       _e234592234817_
                                                       _hd234591234820_
                                                       _tl234590234822_
                                                       _e234595234825_
                                                       _hd234594234828_
                                                       _tl234593234830_
                                                       _e234598234833_
                                                       _hd234597234836_
                                                       _tl234596234838_)
                                                      (___match242284242285_
                                                       _e234535234700_
                                                       _hd234534234703_
                                                       _tl234533234705_))
                                                  (___match242284242285_
                                                   _e234535234700_
                                                   _hd234534234703_
                                                   _tl234533234705_))))
                                          (___match242284242285_
                                           _e234535234700_
                                           _hd234534234703_
                                           _tl234533234705_))
                                      (___match242284242285_
                                       _e234535234700_
                                       _hd234534234703_
                                       _tl234533234705_))
                                  (___match242284242285_
                                   _e234535234700_
                                   _hd234534234703_
                                   _tl234533234705_))))
                          (___match242284242285_
                           _e234535234700_
                           _hd234534234703_
                           _tl234533234705_))))
                  (___match242284242285_
                   _e234535234700_
                   _hd234534234703_
                   _tl234533234705_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match242284242285_
                                                   _e234535234700_
                                                   _hd234534234703_
                                                   _tl234533234705_))
                                              (___match242284242285_
                                               _e234535234700_
                                               _hd234534234703_
                                               _tl234533234705_))
                                          (___match242284242285_
                                           _e234535234700_
                                           _hd234534234703_
                                           _tl234533234705_))))
                                  (___match242284242285_
                                   _e234535234700_
                                   _hd234534234703_
                                   _tl234533234705_))
                              (___match242284242285_
                               _e234535234700_
                               _hd234534234703_
                               _tl234533234705_))
                          (___match242284242285_
                           _e234535234700_
                           _hd234534234703_
                           _tl234533234705_))))
                  (___match242284242285_
                   _e234535234700_
                   _hd234534234703_
                   _tl234533234705_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match242284242285_
                                                   _e234535234700_
                                                   _hd234534234703_
                                                   _tl234533234705_))
                                              (___match242284242285_
                                               _e234535234700_
                                               _hd234534234703_
                                               _tl234533234705_))))
                                      (___match242284242285_
                                       _e234535234700_
                                       _hd234534234703_
                                       _tl234533234705_))
                                  (___match242284242285_
                                   _e234535234700_
                                   _hd234534234703_
                                   _tl234533234705_))
                              (___match242284242285_
                               _e234535234700_
                               _hd234534234703_
                               _tl234533234705_))))
                      (___match242284242285_
                       _e234535234700_
                       _hd234534234703_
                       _tl234533234705_))))
              (___match242284242285_
               _e234535234700_
               _hd234534234703_
               _tl234533234705_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match242284242285_
                                                   _e234535234700_
                                                   _hd234534234703_
                                                   _tl234533234705_))))
                                          (___match242284242285_
                                           _e234535234700_
                                           _hd234534234703_
                                           _tl234533234705_))
                                      (___match242284242285_
                                       _e234535234700_
                                       _hd234534234703_
                                       _tl234533234705_))
                                  (___match242284242285_
                                   _e234535234700_
                                   _hd234534234703_
                                   _tl234533234705_))))
                          (___match242284242285_
                           _e234535234700_
                           _hd234534234703_
                           _tl234533234705_))))
                  (___match242284242285_
                   _e234535234700_
                   _hd234534234703_
                   _tl234533234705_))
              (___match242284242285_
               _e234535234700_
               _hd234534234703_
               _tl234533234705_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match242284242285_
                                                   _e234535234700_
                                                   _hd234534234703_
                                                   _tl234533234705_))))
                                          (___match242284242285_
                                           _e234535234700_
                                           _hd234534234703_
                                           _tl234533234705_))))
                                  (___match242284242285_
                                   _e234535234700_
                                   _hd234534234703_
                                   _tl234533234705_))))
                          (___match242284242285_
                           _e234535234700_
                           _hd234534234703_
                           _tl234533234705_))))
                   (___match242138242139_
                    (lambda (_e234468235091_
                             _hd234467235094_
                             _tl234466235096_
                             _e234471235099_
                             _hd234470235102_
                             _tl234469235104_
                             _e234474235107_
                             _hd234473235110_
                             _tl234472235112_
                             _e234477235115_
                             _hd234476235118_
                             _tl234475235120_
                             _e234480235123_
                             _hd234479235126_
                             _tl234478235128_
                             _e234483235131_
                             _hd234482235134_
                             _tl234481235136_
                             _e234486235139_
                             _hd234485235142_
                             _tl234484235144_
                             _e234489235147_
                             _hd234488235150_
                             _tl234487235152_
                             _e234492235155_
                             _hd234491235158_
                             _tl234490235160_
                             _e234495235163_
                             _hd234494235166_
                             _tl234493235168_
                             _e234498235171_
                             _hd234497235174_
                             _tl234496235176_
                             _e234501235179_
                             _hd234500235182_
                             _tl234499235184_
                             _e234504235187_
                             _hd234503235190_
                             _tl234502235192_
                             _e234507235195_
                             _hd234506235198_
                             _tl234505235200_
                             _e234510235203_
                             _hd234509235206_
                             _tl234508235208_
                             _e234513235211_
                             _hd234512235214_
                             _tl234511235216_
                             _e234516235219_
                             _hd234515235222_
                             _tl234514235224_
                             _e234519235227_
                             _hd234518235230_
                             _tl234517235232_
                             _e234522235235_
                             _hd234521235238_
                             _tl234520235240_)
                      (let ((_L235243_ _hd234521235238_)
                            (_L235244_ _hd234512235214_)
                            (_L235245_ _hd234503235190_)
                            (_L235246_ _hd234494235166_)
                            (_L235247_ _hd234485235142_)
                            (_L235248_ _hd234470235102_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L235248_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L235247_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _L235246_
                                    'keyword-dispatch))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L235248_ _L235243_)))
                            (___kont241969241970_
                             _L235243_
                             _L235244_
                             _L235245_
                             _L235246_
                             _L235247_
                             _L235248_)
                            (___match242150242151_
                             _e234468235091_
                             _hd234467235094_
                             _tl234466235096_
                             _e234471235099_
                             _hd234470235102_
                             _tl234469235104_)))))
                   (___match241992241993_
                    (lambda (_e234468235091_ _hd234467235094_ _tl234466235096_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl234466235096_))
                          (let ((_e234471235099_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl234466235096_))))
                            (let ((_tl234469235104_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234471235099_)))
                                  (_hd234470235102_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234471235099_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl234469235104_))
                                  (let ((_e234474235107_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl234469235104_))))
                                    (let ((_tl234472235112_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e234474235107_)))
                                          (_hd234473235110_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e234474235107_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd234473235110_))
                                          (let ((_e234477235115_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd234473235110_))))
                                            (let ((_tl234475235120_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e234477235115_)))
                                                  (_hd234476235118_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e234477235115_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd234476235118_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd234476235118_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl234475235120_))
                                                          (let ((_e234480235123_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl234475235120_))))
                    (let ((_tl234478235128_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234480235123_)))
                          (_hd234479235126_
                           (let ()
                             (declare (not safe))
                             (##car _e234480235123_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd234479235126_))
                          (let ((_e234483235131_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd234479235126_))))
                            (let ((_tl234481235136_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234483235131_)))
                                  (_hd234482235134_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234483235131_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd234482235134_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd234482235134_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl234481235136_))
                                          (let ((_e234486235139_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl234481235136_))))
                                            (let ((_tl234484235144_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e234486235139_)))
                                                  (_hd234485235142_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e234486235139_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl234484235144_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl234478235128_))
                                                      (let ((_e234489235147_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl234478235128_))))
                (let ((_tl234487235152_
                       (let () (declare (not safe)) (##cdr _e234489235147_)))
                      (_hd234488235150_
                       (let () (declare (not safe)) (##car _e234489235147_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd234488235150_))
                      (let ((_e234492235155_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd234488235150_))))
                        (let ((_tl234490235160_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e234492235155_)))
                              (_hd234491235158_
                               (let ()
                                 (declare (not safe))
                                 (##car _e234492235155_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd234491235158_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd234491235158_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl234490235160_))
                                      (let ((_e234495235163_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl234490235160_))))
                                        (let ((_tl234493235168_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234495235163_)))
                                              (_hd234494235166_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234495235163_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl234493235168_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl234487235152_))
                                                  (let ((_e234498235171_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl234487235152_))))
                                                    (let ((_tl234496235176_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e234498235171_)))
                                                          (_hd234497235174_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e234498235171_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd234497235174_))
                                                          (let ((_e234501235179_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd234497235174_))))
                    (let ((_tl234499235184_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234501235179_)))
                          (_hd234500235182_
                           (let ()
                             (declare (not safe))
                             (##car _e234501235179_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd234500235182_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd234500235182_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl234499235184_))
                                  (let ((_e234504235187_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl234499235184_))))
                                    (let ((_tl234502235192_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e234504235187_)))
                                          (_hd234503235190_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e234504235187_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl234502235192_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl234496235176_))
                                              (let ((_e234507235195_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl234496235176_))))
                                                (let ((_tl234505235200_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e234507235195_)))
                                                      (_hd234506235198_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e234507235195_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd234506235198_))
                                                      (let ((_e234510235203_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd234506235198_))))
                (let ((_tl234508235208_
                       (let () (declare (not safe)) (##cdr _e234510235203_)))
                      (_hd234509235206_
                       (let () (declare (not safe)) (##car _e234510235203_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd234509235206_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd234509235206_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl234508235208_))
                              (let ((_e234513235211_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl234508235208_))))
                                (let ((_tl234511235216_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e234513235211_)))
                                      (_hd234512235214_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e234513235211_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl234511235216_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl234505235200_))
                                          (let ((_e234516235219_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl234505235200_))))
                                            (let ((_tl234514235224_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e234516235219_)))
                                                  (_hd234515235222_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e234516235219_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd234515235222_))
                                                  (let ((_e234519235227_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd234515235222_))))
                                                    (let ((_tl234517235232_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e234519235227_)))
                                                          (_hd234518235230_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e234519235227_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd234518235230_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _hd234518235230_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl234517235232_))
                          (let ((_e234522235235_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl234517235232_))))
                            (let ((_tl234520235240_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234522235235_)))
                                  (_hd234521235238_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234522235235_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl234520235240_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl234514235224_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl234472235112_))
                                          (___match242138242139_
                                           _e234468235091_
                                           _hd234467235094_
                                           _tl234466235096_
                                           _e234471235099_
                                           _hd234470235102_
                                           _tl234469235104_
                                           _e234474235107_
                                           _hd234473235110_
                                           _tl234472235112_
                                           _e234477235115_
                                           _hd234476235118_
                                           _tl234475235120_
                                           _e234480235123_
                                           _hd234479235126_
                                           _tl234478235128_
                                           _e234483235131_
                                           _hd234482235134_
                                           _tl234481235136_
                                           _e234486235139_
                                           _hd234485235142_
                                           _tl234484235144_
                                           _e234489235147_
                                           _hd234488235150_
                                           _tl234487235152_
                                           _e234492235155_
                                           _hd234491235158_
                                           _tl234490235160_
                                           _e234495235163_
                                           _hd234494235166_
                                           _tl234493235168_
                                           _e234498235171_
                                           _hd234497235174_
                                           _tl234496235176_
                                           _e234501235179_
                                           _hd234500235182_
                                           _tl234499235184_
                                           _e234504235187_
                                           _hd234503235190_
                                           _tl234502235192_
                                           _e234507235195_
                                           _hd234506235198_
                                           _tl234505235200_
                                           _e234510235203_
                                           _hd234509235206_
                                           _tl234508235208_
                                           _e234513235211_
                                           _hd234512235214_
                                           _tl234511235216_
                                           _e234516235219_
                                           _hd234515235222_
                                           _tl234514235224_
                                           _e234519235227_
                                           _hd234518235230_
                                           _tl234517235232_
                                           _e234522235235_
                                           _hd234521235238_
                                           _tl234520235240_)
                                          (___match242150242151_
                                           _e234468235091_
                                           _hd234467235094_
                                           _tl234466235096_
                                           _e234471235099_
                                           _hd234470235102_
                                           _tl234469235104_))
                                      (___match242150242151_
                                       _e234468235091_
                                       _hd234467235094_
                                       _tl234466235096_
                                       _e234471235099_
                                       _hd234470235102_
                                       _tl234469235104_))
                                  (___match242150242151_
                                   _e234468235091_
                                   _hd234467235094_
                                   _tl234466235096_
                                   _e234471235099_
                                   _hd234470235102_
                                   _tl234469235104_))))
                          (___match242150242151_
                           _e234468235091_
                           _hd234467235094_
                           _tl234466235096_
                           _e234471235099_
                           _hd234470235102_
                           _tl234469235104_))
                      (___match242150242151_
                       _e234468235091_
                       _hd234467235094_
                       _tl234466235096_
                       _e234471235099_
                       _hd234470235102_
                       _tl234469235104_))
                  (___match242150242151_
                   _e234468235091_
                   _hd234467235094_
                   _tl234466235096_
                   _e234471235099_
                   _hd234470235102_
                   _tl234469235104_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match242150242151_
                                                   _e234468235091_
                                                   _hd234467235094_
                                                   _tl234466235096_
                                                   _e234471235099_
                                                   _hd234470235102_
                                                   _tl234469235104_))))
                                          (___match242150242151_
                                           _e234468235091_
                                           _hd234467235094_
                                           _tl234466235096_
                                           _e234471235099_
                                           _hd234470235102_
                                           _tl234469235104_))
                                      (___match242150242151_
                                       _e234468235091_
                                       _hd234467235094_
                                       _tl234466235096_
                                       _e234471235099_
                                       _hd234470235102_
                                       _tl234469235104_))))
                              (___match242150242151_
                               _e234468235091_
                               _hd234467235094_
                               _tl234466235096_
                               _e234471235099_
                               _hd234470235102_
                               _tl234469235104_))
                          (___match242150242151_
                           _e234468235091_
                           _hd234467235094_
                           _tl234466235096_
                           _e234471235099_
                           _hd234470235102_
                           _tl234469235104_))
                      (___match242150242151_
                       _e234468235091_
                       _hd234467235094_
                       _tl234466235096_
                       _e234471235099_
                       _hd234470235102_
                       _tl234469235104_))))
              (___match242150242151_
               _e234468235091_
               _hd234467235094_
               _tl234466235096_
               _e234471235099_
               _hd234470235102_
               _tl234469235104_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match242150242151_
                                               _e234468235091_
                                               _hd234467235094_
                                               _tl234466235096_
                                               _e234471235099_
                                               _hd234470235102_
                                               _tl234469235104_))
                                          (___match242150242151_
                                           _e234468235091_
                                           _hd234467235094_
                                           _tl234466235096_
                                           _e234471235099_
                                           _hd234470235102_
                                           _tl234469235104_))))
                                  (___match242150242151_
                                   _e234468235091_
                                   _hd234467235094_
                                   _tl234466235096_
                                   _e234471235099_
                                   _hd234470235102_
                                   _tl234469235104_))
                              (___match242150242151_
                               _e234468235091_
                               _hd234467235094_
                               _tl234466235096_
                               _e234471235099_
                               _hd234470235102_
                               _tl234469235104_))
                          (___match242150242151_
                           _e234468235091_
                           _hd234467235094_
                           _tl234466235096_
                           _e234471235099_
                           _hd234470235102_
                           _tl234469235104_))))
                  (___match242150242151_
                   _e234468235091_
                   _hd234467235094_
                   _tl234466235096_
                   _e234471235099_
                   _hd234470235102_
                   _tl234469235104_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match242150242151_
                                                   _e234468235091_
                                                   _hd234467235094_
                                                   _tl234466235096_
                                                   _e234471235099_
                                                   _hd234470235102_
                                                   _tl234469235104_))
                                              (___match242150242151_
                                               _e234468235091_
                                               _hd234467235094_
                                               _tl234466235096_
                                               _e234471235099_
                                               _hd234470235102_
                                               _tl234469235104_))))
                                      (___match242150242151_
                                       _e234468235091_
                                       _hd234467235094_
                                       _tl234466235096_
                                       _e234471235099_
                                       _hd234470235102_
                                       _tl234469235104_))
                                  (___match242150242151_
                                   _e234468235091_
                                   _hd234467235094_
                                   _tl234466235096_
                                   _e234471235099_
                                   _hd234470235102_
                                   _tl234469235104_))
                              (___match242150242151_
                               _e234468235091_
                               _hd234467235094_
                               _tl234466235096_
                               _e234471235099_
                               _hd234470235102_
                               _tl234469235104_))))
                      (___match242150242151_
                       _e234468235091_
                       _hd234467235094_
                       _tl234466235096_
                       _e234471235099_
                       _hd234470235102_
                       _tl234469235104_))))
              (___match242150242151_
               _e234468235091_
               _hd234467235094_
               _tl234466235096_
               _e234471235099_
               _hd234470235102_
               _tl234469235104_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match242150242151_
                                                   _e234468235091_
                                                   _hd234467235094_
                                                   _tl234466235096_
                                                   _e234471235099_
                                                   _hd234470235102_
                                                   _tl234469235104_))))
                                          (___match242150242151_
                                           _e234468235091_
                                           _hd234467235094_
                                           _tl234466235096_
                                           _e234471235099_
                                           _hd234470235102_
                                           _tl234469235104_))
                                      (___match242150242151_
                                       _e234468235091_
                                       _hd234467235094_
                                       _tl234466235096_
                                       _e234471235099_
                                       _hd234470235102_
                                       _tl234469235104_))
                                  (___match242150242151_
                                   _e234468235091_
                                   _hd234467235094_
                                   _tl234466235096_
                                   _e234471235099_
                                   _hd234470235102_
                                   _tl234469235104_))))
                          (___match242150242151_
                           _e234468235091_
                           _hd234467235094_
                           _tl234466235096_
                           _e234471235099_
                           _hd234470235102_
                           _tl234469235104_))))
                  (___match242150242151_
                   _e234468235091_
                   _hd234467235094_
                   _tl234466235096_
                   _e234471235099_
                   _hd234470235102_
                   _tl234469235104_))
              (___match242150242151_
               _e234468235091_
               _hd234467235094_
               _tl234466235096_
               _e234471235099_
               _hd234470235102_
               _tl234469235104_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match242150242151_
                                                   _e234468235091_
                                                   _hd234467235094_
                                                   _tl234466235096_
                                                   _e234471235099_
                                                   _hd234470235102_
                                                   _tl234469235104_))))
                                          (___match242150242151_
                                           _e234468235091_
                                           _hd234467235094_
                                           _tl234466235096_
                                           _e234471235099_
                                           _hd234470235102_
                                           _tl234469235104_))))
                                  (___match242150242151_
                                   _e234468235091_
                                   _hd234467235094_
                                   _tl234466235096_
                                   _e234471235099_
                                   _hd234470235102_
                                   _tl234469235104_))))
                          (___match242284242285_
                           _e234468235091_
                           _hd234467235094_
                           _tl234466235096_)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx241965241966_))
                  (let ((_e234459235308_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx241965241966_))))
                    (let ((_tl234457235313_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234459235308_)))
                          (_hd234458235311_
                           (let ()
                             (declare (not safe))
                             (##car _e234459235308_))))
                      (if (gxc#current-compile-type-closure)
                          (let ((_L235316_ _tl234457235313_))
                            (___kont241967241968_ _L235316_))
                          (___match241992241993_
                           _e234459235308_
                           _hd234458235311_
                           _tl234457235313_))))
                  (let () (declare (not safe)) (_g234454234650_))))))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_stx234403_)
        (letrec ((_clause-e234405_
                  (lambda (_form234446_)
                    (let ((__obj243638
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
                       __obj243638
                       'case-lambda-clause
                       (let ()
                         (declare (not safe))
                         (gxc#lambda-form-arity _form234446_))
                       (if (let ((__tmp243705
                                  (gxc#current-compile-type-closure)))
                             (declare (not safe))
                             (not __tmp243705))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form? _form234446_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form-delegate
                                  _form234446_))
                               '#f)
                           '#f))
                      __obj243638))))
          (let* ((_g234407234417_
                  (lambda (_g234408234414_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g234408234414_))))
                 (_g234406234443_
                  (lambda (_g234408234420_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g234408234420_))
                        (let ((_e234412234422_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g234408234420_))))
                          (let ((_hd234411234425_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e234412234422_)))
                                (_tl234410234427_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e234412234422_))))
                            ((lambda (_L234430_)
                               (let ((_clauses234441_
                                      (map _clause-e234405_ _L234430_)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#!case-lambda::t
                                  'case-lambda
                                  _clauses234441_)))
                             _tl234410234427_)))
                        (let ()
                          (declare (not safe))
                          (_g234407234417_ _g234408234420_))))))
            (declare (not safe))
            (_g234406234443_ _stx234403_)))))
    (define gxc#basic-expression-type-let-values%
      (lambda (_stx234335_)
        (let* ((_g234337234354_
                (lambda (_g234338234351_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g234338234351_))))
               (_g234336234400_
                (lambda (_g234338234357_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g234338234357_))
                      (let ((_e234343234359_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g234338234357_))))
                        (let ((_hd234342234362_
                               (let ()
                                 (declare (not safe))
                                 (##car _e234343234359_)))
                              (_tl234341234364_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e234343234359_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl234341234364_))
                              (let ((_e234346234367_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl234341234364_))))
                                (let ((_hd234345234370_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e234346234367_)))
                                      (_tl234344234372_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e234346234367_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl234344234372_))
                                      (let ((_e234349234375_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl234344234372_))))
                                        (let ((_hd234348234378_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234349234375_)))
                                              (_tl234347234380_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234349234375_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl234347234380_))
                                              ((lambda (_L234383_ _L234384_)
                                                 (let ((__tmp243706
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _L234383_)))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp243706
                                                    gxc#current-compile-type-closure
                                                    '#t)))
                                               _hd234348234378_
                                               _hd234345234370_)
                                              (let ()
                                                (declare (not safe))
                                                (_g234337234354_
                                                 _g234338234357_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g234337234354_ _g234338234357_)))))
                              (let ()
                                (declare (not safe))
                                (_g234337234354_ _g234338234357_)))))
                      (let ()
                        (declare (not safe))
                        (_g234337234354_ _g234338234357_))))))
          (declare (not safe))
          (_g234336234400_ _stx234335_))))
    (define gxc#basic-expression-type-builtin
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define gxc#basic-expression-type-call%
      (lambda (_stx234240_)
        (let* ((___stx242293242294_ _stx234240_)
               (_g234243234263_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx242293242294_)))))
          (let ((___kont242295242296_
                 (lambda (_L234307_ _L234308_)
                   (let ((_type-e234325234327_
                          (let ((__tmp243707
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L234308_))))
                            (declare (not safe))
                            (table-ref
                             gxc#basic-expression-type-builtin
                             __tmp243707
                             '#f))))
                     (if _type-e234325234327_
                         (let ((_type-e234330_ _type-e234325234327_))
                           (_type-e234330_ _stx234240_ _L234307_))
                         '#f))))
                (___kont242297242298_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx242293242294_))
                (let ((_e234249234275_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx242293242294_))))
                  (let ((_tl234247234280_
                         (let () (declare (not safe)) (##cdr _e234249234275_)))
                        (_hd234248234278_
                         (let ()
                           (declare (not safe))
                           (##car _e234249234275_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl234247234280_))
                        (let ((_e234252234283_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl234247234280_))))
                          (let ((_tl234250234288_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e234252234283_)))
                                (_hd234251234286_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e234252234283_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd234251234286_))
                                (let ((_e234255234291_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd234251234286_))))
                                  (let ((_tl234253234296_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e234255234291_)))
                                        (_hd234254234294_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e234255234291_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd234254234294_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd234254234294_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl234253234296_))
                                                (let ((_e234258234299_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl234253234296_))))
                                                  (let ((_tl234256234304_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e234258234299_)))
                                                        (_hd234257234302_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e234258234299_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl234256234304_))
                                                        (___kont242295242296_
                                                         _tl234250234288_
                                                         _hd234257234302_)
                                                        (___kont242297242298_))))
                                                (___kont242297242298_))
                                            (___kont242297242298_))
                                        (___kont242297242298_))))
                                (___kont242297242298_))))
                        (___kont242297242298_))))
                (___kont242297242298_))))))
    (define gxc#basic-expression-type-ref%
      (lambda (_stx234189_)
        (let* ((_g234191234204_
                (lambda (_g234192234201_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g234192234201_))))
               (_g234190234237_
                (lambda (_g234192234207_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g234192234207_))
                      (let ((_e234196234209_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g234192234207_))))
                        (let ((_hd234195234212_
                               (let ()
                                 (declare (not safe))
                                 (##car _e234196234209_)))
                              (_tl234194234214_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e234196234209_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl234194234214_))
                              (let ((_e234199234217_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl234194234214_))))
                                (let ((_hd234198234220_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e234199234217_)))
                                      (_tl234197234222_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e234199234217_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl234197234222_))
                                      ((lambda (_L234225_)
                                         (let ((__tmp243708
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L234225_))))
                                           (declare (not safe))
                                           (gxc#optimizer-lookup-type
                                            __tmp243708)))
                                       _hd234198234220_)
                                      (let ()
                                        (declare (not safe))
                                        (_g234191234204_ _g234192234207_)))))
                              (let ()
                                (declare (not safe))
                                (_g234191234204_ _g234192234207_)))))
                      (let ()
                        (declare (not safe))
                        (_g234191234204_ _g234192234207_))))))
          (declare (not safe))
          (_g234190234237_ _stx234189_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_form233423_)
        (let* ((___stx242331242332_ _form233423_)
               (_g233428233585_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx242331242332_)))))
          (let ((___kont242333242334_
                 (lambda (_L234109_ _L234110_ _L234111_) '#t))
                (___kont242339242340_
                 (lambda (_L233897_
                          _L233898_
                          _L233899_
                          _L233900_
                          _L233901_
                          _L233902_)
                   '#t))
                (___kont242345242346_
                 (lambda (_L233693_ _L233694_ _L233695_ _L233696_) '#t))
                (___kont242347242348_ (lambda () '#f)))
            (let* ((___match242472242473_
                    (lambda (_e233547233597_
                             _hd233546233600_
                             _tl233545233602_
                             _e233550233605_
                             _hd233549233608_
                             _tl233548233610_
                             _e233553233613_
                             _hd233552233616_
                             _tl233551233618_
                             _e233556233621_
                             _hd233555233624_
                             _tl233554233626_
                             _e233559233629_
                             _hd233558233632_
                             _tl233557233634_
                             _e233562233637_
                             _hd233561233640_
                             _tl233560233642_
                             _e233565233645_
                             _hd233564233648_
                             _tl233563233650_
                             _e233568233653_
                             _hd233567233656_
                             _tl233566233658_
                             _e233571233661_
                             _hd233570233664_
                             _tl233569233666_
                             _e233574233669_
                             _hd233573233672_
                             _tl233572233674_
                             _e233577233677_
                             _hd233576233680_
                             _tl233575233682_
                             _e233580233685_
                             _hd233579233688_
                             _tl233578233690_)
                      (let ((_L233693_ _hd233579233688_)
                            (_L233694_ _hd233570233664_)
                            (_L233695_ _hd233561233640_)
                            (_L233696_ _hd233546233600_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L233696_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L233695_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L233696_ _L233693_))
                                 (let ((__tmp243709
                                        (let ()
                                          (declare (not safe))
                                          (gx#free-identifier=?
                                           _L233694_
                                           _L233696_))))
                                   (declare (not safe))
                                   (not __tmp243709)))
                            (___kont242345242346_
                             _L233693_
                             _L233694_
                             _L233695_
                             _L233696_)
                            (___kont242347242348_)))))
                   (___match242444242445_
                    (lambda (_e233547233597_
                             _hd233546233600_
                             _tl233545233602_
                             _e233550233605_
                             _hd233549233608_
                             _tl233548233610_
                             _e233553233613_
                             _hd233552233616_
                             _tl233551233618_
                             _e233556233621_
                             _hd233555233624_
                             _tl233554233626_
                             _e233559233629_
                             _hd233558233632_
                             _tl233557233634_
                             _e233562233637_
                             _hd233561233640_
                             _tl233560233642_
                             _e233565233645_
                             _hd233564233648_
                             _tl233563233650_
                             _e233568233653_
                             _hd233567233656_
                             _tl233566233658_
                             _e233571233661_
                             _hd233570233664_
                             _tl233569233666_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl233563233650_))
                          (let ((_e233574233669_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl233563233650_))))
                            (let ((_tl233572233674_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e233574233669_)))
                                  (_hd233573233672_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e233574233669_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd233573233672_))
                                  (let ((_e233577233677_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd233573233672_))))
                                    (let ((_tl233575233682_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e233577233677_)))
                                          (_hd233576233680_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e233577233677_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd233576233680_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd233576233680_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl233575233682_))
                                                  (let ((_e233580233685_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl233575233682_))))
                                                    (let ((_tl233578233690_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e233580233685_)))
                                                          (_hd233579233688_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e233580233685_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl233578233690_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl233572233674_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl233548233610_))
                          (___match242472242473_
                           _e233547233597_
                           _hd233546233600_
                           _tl233545233602_
                           _e233550233605_
                           _hd233549233608_
                           _tl233548233610_
                           _e233553233613_
                           _hd233552233616_
                           _tl233551233618_
                           _e233556233621_
                           _hd233555233624_
                           _tl233554233626_
                           _e233559233629_
                           _hd233558233632_
                           _tl233557233634_
                           _e233562233637_
                           _hd233561233640_
                           _tl233560233642_
                           _e233565233645_
                           _hd233564233648_
                           _tl233563233650_
                           _e233568233653_
                           _hd233567233656_
                           _tl233566233658_
                           _e233571233661_
                           _hd233570233664_
                           _tl233569233666_
                           _e233574233669_
                           _hd233573233672_
                           _tl233572233674_
                           _e233577233677_
                           _hd233576233680_
                           _tl233575233682_
                           _e233580233685_
                           _hd233579233688_
                           _tl233578233690_)
                          (___kont242347242348_))
                      (___kont242347242348_))
                  (___kont242347242348_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont242347242348_))
                                              (___kont242347242348_))
                                          (___kont242347242348_))))
                                  (___kont242347242348_))))
                          (___kont242347242348_))))
                   (___match242374242375_
                    (lambda (_e233483233737_
                             _hd233482233740_
                             _tl233481233742_
                             ___splice242341242342_
                             _target233484233745_
                             _tl233486233747_)
                      (letrec ((_loop233487233750_
                                (lambda (_hd233485233753_ _arg233491233755_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd233485233753_))
                                      (let ((_e233488233758_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd233485233753_))))
                                        (let ((_lp-tl233490233763_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233488233758_)))
                                              (_lp-hd233489233761_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233488233758_))))
                                          (let ((__tmp243724
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd233489233761_
                                                         _arg233491233755_))))
                                            (declare (not safe))
                                            (_loop233487233750_
                                             _lp-tl233490233763_
                                             __tmp243724))))
                                      (let ((_arg233492233766_
                                             (reverse _arg233491233755_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl233481233742_))
                                            (let ((_e233495233769_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl233481233742_))))
                                              (let ((_tl233493233774_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e233495233769_)))
                                                    (_hd233494233772_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e233495233769_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd233494233772_))
                                                    (let ((_e233498233777_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd233494233772_))))
                                                      (let ((_tl233496233782_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e233498233777_)))
                    (_hd233497233780_
                     (let () (declare (not safe)) (##car _e233498233777_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd233497233780_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd233497233780_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl233496233782_))
                            (let ((_e233501233785_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl233496233782_))))
                              (let ((_tl233499233790_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e233501233785_)))
                                    (_hd233500233788_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e233501233785_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd233500233788_))
                                    (let ((_e233504233793_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd233500233788_))))
                                      (let ((_tl233502233798_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e233504233793_)))
                                            (_hd233503233796_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e233504233793_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd233503233796_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd233503233796_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl233502233798_))
                                                    (let ((_e233507233801_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl233502233798_))))
                                                      (let ((_tl233505233806_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e233507233801_)))
                    (_hd233506233804_
                     (let () (declare (not safe)) (##car _e233507233801_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl233505233806_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl233499233790_))
                        (let ((_e233510233809_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl233499233790_))))
                          (let ((_tl233508233814_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e233510233809_)))
                                (_hd233509233812_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e233510233809_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd233509233812_))
                                (let ((_e233513233817_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd233509233812_))))
                                  (let ((_tl233511233822_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e233513233817_)))
                                        (_hd233512233820_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e233513233817_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd233512233820_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd233512233820_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl233511233822_))
                                                (let ((_e233516233825_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl233511233822_))))
                                                  (let ((_tl233514233830_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e233516233825_)))
                                                        (_hd233515233828_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e233516233825_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl233514233830_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _tl233508233814_))
                                                            (if (fx>= (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#stx-length _tl233508233814_))
                              '1)
                        (let ((___splice242343242344_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl233508233814_
                                  '1))))
                          (let ((_tl233519233835_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice242343242344_ '1)))
                                (_target233517233833_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice242343242344_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl233519233835_))
                                (let ((_e233528233838_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl233519233835_))))
                                  (let ((_tl233526233843_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e233528233838_)))
                                        (_hd233527233841_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e233528233838_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd233527233841_))
                                        (let ((_e233531233846_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd233527233841_))))
                                          (let ((_tl233529233851_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e233531233846_)))
                                                (_hd233530233849_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e233531233846_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd233530233849_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd233530233849_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl233529233851_))
                                                        (let ((_e233534233854_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl233529233851_))))
                  (let ((_tl233532233859_
                         (let () (declare (not safe)) (##cdr _e233534233854_)))
                        (_hd233533233857_
                         (let ()
                           (declare (not safe))
                           (##car _e233534233854_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl233532233859_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl233526233843_))
                            (letrec ((_loop233520233862_
                                      (lambda (_hd233518233865_
                                               _xarg233524233867_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd233518233865_))
                                            (let ((_e233521233870_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd233518233865_))))
                                              (let ((_lp-tl233523233875_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e233521233870_)))
                                                    (_lp-hd233522233873_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e233521233870_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _lp-hd233522233873_))
                                                    (let ((_e233537233878_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _lp-hd233522233873_))))
                                                      (let ((_tl233535233883_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e233537233878_)))
                    (_hd233536233881_
                     (let () (declare (not safe)) (##car _e233537233878_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd233536233881_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd233536233881_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl233535233883_))
                            (let ((_e233540233886_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl233535233883_))))
                              (let ((_tl233538233891_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e233540233886_)))
                                    (_hd233539233889_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e233540233886_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl233538233891_))
                                    (let ((__tmp243723
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd233539233889_
                                                   _xarg233524233867_))))
                                      (declare (not safe))
                                      (_loop233520233862_
                                       _lp-tl233523233875_
                                       __tmp243723))
                                    (___match242444242445_
                                     _e233483233737_
                                     _hd233482233740_
                                     _tl233481233742_
                                     _e233495233769_
                                     _hd233494233772_
                                     _tl233493233774_
                                     _e233498233777_
                                     _hd233497233780_
                                     _tl233496233782_
                                     _e233501233785_
                                     _hd233500233788_
                                     _tl233499233790_
                                     _e233504233793_
                                     _hd233503233796_
                                     _tl233502233798_
                                     _e233507233801_
                                     _hd233506233804_
                                     _tl233505233806_
                                     _e233510233809_
                                     _hd233509233812_
                                     _tl233508233814_
                                     _e233513233817_
                                     _hd233512233820_
                                     _tl233511233822_
                                     _e233516233825_
                                     _hd233515233828_
                                     _tl233514233830_))))
                            (___match242444242445_
                             _e233483233737_
                             _hd233482233740_
                             _tl233481233742_
                             _e233495233769_
                             _hd233494233772_
                             _tl233493233774_
                             _e233498233777_
                             _hd233497233780_
                             _tl233496233782_
                             _e233501233785_
                             _hd233500233788_
                             _tl233499233790_
                             _e233504233793_
                             _hd233503233796_
                             _tl233502233798_
                             _e233507233801_
                             _hd233506233804_
                             _tl233505233806_
                             _e233510233809_
                             _hd233509233812_
                             _tl233508233814_
                             _e233513233817_
                             _hd233512233820_
                             _tl233511233822_
                             _e233516233825_
                             _hd233515233828_
                             _tl233514233830_))
                        (___match242444242445_
                         _e233483233737_
                         _hd233482233740_
                         _tl233481233742_
                         _e233495233769_
                         _hd233494233772_
                         _tl233493233774_
                         _e233498233777_
                         _hd233497233780_
                         _tl233496233782_
                         _e233501233785_
                         _hd233500233788_
                         _tl233499233790_
                         _e233504233793_
                         _hd233503233796_
                         _tl233502233798_
                         _e233507233801_
                         _hd233506233804_
                         _tl233505233806_
                         _e233510233809_
                         _hd233509233812_
                         _tl233508233814_
                         _e233513233817_
                         _hd233512233820_
                         _tl233511233822_
                         _e233516233825_
                         _hd233515233828_
                         _tl233514233830_))
                    (___match242444242445_
                     _e233483233737_
                     _hd233482233740_
                     _tl233481233742_
                     _e233495233769_
                     _hd233494233772_
                     _tl233493233774_
                     _e233498233777_
                     _hd233497233780_
                     _tl233496233782_
                     _e233501233785_
                     _hd233500233788_
                     _tl233499233790_
                     _e233504233793_
                     _hd233503233796_
                     _tl233502233798_
                     _e233507233801_
                     _hd233506233804_
                     _tl233505233806_
                     _e233510233809_
                     _hd233509233812_
                     _tl233508233814_
                     _e233513233817_
                     _hd233512233820_
                     _tl233511233822_
                     _e233516233825_
                     _hd233515233828_
                     _tl233514233830_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match242444242445_
                                                     _e233483233737_
                                                     _hd233482233740_
                                                     _tl233481233742_
                                                     _e233495233769_
                                                     _hd233494233772_
                                                     _tl233493233774_
                                                     _e233498233777_
                                                     _hd233497233780_
                                                     _tl233496233782_
                                                     _e233501233785_
                                                     _hd233500233788_
                                                     _tl233499233790_
                                                     _e233504233793_
                                                     _hd233503233796_
                                                     _tl233502233798_
                                                     _e233507233801_
                                                     _hd233506233804_
                                                     _tl233505233806_
                                                     _e233510233809_
                                                     _hd233509233812_
                                                     _tl233508233814_
                                                     _e233513233817_
                                                     _hd233512233820_
                                                     _tl233511233822_
                                                     _e233516233825_
                                                     _hd233515233828_
                                                     _tl233514233830_))))
                                            (let ((_xarg233525233894_
                                                   (reverse _xarg233524233867_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl233493233774_))
                                                  (let ((_L233897_
                                                         _hd233533233857_)
                                                        (_L233898_
                                                         _xarg233525233894_)
                                                        (_L233899_
                                                         _hd233515233828_)
                                                        (_L233900_
                                                         _hd233506233804_)
                                                        (_L233901_
                                                         _tl233486233747_)
                                                        (_L233902_
                                                         _arg233492233766_))
                                                    (if (and (let ((__tmp243721
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp243722
                                   (lambda (_g233945233948_ _g233946233950_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g233945233948_
                                             _g233946233950_)))))
                              (declare (not safe))
                              (foldr1 __tmp243722 '() _L233902_))))
                       (declare (not safe))
                       (gx#identifier-list? __tmp243721))
                     (let () (declare (not safe)) (gx#identifier? _L233901_))
                     (let ()
                       (declare (not safe))
                       (gxc#runtime-identifier=? _L233900_ 'apply))
                     (fx= (length (let ((__tmp243719
                                         (lambda (_g233952233955_
                                                  _g233953233957_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g233952233955_
                                                   _g233953233957_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp243719 '() _L233902_)))
                          (length (let ((__tmp243720
                                         (lambda (_g233959233962_
                                                  _g233960233964_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g233959233962_
                                                   _g233960233964_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp243720 '() _L233898_))))
                     (let ((__tmp243717
                            (let ((__tmp243718
                                   (lambda (_g233966233969_ _g233967233971_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g233966233969_
                                             _g233967233971_)))))
                              (declare (not safe))
                              (foldr1 __tmp243718 '() _L233902_)))
                           (__tmp243715
                            (let ((__tmp243716
                                   (lambda (_g233973233976_ _g233974233978_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g233973233976_
                                             _g233974233978_)))))
                              (declare (not safe))
                              (foldr1 __tmp243716 '() _L233898_))))
                       (declare (not safe))
                       (andmap2 gx#free-identifier=? __tmp243717 __tmp243715))
                     (let ()
                       (declare (not safe))
                       (gx#free-identifier=? _L233901_ _L233897_))
                     (let ((__tmp243710
                            (let ((__tmp243714
                                   (lambda (_g233980233982_)
                                     (let ()
                                       (declare (not safe))
                                       (gx#free-identifier=?
                                        _g233980233982_
                                        _L233899_))))
                                  (__tmp243711
                                   (let ((__tmp243713
                                          (lambda (_g233984233987_
                                                   _g233985233989_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g233984233987_
                                                    _g233985233989_))))
                                         (__tmp243712
                                          (let ()
                                            (declare (not safe))
                                            (cons _L233901_ '()))))
                                     (declare (not safe))
                                     (foldr1 __tmp243713
                                             __tmp243712
                                             _L233902_))))
                              (declare (not safe))
                              (find __tmp243714 __tmp243711))))
                       (declare (not safe))
                       (not __tmp243710)))
                (___kont242339242340_
                 _L233897_
                 _L233898_
                 _L233899_
                 _L233900_
                 _L233901_
                 _L233902_)
                (___match242444242445_
                 _e233483233737_
                 _hd233482233740_
                 _tl233481233742_
                 _e233495233769_
                 _hd233494233772_
                 _tl233493233774_
                 _e233498233777_
                 _hd233497233780_
                 _tl233496233782_
                 _e233501233785_
                 _hd233500233788_
                 _tl233499233790_
                 _e233504233793_
                 _hd233503233796_
                 _tl233502233798_
                 _e233507233801_
                 _hd233506233804_
                 _tl233505233806_
                 _e233510233809_
                 _hd233509233812_
                 _tl233508233814_
                 _e233513233817_
                 _hd233512233820_
                 _tl233511233822_
                 _e233516233825_
                 _hd233515233828_
                 _tl233514233830_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match242444242445_
                                                   _e233483233737_
                                                   _hd233482233740_
                                                   _tl233481233742_
                                                   _e233495233769_
                                                   _hd233494233772_
                                                   _tl233493233774_
                                                   _e233498233777_
                                                   _hd233497233780_
                                                   _tl233496233782_
                                                   _e233501233785_
                                                   _hd233500233788_
                                                   _tl233499233790_
                                                   _e233504233793_
                                                   _hd233503233796_
                                                   _tl233502233798_
                                                   _e233507233801_
                                                   _hd233506233804_
                                                   _tl233505233806_
                                                   _e233510233809_
                                                   _hd233509233812_
                                                   _tl233508233814_
                                                   _e233513233817_
                                                   _hd233512233820_
                                                   _tl233511233822_
                                                   _e233516233825_
                                                   _hd233515233828_
                                                   _tl233514233830_)))))))
                              (let ()
                                (declare (not safe))
                                (_loop233520233862_ _target233517233833_ '())))
                            (___match242444242445_
                             _e233483233737_
                             _hd233482233740_
                             _tl233481233742_
                             _e233495233769_
                             _hd233494233772_
                             _tl233493233774_
                             _e233498233777_
                             _hd233497233780_
                             _tl233496233782_
                             _e233501233785_
                             _hd233500233788_
                             _tl233499233790_
                             _e233504233793_
                             _hd233503233796_
                             _tl233502233798_
                             _e233507233801_
                             _hd233506233804_
                             _tl233505233806_
                             _e233510233809_
                             _hd233509233812_
                             _tl233508233814_
                             _e233513233817_
                             _hd233512233820_
                             _tl233511233822_
                             _e233516233825_
                             _hd233515233828_
                             _tl233514233830_))
                        (___match242444242445_
                         _e233483233737_
                         _hd233482233740_
                         _tl233481233742_
                         _e233495233769_
                         _hd233494233772_
                         _tl233493233774_
                         _e233498233777_
                         _hd233497233780_
                         _tl233496233782_
                         _e233501233785_
                         _hd233500233788_
                         _tl233499233790_
                         _e233504233793_
                         _hd233503233796_
                         _tl233502233798_
                         _e233507233801_
                         _hd233506233804_
                         _tl233505233806_
                         _e233510233809_
                         _hd233509233812_
                         _tl233508233814_
                         _e233513233817_
                         _hd233512233820_
                         _tl233511233822_
                         _e233516233825_
                         _hd233515233828_
                         _tl233514233830_))))
                (___match242444242445_
                 _e233483233737_
                 _hd233482233740_
                 _tl233481233742_
                 _e233495233769_
                 _hd233494233772_
                 _tl233493233774_
                 _e233498233777_
                 _hd233497233780_
                 _tl233496233782_
                 _e233501233785_
                 _hd233500233788_
                 _tl233499233790_
                 _e233504233793_
                 _hd233503233796_
                 _tl233502233798_
                 _e233507233801_
                 _hd233506233804_
                 _tl233505233806_
                 _e233510233809_
                 _hd233509233812_
                 _tl233508233814_
                 _e233513233817_
                 _hd233512233820_
                 _tl233511233822_
                 _e233516233825_
                 _hd233515233828_
                 _tl233514233830_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match242444242445_
                                                     _e233483233737_
                                                     _hd233482233740_
                                                     _tl233481233742_
                                                     _e233495233769_
                                                     _hd233494233772_
                                                     _tl233493233774_
                                                     _e233498233777_
                                                     _hd233497233780_
                                                     _tl233496233782_
                                                     _e233501233785_
                                                     _hd233500233788_
                                                     _tl233499233790_
                                                     _e233504233793_
                                                     _hd233503233796_
                                                     _tl233502233798_
                                                     _e233507233801_
                                                     _hd233506233804_
                                                     _tl233505233806_
                                                     _e233510233809_
                                                     _hd233509233812_
                                                     _tl233508233814_
                                                     _e233513233817_
                                                     _hd233512233820_
                                                     _tl233511233822_
                                                     _e233516233825_
                                                     _hd233515233828_
                                                     _tl233514233830_))
                                                (___match242444242445_
                                                 _e233483233737_
                                                 _hd233482233740_
                                                 _tl233481233742_
                                                 _e233495233769_
                                                 _hd233494233772_
                                                 _tl233493233774_
                                                 _e233498233777_
                                                 _hd233497233780_
                                                 _tl233496233782_
                                                 _e233501233785_
                                                 _hd233500233788_
                                                 _tl233499233790_
                                                 _e233504233793_
                                                 _hd233503233796_
                                                 _tl233502233798_
                                                 _e233507233801_
                                                 _hd233506233804_
                                                 _tl233505233806_
                                                 _e233510233809_
                                                 _hd233509233812_
                                                 _tl233508233814_
                                                 _e233513233817_
                                                 _hd233512233820_
                                                 _tl233511233822_
                                                 _e233516233825_
                                                 _hd233515233828_
                                                 _tl233514233830_))))
                                        (___match242444242445_
                                         _e233483233737_
                                         _hd233482233740_
                                         _tl233481233742_
                                         _e233495233769_
                                         _hd233494233772_
                                         _tl233493233774_
                                         _e233498233777_
                                         _hd233497233780_
                                         _tl233496233782_
                                         _e233501233785_
                                         _hd233500233788_
                                         _tl233499233790_
                                         _e233504233793_
                                         _hd233503233796_
                                         _tl233502233798_
                                         _e233507233801_
                                         _hd233506233804_
                                         _tl233505233806_
                                         _e233510233809_
                                         _hd233509233812_
                                         _tl233508233814_
                                         _e233513233817_
                                         _hd233512233820_
                                         _tl233511233822_
                                         _e233516233825_
                                         _hd233515233828_
                                         _tl233514233830_))))
                                (___match242444242445_
                                 _e233483233737_
                                 _hd233482233740_
                                 _tl233481233742_
                                 _e233495233769_
                                 _hd233494233772_
                                 _tl233493233774_
                                 _e233498233777_
                                 _hd233497233780_
                                 _tl233496233782_
                                 _e233501233785_
                                 _hd233500233788_
                                 _tl233499233790_
                                 _e233504233793_
                                 _hd233503233796_
                                 _tl233502233798_
                                 _e233507233801_
                                 _hd233506233804_
                                 _tl233505233806_
                                 _e233510233809_
                                 _hd233509233812_
                                 _tl233508233814_
                                 _e233513233817_
                                 _hd233512233820_
                                 _tl233511233822_
                                 _e233516233825_
                                 _hd233515233828_
                                 _tl233514233830_))))
                        (___match242444242445_
                         _e233483233737_
                         _hd233482233740_
                         _tl233481233742_
                         _e233495233769_
                         _hd233494233772_
                         _tl233493233774_
                         _e233498233777_
                         _hd233497233780_
                         _tl233496233782_
                         _e233501233785_
                         _hd233500233788_
                         _tl233499233790_
                         _e233504233793_
                         _hd233503233796_
                         _tl233502233798_
                         _e233507233801_
                         _hd233506233804_
                         _tl233505233806_
                         _e233510233809_
                         _hd233509233812_
                         _tl233508233814_
                         _e233513233817_
                         _hd233512233820_
                         _tl233511233822_
                         _e233516233825_
                         _hd233515233828_
                         _tl233514233830_))
                    (___match242444242445_
                     _e233483233737_
                     _hd233482233740_
                     _tl233481233742_
                     _e233495233769_
                     _hd233494233772_
                     _tl233493233774_
                     _e233498233777_
                     _hd233497233780_
                     _tl233496233782_
                     _e233501233785_
                     _hd233500233788_
                     _tl233499233790_
                     _e233504233793_
                     _hd233503233796_
                     _tl233502233798_
                     _e233507233801_
                     _hd233506233804_
                     _tl233505233806_
                     _e233510233809_
                     _hd233509233812_
                     _tl233508233814_
                     _e233513233817_
                     _hd233512233820_
                     _tl233511233822_
                     _e233516233825_
                     _hd233515233828_
                     _tl233514233830_))
                (___kont242347242348_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont242347242348_))
                                            (___kont242347242348_))
                                        (___kont242347242348_))))
                                (___kont242347242348_))))
                        (___kont242347242348_))
                    (___kont242347242348_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont242347242348_))
                                                (___kont242347242348_))
                                            (___kont242347242348_))))
                                    (___kont242347242348_))))
                            (___kont242347242348_))
                        (___kont242347242348_))
                    (___kont242347242348_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont242347242348_))))
                                            (___kont242347242348_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop233487233750_ _target233484233745_ '())))))
                   (___match242362242363_
                    (lambda (_e233435233997_
                             _hd233434234000_
                             _tl233433234002_
                             ___splice242335242336_
                             _target233436234005_
                             _tl233438234007_)
                      (letrec ((_loop233439234010_
                                (lambda (_hd233437234013_ _arg233443234015_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd233437234013_))
                                      (let ((_e233440234018_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd233437234013_))))
                                        (let ((_lp-tl233442234023_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233440234018_)))
                                              (_lp-hd233441234021_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233440234018_))))
                                          (let ((__tmp243738
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd233441234021_
                                                         _arg233443234015_))))
                                            (declare (not safe))
                                            (_loop233439234010_
                                             _lp-tl233442234023_
                                             __tmp243738))))
                                      (let ((_arg233444234026_
                                             (reverse _arg233443234015_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl233433234002_))
                                            (let ((_e233447234029_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl233433234002_))))
                                              (let ((_tl233445234034_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e233447234029_)))
                                                    (_hd233446234032_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e233447234029_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd233446234032_))
                                                    (let ((_e233450234037_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd233446234032_))))
                                                      (let ((_tl233448234042_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e233450234037_)))
                    (_hd233449234040_
                     (let () (declare (not safe)) (##car _e233450234037_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd233449234040_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd233449234040_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl233448234042_))
                            (let ((_e233453234045_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl233448234042_))))
                              (let ((_tl233451234050_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e233453234045_)))
                                    (_hd233452234048_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e233453234045_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd233452234048_))
                                    (let ((_e233456234053_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd233452234048_))))
                                      (let ((_tl233454234058_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e233456234053_)))
                                            (_hd233455234056_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e233456234053_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd233455234056_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd233455234056_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl233454234058_))
                                                    (let ((_e233459234061_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl233454234058_))))
                                                      (let ((_tl233457234066_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e233459234061_)))
                    (_hd233458234064_
                     (let () (declare (not safe)) (##car _e233459234061_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl233457234066_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl233451234050_))
                        (let ((___splice242337242338_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl233451234050_
                                  '0))))
                          (let ((_tl233462234071_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice242337242338_ '1)))
                                (_target233460234069_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice242337242338_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl233462234071_))
                                (letrec ((_loop233463234074_
                                          (lambda (_hd233461234077_
                                                   _xarg233467234079_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd233461234077_))
                                                (let ((_e233464234082_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd233461234077_))))
                                                  (let ((_lp-tl233466234087_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e233464234082_)))
                                                        (_lp-hd233465234085_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e233464234082_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd233465234085_))
                                                        (let ((_e233471234090_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd233465234085_))))
                  (let ((_tl233469234095_
                         (let () (declare (not safe)) (##cdr _e233471234090_)))
                        (_hd233470234093_
                         (let ()
                           (declare (not safe))
                           (##car _e233471234090_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd233470234093_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd233470234093_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl233469234095_))
                                (let ((_e233474234098_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl233469234095_))))
                                  (let ((_tl233472234103_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e233474234098_)))
                                        (_hd233473234101_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e233474234098_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl233472234103_))
                                        (let ((__tmp243737
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd233473234101_
                                                       _xarg233467234079_))))
                                          (declare (not safe))
                                          (_loop233463234074_
                                           _lp-tl233466234087_
                                           __tmp243737))
                                        (___match242374242375_
                                         _e233435233997_
                                         _hd233434234000_
                                         _tl233433234002_
                                         ___splice242335242336_
                                         _target233436234005_
                                         _tl233438234007_))))
                                (___match242374242375_
                                 _e233435233997_
                                 _hd233434234000_
                                 _tl233433234002_
                                 ___splice242335242336_
                                 _target233436234005_
                                 _tl233438234007_))
                            (___match242374242375_
                             _e233435233997_
                             _hd233434234000_
                             _tl233433234002_
                             ___splice242335242336_
                             _target233436234005_
                             _tl233438234007_))
                        (___match242374242375_
                         _e233435233997_
                         _hd233434234000_
                         _tl233433234002_
                         ___splice242335242336_
                         _target233436234005_
                         _tl233438234007_))))
                (___match242374242375_
                 _e233435233997_
                 _hd233434234000_
                 _tl233433234002_
                 ___splice242335242336_
                 _target233436234005_
                 _tl233438234007_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg233468234106_
                                                       (reverse _xarg233467234079_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233445234034_))
                                                      (let ((_L234109_
                                                             _xarg233468234106_)
                                                            (_L234110_
                                                             _hd233458234064_)
                                                            (_L234111_
                                                             _arg233444234026_))
                                                        (if (and (let ((__tmp243735
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp243736
                                       (lambda (_g234139234142_
                                                _g234140234144_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g234139234142_
                                                 _g234140234144_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp243736 '() _L234111_))))
                           (declare (not safe))
                           (gx#identifier-list? __tmp243735))
                         (fx= (length (let ((__tmp243733
                                             (lambda (_g234146234149_
                                                      _g234147234151_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g234146234149_
                                                       _g234147234151_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp243733 '() _L234111_)))
                              (length (let ((__tmp243734
                                             (lambda (_g234153234156_
                                                      _g234154234158_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g234153234156_
                                                       _g234154234158_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp243734 '() _L234109_))))
                         (let ((__tmp243731
                                (let ((__tmp243732
                                       (lambda (_g234160234163_
                                                _g234161234165_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g234160234163_
                                                 _g234161234165_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp243732 '() _L234111_)))
                               (__tmp243729
                                (let ((__tmp243730
                                       (lambda (_g234167234170_
                                                _g234168234172_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g234167234170_
                                                 _g234168234172_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp243730 '() _L234109_))))
                           (declare (not safe))
                           (andmap2 gx#free-identifier=?
                                    __tmp243731
                                    __tmp243729))
                         (let ((__tmp243725
                                (let ((__tmp243728
                                       (lambda (_g234174234176_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _g234174234176_
                                            _L234110_))))
                                      (__tmp243726
                                       (let ((__tmp243727
                                              (lambda (_g234178234181_
                                                       _g234179234183_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g234178234181_
                                                        _g234179234183_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp243727 '() _L234111_))))
                                  (declare (not safe))
                                  (find __tmp243728 __tmp243726))))
                           (declare (not safe))
                           (not __tmp243725)))
                    (___kont242333242334_ _L234109_ _L234110_ _L234111_)
                    (___match242374242375_
                     _e233435233997_
                     _hd233434234000_
                     _tl233433234002_
                     ___splice242335242336_
                     _target233436234005_
                     _tl233438234007_)))
              (___match242374242375_
               _e233435233997_
               _hd233434234000_
               _tl233433234002_
               ___splice242335242336_
               _target233436234005_
               _tl233438234007_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (let ()
                                    (declare (not safe))
                                    (_loop233463234074_
                                     _target233460234069_
                                     '())))
                                (___match242374242375_
                                 _e233435233997_
                                 _hd233434234000_
                                 _tl233433234002_
                                 ___splice242335242336_
                                 _target233436234005_
                                 _tl233438234007_))))
                        (___match242374242375_
                         _e233435233997_
                         _hd233434234000_
                         _tl233433234002_
                         ___splice242335242336_
                         _target233436234005_
                         _tl233438234007_))
                    (___match242374242375_
                     _e233435233997_
                     _hd233434234000_
                     _tl233433234002_
                     ___splice242335242336_
                     _target233436234005_
                     _tl233438234007_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match242374242375_
                                                     _e233435233997_
                                                     _hd233434234000_
                                                     _tl233433234002_
                                                     ___splice242335242336_
                                                     _target233436234005_
                                                     _tl233438234007_))
                                                (___match242374242375_
                                                 _e233435233997_
                                                 _hd233434234000_
                                                 _tl233433234002_
                                                 ___splice242335242336_
                                                 _target233436234005_
                                                 _tl233438234007_))
                                            (___match242374242375_
                                             _e233435233997_
                                             _hd233434234000_
                                             _tl233433234002_
                                             ___splice242335242336_
                                             _target233436234005_
                                             _tl233438234007_))))
                                    (___match242374242375_
                                     _e233435233997_
                                     _hd233434234000_
                                     _tl233433234002_
                                     ___splice242335242336_
                                     _target233436234005_
                                     _tl233438234007_))))
                            (___match242374242375_
                             _e233435233997_
                             _hd233434234000_
                             _tl233433234002_
                             ___splice242335242336_
                             _target233436234005_
                             _tl233438234007_))
                        (___match242374242375_
                         _e233435233997_
                         _hd233434234000_
                         _tl233433234002_
                         ___splice242335242336_
                         _target233436234005_
                         _tl233438234007_))
                    (___match242374242375_
                     _e233435233997_
                     _hd233434234000_
                     _tl233433234002_
                     ___splice242335242336_
                     _target233436234005_
                     _tl233438234007_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match242374242375_
                                                     _e233435233997_
                                                     _hd233434234000_
                                                     _tl233433234002_
                                                     ___splice242335242336_
                                                     _target233436234005_
                                                     _tl233438234007_))))
                                            (___match242374242375_
                                             _e233435233997_
                                             _hd233434234000_
                                             _tl233433234002_
                                             ___splice242335242336_
                                             _target233436234005_
                                             _tl233438234007_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop233439234010_ _target233436234005_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx242331242332_))
                  (let ((_e233435233997_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx242331242332_))))
                    (let ((_tl233433234002_
                           (let ()
                             (declare (not safe))
                             (##cdr _e233435233997_)))
                          (_hd233434234000_
                           (let ()
                             (declare (not safe))
                             (##car _e233435233997_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd233434234000_))
                          (let ((___splice242335242336_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd233434234000_
                                    '0))))
                            (let ((_tl233438234007_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice242335242336_ '1)))
                                  (_target233436234005_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice242335242336_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl233438234007_))
                                  (___match242362242363_
                                   _e233435233997_
                                   _hd233434234000_
                                   _tl233433234002_
                                   ___splice242335242336_
                                   _target233436234005_
                                   _tl233438234007_)
                                  (___match242374242375_
                                   _e233435233997_
                                   _hd233434234000_
                                   _tl233433234002_
                                   ___splice242335242336_
                                   _target233436234005_
                                   _tl233438234007_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl233433234002_))
                              (let ((_e233550233605_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl233433234002_))))
                                (let ((_tl233548233610_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e233550233605_)))
                                      (_hd233549233608_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e233550233605_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd233549233608_))
                                      (let ((_e233553233613_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd233549233608_))))
                                        (let ((_tl233551233618_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233553233613_)))
                                              (_hd233552233616_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233553233613_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd233552233616_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd233552233616_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl233551233618_))
                                                      (let ((_e233556233621_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl233551233618_))))
                (let ((_tl233554233626_
                       (let () (declare (not safe)) (##cdr _e233556233621_)))
                      (_hd233555233624_
                       (let () (declare (not safe)) (##car _e233556233621_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd233555233624_))
                      (let ((_e233559233629_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd233555233624_))))
                        (let ((_tl233557233634_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e233559233629_)))
                              (_hd233558233632_
                               (let ()
                                 (declare (not safe))
                                 (##car _e233559233629_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd233558233632_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd233558233632_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl233557233634_))
                                      (let ((_e233562233637_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl233557233634_))))
                                        (let ((_tl233560233642_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233562233637_)))
                                              (_hd233561233640_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233562233637_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233560233642_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl233554233626_))
                                                  (let ((_e233565233645_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl233554233626_))))
                                                    (let ((_tl233563233650_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e233565233645_)))
                                                          (_hd233564233648_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e233565233645_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd233564233648_))
                                                          (let ((_e233568233653_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd233564233648_))))
                    (let ((_tl233566233658_
                           (let ()
                             (declare (not safe))
                             (##cdr _e233568233653_)))
                          (_hd233567233656_
                           (let ()
                             (declare (not safe))
                             (##car _e233568233653_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd233567233656_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd233567233656_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl233566233658_))
                                  (let ((_e233571233661_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl233566233658_))))
                                    (let ((_tl233569233666_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e233571233661_)))
                                          (_hd233570233664_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e233571233661_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl233569233666_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl233563233650_))
                                              (let ((_e233574233669_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl233563233650_))))
                                                (let ((_tl233572233674_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e233574233669_)))
                                                      (_hd233573233672_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e233574233669_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd233573233672_))
                                                      (let ((_e233577233677_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd233573233672_))))
                (let ((_tl233575233682_
                       (let () (declare (not safe)) (##cdr _e233577233677_)))
                      (_hd233576233680_
                       (let () (declare (not safe)) (##car _e233577233677_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd233576233680_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd233576233680_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl233575233682_))
                              (let ((_e233580233685_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl233575233682_))))
                                (let ((_tl233578233690_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e233580233685_)))
                                      (_hd233579233688_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e233580233685_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl233578233690_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl233572233674_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233548233610_))
                                              (___match242472242473_
                                               _e233435233997_
                                               _hd233434234000_
                                               _tl233433234002_
                                               _e233550233605_
                                               _hd233549233608_
                                               _tl233548233610_
                                               _e233553233613_
                                               _hd233552233616_
                                               _tl233551233618_
                                               _e233556233621_
                                               _hd233555233624_
                                               _tl233554233626_
                                               _e233559233629_
                                               _hd233558233632_
                                               _tl233557233634_
                                               _e233562233637_
                                               _hd233561233640_
                                               _tl233560233642_
                                               _e233565233645_
                                               _hd233564233648_
                                               _tl233563233650_
                                               _e233568233653_
                                               _hd233567233656_
                                               _tl233566233658_
                                               _e233571233661_
                                               _hd233570233664_
                                               _tl233569233666_
                                               _e233574233669_
                                               _hd233573233672_
                                               _tl233572233674_
                                               _e233577233677_
                                               _hd233576233680_
                                               _tl233575233682_
                                               _e233580233685_
                                               _hd233579233688_
                                               _tl233578233690_)
                                              (___kont242347242348_))
                                          (___kont242347242348_))
                                      (___kont242347242348_))))
                              (___kont242347242348_))
                          (___kont242347242348_))
                      (___kont242347242348_))))
              (___kont242347242348_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont242347242348_))
                                          (___kont242347242348_))))
                                  (___kont242347242348_))
                              (___kont242347242348_))
                          (___kont242347242348_))))
                  (___kont242347242348_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont242347242348_))
                                              (___kont242347242348_))))
                                      (___kont242347242348_))
                                  (___kont242347242348_))
                              (___kont242347242348_))))
                      (___kont242347242348_))))
              (___kont242347242348_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont242347242348_))
                                              (___kont242347242348_))))
                                      (___kont242347242348_))))
                              (___kont242347242348_)))))
                  (___kont242347242348_)))))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_form232891_)
        (let* ((___stx242475242476_ _form232891_)
               (_g232895233019_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx242475242476_)))))
          (let ((___kont242477242478_
                 (lambda (_L233389_ _L233390_ _L233391_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L233390_))))
                (___kont242483242484_
                 (lambda (_L233237_ _L233238_ _L233239_ _L233240_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L233237_))))
                (___kont242487242488_
                 (lambda (_L233104_ _L233105_ _L233106_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L233104_)))))
            (let* ((___match242584242585_
                    (lambda (_e232987233024_
                             _hd232986233027_
                             _tl232985233029_
                             _e232990233032_
                             _hd232989233035_
                             _tl232988233037_
                             _e232993233040_
                             _hd232992233043_
                             _tl232991233045_
                             _e232996233048_
                             _hd232995233051_
                             _tl232994233053_
                             _e232999233056_
                             _hd232998233059_
                             _tl232997233061_
                             _e233002233064_
                             _hd233001233067_
                             _tl233000233069_
                             _e233005233072_
                             _hd233004233075_
                             _tl233003233077_
                             _e233008233080_
                             _hd233007233083_
                             _tl233006233085_
                             _e233011233088_
                             _hd233010233091_
                             _tl233009233093_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl233003233077_))
                          (let ((_e233014233096_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl233003233077_))))
                            (let ((_tl233012233101_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e233014233096_)))
                                  (_hd233013233099_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e233014233096_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl233012233101_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl232988233037_))
                                      (___kont242487242488_
                                       _hd233010233091_
                                       _hd233001233067_
                                       _hd232986233027_)
                                      (let ()
                                        (declare (not safe))
                                        (_g232895233019_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g232895233019_)))))
                          (let () (declare (not safe)) (_g232895233019_)))))
                   (___match242514242515_
                    (lambda (_e232948233141_
                             _hd232947233144_
                             _tl232946233146_
                             ___splice242485242486_
                             _target232949233149_
                             _tl232951233151_)
                      (letrec ((_loop232952233154_
                                (lambda (_hd232950233157_ _arg232956233159_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd232950233157_))
                                      (let ((_e232953233162_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd232950233157_))))
                                        (let ((_lp-tl232955233167_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e232953233162_)))
                                              (_lp-hd232954233165_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e232953233162_))))
                                          (let ((__tmp243739
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd232954233165_
                                                         _arg232956233159_))))
                                            (declare (not safe))
                                            (_loop232952233154_
                                             _lp-tl232955233167_
                                             __tmp243739))))
                                      (let ((_arg232957233170_
                                             (reverse _arg232956233159_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl232946233146_))
                                            (let ((_e232960233173_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl232946233146_))))
                                              (let ((_tl232958233178_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e232960233173_)))
                                                    (_hd232959233176_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e232960233173_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd232959233176_))
                                                    (let ((_e232963233181_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd232959233176_))))
                                                      (let ((_tl232961233186_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e232963233181_)))
                    (_hd232962233184_
                     (let () (declare (not safe)) (##car _e232963233181_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd232962233184_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd232962233184_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl232961233186_))
                            (let ((_e232966233189_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl232961233186_))))
                              (let ((_tl232964233194_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e232966233189_)))
                                    (_hd232965233192_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e232966233189_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd232965233192_))
                                    (let ((_e232969233197_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd232965233192_))))
                                      (let ((_tl232967233202_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e232969233197_)))
                                            (_hd232968233200_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e232969233197_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd232968233200_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd232968233200_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl232967233202_))
                                                    (let ((_e232972233205_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl232967233202_))))
                                                      (let ((_tl232970233210_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e232972233205_)))
                    (_hd232971233208_
                     (let () (declare (not safe)) (##car _e232972233205_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl232970233210_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl232964233194_))
                        (let ((_e232975233213_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl232964233194_))))
                          (let ((_tl232973233218_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e232975233213_)))
                                (_hd232974233216_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e232975233213_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd232974233216_))
                                (let ((_e232978233221_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd232974233216_))))
                                  (let ((_tl232976233226_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e232978233221_)))
                                        (_hd232977233224_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e232978233221_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd232977233224_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd232977233224_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl232976233226_))
                                                (let ((_e232981233229_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl232976233226_))))
                                                  (let ((_tl232979233234_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e232981233229_)))
                                                        (_hd232980233232_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e232981233229_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl232979233234_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl232958233178_))
                                                            (___kont242483242484_
                                                             _hd232980233232_
                                                             _hd232971233208_
                                                             _tl232951233151_
                                                             _arg232957233170_)
                                                            (___match242584242585_
                                                             _e232948233141_
                                                             _hd232947233144_
                                                             _tl232946233146_
                                                             _e232960233173_
                                                             _hd232959233176_
                                                             _tl232958233178_
                                                             _e232963233181_
                                                             _hd232962233184_
                                                             _tl232961233186_
                                                             _e232966233189_
                                                             _hd232965233192_
                                                             _tl232964233194_
                                                             _e232969233197_
                                                             _hd232968233200_
                                                             _tl232967233202_
                                                             _e232972233205_
                                                             _hd232971233208_
                                                             _tl232970233210_
                                                             _e232975233213_
                                                             _hd232974233216_
                                                             _tl232973233218_
                                                             _e232978233221_
                                                             _hd232977233224_
                                                             _tl232976233226_
                                                             _e232981233229_
                                                             _hd232980233232_
                                                             _tl232979233234_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g232895233019_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g232895233019_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g232895233019_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g232895233019_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g232895233019_)))))
                        (let () (declare (not safe)) (_g232895233019_)))
                    (let () (declare (not safe)) (_g232895233019_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g232895233019_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g232895233019_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g232895233019_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g232895233019_)))))
                            (let () (declare (not safe)) (_g232895233019_)))
                        (let () (declare (not safe)) (_g232895233019_)))
                    (let () (declare (not safe)) (_g232895233019_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g232895233019_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g232895233019_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop232952233154_ _target232949233149_ '())))))
                   (___match242502242503_
                    (lambda (_e232902233277_
                             _hd232901233280_
                             _tl232900233282_
                             ___splice242479242480_
                             _target232903233285_
                             _tl232905233287_)
                      (letrec ((_loop232906233290_
                                (lambda (_hd232904233293_ _arg232910233295_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd232904233293_))
                                      (let ((_e232907233298_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd232904233293_))))
                                        (let ((_lp-tl232909233303_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e232907233298_)))
                                              (_lp-hd232908233301_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e232907233298_))))
                                          (let ((__tmp243741
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd232908233301_
                                                         _arg232910233295_))))
                                            (declare (not safe))
                                            (_loop232906233290_
                                             _lp-tl232909233303_
                                             __tmp243741))))
                                      (let ((_arg232911233306_
                                             (reverse _arg232910233295_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl232900233282_))
                                            (let ((_e232914233309_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl232900233282_))))
                                              (let ((_tl232912233314_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e232914233309_)))
                                                    (_hd232913233312_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e232914233309_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd232913233312_))
                                                    (let ((_e232917233317_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd232913233312_))))
                                                      (let ((_tl232915233322_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e232917233317_)))
                    (_hd232916233320_
                     (let () (declare (not safe)) (##car _e232917233317_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd232916233320_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd232916233320_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl232915233322_))
                            (let ((_e232920233325_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl232915233322_))))
                              (let ((_tl232918233330_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e232920233325_)))
                                    (_hd232919233328_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e232920233325_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd232919233328_))
                                    (let ((_e232923233333_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd232919233328_))))
                                      (let ((_tl232921233338_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e232923233333_)))
                                            (_hd232922233336_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e232923233333_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd232922233336_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd232922233336_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl232921233338_))
                                                    (let ((_e232926233341_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl232921233338_))))
                                                      (let ((_tl232924233346_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e232926233341_)))
                    (_hd232925233344_
                     (let () (declare (not safe)) (##car _e232926233341_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl232924233346_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl232918233330_))
                        (let ((___splice242481242482_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl232918233330_
                                  '0))))
                          (let ((_tl232929233351_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice242481242482_ '1)))
                                (_target232927233349_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice242481242482_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl232929233351_))
                                (letrec ((_loop232930233354_
                                          (lambda (_hd232928233357_
                                                   _xarg232934233359_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd232928233357_))
                                                (let ((_e232931233362_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd232928233357_))))
                                                  (let ((_lp-tl232933233367_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e232931233362_)))
                                                        (_lp-hd232932233365_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e232931233362_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd232932233365_))
                                                        (let ((_e232938233370_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd232932233365_))))
                  (let ((_tl232936233375_
                         (let () (declare (not safe)) (##cdr _e232938233370_)))
                        (_hd232937233373_
                         (let ()
                           (declare (not safe))
                           (##car _e232938233370_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd232937233373_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd232937233373_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl232936233375_))
                                (let ((_e232941233378_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl232936233375_))))
                                  (let ((_tl232939233383_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e232941233378_)))
                                        (_hd232940233381_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e232941233378_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl232939233383_))
                                        (let ((__tmp243740
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd232940233381_
                                                       _xarg232934233359_))))
                                          (declare (not safe))
                                          (_loop232930233354_
                                           _lp-tl232933233367_
                                           __tmp243740))
                                        (___match242514242515_
                                         _e232902233277_
                                         _hd232901233280_
                                         _tl232900233282_
                                         ___splice242479242480_
                                         _target232903233285_
                                         _tl232905233287_))))
                                (___match242514242515_
                                 _e232902233277_
                                 _hd232901233280_
                                 _tl232900233282_
                                 ___splice242479242480_
                                 _target232903233285_
                                 _tl232905233287_))
                            (___match242514242515_
                             _e232902233277_
                             _hd232901233280_
                             _tl232900233282_
                             ___splice242479242480_
                             _target232903233285_
                             _tl232905233287_))
                        (___match242514242515_
                         _e232902233277_
                         _hd232901233280_
                         _tl232900233282_
                         ___splice242479242480_
                         _target232903233285_
                         _tl232905233287_))))
                (___match242514242515_
                 _e232902233277_
                 _hd232901233280_
                 _tl232900233282_
                 ___splice242479242480_
                 _target232903233285_
                 _tl232905233287_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg232935233386_
                                                       (reverse _xarg232934233359_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl232912233314_))
                                                      (___kont242477242478_
                                                       _xarg232935233386_
                                                       _hd232925233344_
                                                       _arg232911233306_)
                                                      (___match242514242515_
                                                       _e232902233277_
                                                       _hd232901233280_
                                                       _tl232900233282_
                                                       ___splice242479242480_
                                                       _target232903233285_
                                                       _tl232905233287_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_loop232930233354_
                                     _target232927233349_
                                     '())))
                                (___match242514242515_
                                 _e232902233277_
                                 _hd232901233280_
                                 _tl232900233282_
                                 ___splice242479242480_
                                 _target232903233285_
                                 _tl232905233287_))))
                        (___match242514242515_
                         _e232902233277_
                         _hd232901233280_
                         _tl232900233282_
                         ___splice242479242480_
                         _target232903233285_
                         _tl232905233287_))
                    (___match242514242515_
                     _e232902233277_
                     _hd232901233280_
                     _tl232900233282_
                     ___splice242479242480_
                     _target232903233285_
                     _tl232905233287_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match242514242515_
                                                     _e232902233277_
                                                     _hd232901233280_
                                                     _tl232900233282_
                                                     ___splice242479242480_
                                                     _target232903233285_
                                                     _tl232905233287_))
                                                (___match242514242515_
                                                 _e232902233277_
                                                 _hd232901233280_
                                                 _tl232900233282_
                                                 ___splice242479242480_
                                                 _target232903233285_
                                                 _tl232905233287_))
                                            (___match242514242515_
                                             _e232902233277_
                                             _hd232901233280_
                                             _tl232900233282_
                                             ___splice242479242480_
                                             _target232903233285_
                                             _tl232905233287_))))
                                    (___match242514242515_
                                     _e232902233277_
                                     _hd232901233280_
                                     _tl232900233282_
                                     ___splice242479242480_
                                     _target232903233285_
                                     _tl232905233287_))))
                            (___match242514242515_
                             _e232902233277_
                             _hd232901233280_
                             _tl232900233282_
                             ___splice242479242480_
                             _target232903233285_
                             _tl232905233287_))
                        (___match242514242515_
                         _e232902233277_
                         _hd232901233280_
                         _tl232900233282_
                         ___splice242479242480_
                         _target232903233285_
                         _tl232905233287_))
                    (___match242514242515_
                     _e232902233277_
                     _hd232901233280_
                     _tl232900233282_
                     ___splice242479242480_
                     _target232903233285_
                     _tl232905233287_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match242514242515_
                                                     _e232902233277_
                                                     _hd232901233280_
                                                     _tl232900233282_
                                                     ___splice242479242480_
                                                     _target232903233285_
                                                     _tl232905233287_))))
                                            (___match242514242515_
                                             _e232902233277_
                                             _hd232901233280_
                                             _tl232900233282_
                                             ___splice242479242480_
                                             _target232903233285_
                                             _tl232905233287_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop232906233290_ _target232903233285_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx242475242476_))
                  (let ((_e232902233277_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx242475242476_))))
                    (let ((_tl232900233282_
                           (let ()
                             (declare (not safe))
                             (##cdr _e232902233277_)))
                          (_hd232901233280_
                           (let ()
                             (declare (not safe))
                             (##car _e232902233277_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd232901233280_))
                          (let ((___splice242479242480_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd232901233280_
                                    '0))))
                            (let ((_tl232905233287_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice242479242480_ '1)))
                                  (_target232903233285_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice242479242480_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl232905233287_))
                                  (___match242502242503_
                                   _e232902233277_
                                   _hd232901233280_
                                   _tl232900233282_
                                   ___splice242479242480_
                                   _target232903233285_
                                   _tl232905233287_)
                                  (___match242514242515_
                                   _e232902233277_
                                   _hd232901233280_
                                   _tl232900233282_
                                   ___splice242479242480_
                                   _target232903233285_
                                   _tl232905233287_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl232900233282_))
                              (let ((_e232990233032_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl232900233282_))))
                                (let ((_tl232988233037_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e232990233032_)))
                                      (_hd232989233035_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e232990233032_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd232989233035_))
                                      (let ((_e232993233040_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd232989233035_))))
                                        (let ((_tl232991233045_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e232993233040_)))
                                              (_hd232992233043_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e232993233040_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd232992233043_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd232992233043_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl232991233045_))
                                                      (let ((_e232996233048_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl232991233045_))))
                (let ((_tl232994233053_
                       (let () (declare (not safe)) (##cdr _e232996233048_)))
                      (_hd232995233051_
                       (let () (declare (not safe)) (##car _e232996233048_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd232995233051_))
                      (let ((_e232999233056_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd232995233051_))))
                        (let ((_tl232997233061_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e232999233056_)))
                              (_hd232998233059_
                               (let ()
                                 (declare (not safe))
                                 (##car _e232999233056_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd232998233059_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd232998233059_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl232997233061_))
                                      (let ((_e233002233064_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl232997233061_))))
                                        (let ((_tl233000233069_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233002233064_)))
                                              (_hd233001233067_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233002233064_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233000233069_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl232994233053_))
                                                  (let ((_e233005233072_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl232994233053_))))
                                                    (let ((_tl233003233077_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e233005233072_)))
                                                          (_hd233004233075_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e233005233072_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd233004233075_))
                                                          (let ((_e233008233080_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd233004233075_))))
                    (let ((_tl233006233085_
                           (let ()
                             (declare (not safe))
                             (##cdr _e233008233080_)))
                          (_hd233007233083_
                           (let ()
                             (declare (not safe))
                             (##car _e233008233080_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd233007233083_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd233007233083_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl233006233085_))
                                  (let ((_e233011233088_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl233006233085_))))
                                    (let ((_tl233009233093_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e233011233088_)))
                                          (_hd233010233091_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e233011233088_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl233009233093_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl233003233077_))
                                              (let ((_e233014233096_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl233003233077_))))
                                                (let ((_tl233012233101_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e233014233096_)))
                                                      (_hd233013233099_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e233014233096_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233012233101_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl232988233037_))
                                                          (___kont242487242488_
                                                           _hd233010233091_
                                                           _hd233001233067_
                                                           _hd232901233280_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g232895233019_)))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g232895233019_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g232895233019_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g232895233019_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g232895233019_)))
                              (let () (declare (not safe)) (_g232895233019_)))
                          (let () (declare (not safe)) (_g232895233019_)))))
                  (let () (declare (not safe)) (_g232895233019_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g232895233019_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g232895233019_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g232895233019_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g232895233019_)))
                              (let ()
                                (declare (not safe))
                                (_g232895233019_)))))
                      (let () (declare (not safe)) (_g232895233019_)))))
              (let () (declare (not safe)) (_g232895233019_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g232895233019_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g232895233019_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g232895233019_)))))
                              (let ()
                                (declare (not safe))
                                (_g232895233019_))))))
                  (let () (declare (not safe)) (_g232895233019_))))))))
    (define gxc#lambda-form-arity
      (lambda (_form232695_)
        (let* ((_g232697232711_
                (lambda (_g232698232708_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g232698232708_))))
               (_g232696232888_
                (lambda (_g232698232714_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g232698232714_))
                      (let ((_e232703232716_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g232698232714_))))
                        (let ((_hd232702232719_
                               (let ()
                                 (declare (not safe))
                                 (##car _e232703232716_)))
                              (_tl232701232721_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e232703232716_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl232701232721_))
                              (let ((_e232706232724_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl232701232721_))))
                                (let ((_hd232705232727_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e232706232724_)))
                                      (_tl232704232729_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e232706232724_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl232704232729_))
                                      ((lambda (_L232732_ _L232733_)
                                         (let* ((___stx242597242598_ _L232733_)
                                                (_g232748232776_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx242597242598_)))))
                                           (let ((___kont242599242600_
                                                  (lambda (_L232867_)
                                                    (length (let ((__tmp243742
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g232877232880_ _g232878232882_)
                             (let ()
                               (declare (not safe))
                               (cons _g232877232880_ _g232878232882_)))))
                      (declare (not safe))
                      (foldr1 __tmp243742 '() _L232867_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont242603242604_
                                                  (lambda (_L232818_ _L232819_)
                                                    (let ((__tmp243743
                                                           (length (let ((__tmp243744
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g232830232833_ _g232831232835_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g232830232833_
                                            _g232831232835_)))))
                             (declare (not safe))
                             (foldr1 __tmp243744 '() _L232819_)))))
              (declare (not safe))
              (cons __tmp243743 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont242607242608_
                                                  (lambda (_L232781_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '())))))
                                             (let* ((___match242622242623_
                                                     (lambda (___splice242605242606_
                                                              _target232762232794_
                                                              _tl232764232796_)
                                                       (letrec ((_loop232765232799_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd232763232802_ _arg232769232804_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd232763232802_))
                               (let ((_e232766232807_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd232763232802_))))
                                 (let ((_lp-tl232768232812_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e232766232807_)))
                                       (_lp-hd232767232810_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e232766232807_))))
                                   (let ((__tmp243745
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd232767232810_
                                                  _arg232769232804_))))
                                     (declare (not safe))
                                     (_loop232765232799_
                                      _lp-tl232768232812_
                                      __tmp243745))))
                               (let ((_arg232770232815_
                                      (reverse _arg232769232804_)))
                                 (___kont242603242604_
                                  _tl232764232796_
                                  _arg232770232815_))))))
                 (let ()
                   (declare (not safe))
                   (_loop232765232799_ _target232762232794_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match242616242617_
                                                     (lambda (___splice242601242602_
                                                              _target232751232843_
                                                              _tl232753232845_)
                                                       (letrec ((_loop232754232848_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd232752232851_ _arg232758232853_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd232752232851_))
                               (let ((_e232755232856_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd232752232851_))))
                                 (let ((_lp-tl232757232861_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e232755232856_)))
                                       (_lp-hd232756232859_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e232755232856_))))
                                   (let ((__tmp243746
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd232756232859_
                                                  _arg232758232853_))))
                                     (declare (not safe))
                                     (_loop232754232848_
                                      _lp-tl232757232861_
                                      __tmp243746))))
                               (let ((_arg232759232864_
                                      (reverse _arg232758232853_)))
                                 (___kont242599242600_ _arg232759232864_))))))
                 (let ()
                   (declare (not safe))
                   (_loop232754232848_ _target232751232843_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair/null?
                                                      ___stx242597242598_))
                                                   (let ((___splice242601242602_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-split-splice
                                                             ___stx242597242598_
                                                             '0))))
                                                     (let ((_tl232753232845_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice242601242602_
                                                               '1)))
                                                           (_target232751232843_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice242601242602_
                                                               '0))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl232753232845_))
                                                           (___match242616242617_
                                                            ___splice242601242602_
                                                            _target232751232843_
                                                            _tl232753232845_)
                                                           (___match242622242623_
                                                            ___splice242601242602_
                                                            _target232751232843_
                                                            _tl232753232845_))))
                                                   (___kont242607242608_
                                                    ___stx242597242598_))))))
                                       _hd232705232727_
                                       _hd232702232719_)
                                      (let ()
                                        (declare (not safe))
                                        (_g232697232711_ _g232698232714_)))))
                              (let ()
                                (declare (not safe))
                                (_g232697232711_ _g232698232714_)))))
                      (let ()
                        (declare (not safe))
                        (_g232697232711_ _g232698232714_))))))
          (declare (not safe))
          (_g232696232888_ _form232695_))))
    (define gxc#lambda-expr?
      (lambda (_expr232648_)
        (let* ((___stx242625242626_ _expr232648_)
               (_g232651232661_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx242625242626_)))))
          (let ((___kont242627242628_ (lambda (_L232681_) '#t))
                (___kont242629242630_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx242625242626_))
                (let ((_e232656232673_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx242625242626_))))
                  (let ((_tl232654232678_
                         (let () (declare (not safe)) (##cdr _e232656232673_)))
                        (_hd232655232676_
                         (let ()
                           (declare (not safe))
                           (##car _e232656232673_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd232655232676_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#lambda _hd232655232676_))
                            (___kont242627242628_ _tl232654232678_)
                            (___kont242629242630_))
                        (___kont242629242630_))))
                (___kont242629242630_))))))
    (define gxc#case-lambda-expr?
      (lambda (_expr232601_)
        (let* ((___stx242643242644_ _expr232601_)
               (_g232604232614_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx242643242644_)))))
          (let ((___kont242645242646_ (lambda (_L232634_) '#t))
                (___kont242647242648_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx242643242644_))
                (let ((_e232609232626_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx242643242644_))))
                  (let ((_tl232607232631_
                         (let () (declare (not safe)) (##cdr _e232609232626_)))
                        (_hd232608232629_
                         (let ()
                           (declare (not safe))
                           (##car _e232609232626_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd232608232629_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#case-lambda _hd232608232629_))
                            (___kont242645242646_ _tl232607232631_)
                            (___kont242647242648_))
                        (___kont242647242648_))))
                (___kont242647242648_))))))
    (define gxc#opt-lambda-expr?
      (lambda (_expr232470_)
        (let* ((___stx242661242662_ _expr232470_)
               (_g232473232503_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx242661242662_)))))
          (let ((___kont242663242664_
                 (lambda (_L232571_ _L232572_ _L232573_)
                   (if (let () (declare (not safe)) (gx#identifier? _L232573_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#lambda-expr? _L232572_))
                           (let ()
                             (declare (not safe))
                             (gxc#case-lambda-expr? _L232571_))
                           '#f)
                       '#f)))
                (___kont242665242666_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx242661242662_))
                (let ((_e232480232515_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx242661242662_))))
                  (let ((_tl232478232520_
                         (let () (declare (not safe)) (##cdr _e232480232515_)))
                        (_hd232479232518_
                         (let ()
                           (declare (not safe))
                           (##car _e232480232515_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd232479232518_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd232479232518_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl232478232520_))
                                (let ((_e232483232523_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl232478232520_))))
                                  (let ((_tl232481232528_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e232483232523_)))
                                        (_hd232482232526_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e232483232523_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd232482232526_))
                                        (let ((_e232486232531_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd232482232526_))))
                                          (let ((_tl232484232536_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e232486232531_)))
                                                (_hd232485232534_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e232486232531_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd232485232534_))
                                                (let ((_e232489232539_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd232485232534_))))
                                                  (let ((_tl232487232544_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e232489232539_)))
                                                        (_hd232488232542_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e232489232539_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd232488232542_))
                                                        (let ((_e232492232547_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd232488232542_))))
                  (let ((_tl232490232552_
                         (let () (declare (not safe)) (##cdr _e232492232547_)))
                        (_hd232491232550_
                         (let ()
                           (declare (not safe))
                           (##car _e232492232547_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl232490232552_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl232487232544_))
                            (let ((_e232495232555_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl232487232544_))))
                              (let ((_tl232493232560_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e232495232555_)))
                                    (_hd232494232558_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e232495232555_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl232493232560_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl232484232536_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl232481232528_))
                                            (let ((_e232498232563_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl232481232528_))))
                                              (let ((_tl232496232568_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e232498232563_)))
                                                    (_hd232497232566_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e232498232563_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl232496232568_))
                                                    (___kont242663242664_
                                                     _hd232497232566_
                                                     _hd232494232558_
                                                     _hd232491232550_)
                                                    (___kont242665242666_))))
                                            (___kont242665242666_))
                                        (___kont242665242666_))
                                    (___kont242665242666_))))
                            (___kont242665242666_))
                        (___kont242665242666_))))
                (___kont242665242666_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont242665242666_))))
                                        (___kont242665242666_))))
                                (___kont242665242666_))
                            (___kont242665242666_))
                        (___kont242665242666_))))
                (___kont242665242666_))))))
    (define gxc#kw-lambda-expr?
      (lambda (_expr231795_)
        (let* ((___stx242723242724_ _expr231795_)
               (_g231798231956_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx242723242724_)))))
          (let ((___kont242725242726_
                 (lambda (_L232344_
                          _L232345_
                          _L232346_
                          _L232347_
                          _L232348_
                          _L232349_
                          _L232350_
                          _L232351_
                          _L232352_
                          _L232353_
                          _L232354_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#runtime-identifier=? _L232351_ 'apply))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L232347_ 'apply))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#runtime-identifier=?
                                  _L232346_
                                  'keyword-dispatch))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L232354_
                                      _L232345_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L232353_
                                          _L232350_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L232348_
                                              _L232344_))
                                           (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L232352_
                                              _L232349_))
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)))
                (___kont242727242728_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx242723242724_))
                (let ((_e231813231968_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx242723242724_))))
                  (let ((_tl231811231973_
                         (let () (declare (not safe)) (##cdr _e231813231968_)))
                        (_hd231812231971_
                         (let ()
                           (declare (not safe))
                           (##car _e231813231968_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd231812231971_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd231812231971_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl231811231973_))
                                (let ((_e231816231976_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl231811231973_))))
                                  (let ((_tl231814231981_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e231816231976_)))
                                        (_hd231815231979_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e231816231976_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd231815231979_))
                                        (let ((_e231819231984_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd231815231979_))))
                                          (let ((_tl231817231989_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e231819231984_)))
                                                (_hd231818231987_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e231819231984_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd231818231987_))
                                                (let ((_e231822231992_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd231818231987_))))
                                                  (let ((_tl231820231997_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e231822231992_)))
                                                        (_hd231821231995_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e231822231992_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd231821231995_))
                                                        (let ((_e231825232000_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd231821231995_))))
                  (let ((_tl231823232005_
                         (let () (declare (not safe)) (##cdr _e231825232000_)))
                        (_hd231824232003_
                         (let ()
                           (declare (not safe))
                           (##car _e231825232000_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl231823232005_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl231820231997_))
                            (let ((_e231828232008_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl231820231997_))))
                              (let ((_tl231826232013_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e231828232008_)))
                                    (_hd231827232011_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e231828232008_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd231827232011_))
                                    (let ((_e231831232016_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd231827232011_))))
                                      (let ((_tl231829232021_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e231831232016_)))
                                            (_hd231830232019_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e231831232016_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd231830232019_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#let-values
                                                   _hd231830232019_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl231829232021_))
                                                    (let ((_e231834232024_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl231829232021_))))
                                                      (let ((_tl231832232029_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e231834232024_)))
                    (_hd231833232027_
                     (let () (declare (not safe)) (##car _e231834232024_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd231833232027_))
                    (let ((_e231837232032_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd231833232027_))))
                      (let ((_tl231835232037_
                             (let ()
                               (declare (not safe))
                               (##cdr _e231837232032_)))
                            (_hd231836232035_
                             (let ()
                               (declare (not safe))
                               (##car _e231837232032_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd231836232035_))
                            (let ((_e231840232040_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd231836232035_))))
                              (let ((_tl231838232045_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e231840232040_)))
                                    (_hd231839232043_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e231840232040_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd231839232043_))
                                    (let ((_e231843232048_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd231839232043_))))
                                      (let ((_tl231841232053_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e231843232048_)))
                                            (_hd231842232051_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e231843232048_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl231841232053_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl231838232045_))
                                                (let ((_e231846232056_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl231838232045_))))
                                                  (let ((_tl231844232061_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e231846232056_)))
                                                        (_hd231845232059_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e231846232056_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl231844232061_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl231835232037_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl231832232029_))
                        (let ((_e231849232064_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl231832232029_))))
                          (let ((_tl231847232069_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e231849232064_)))
                                (_hd231848232067_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e231849232064_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd231848232067_))
                                (let ((_e231852232072_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd231848232067_))))
                                  (let ((_tl231850232077_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e231852232072_)))
                                        (_hd231851232075_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e231852232072_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd231851232075_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#lambda
                                               _hd231851232075_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl231850232077_))
                                                (let ((_e231855232080_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl231850232077_))))
                                                  (let ((_tl231853232085_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e231855232080_)))
                                                        (_hd231854232083_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e231855232080_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd231854232083_))
                                                        (let ((_e231858232088_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd231854232083_))))
                  (let ((_tl231856232093_
                         (let () (declare (not safe)) (##cdr _e231858232088_)))
                        (_hd231857232091_
                         (let ()
                           (declare (not safe))
                           (##car _e231858232088_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl231853232085_))
                        (let ((_e231861232096_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl231853232085_))))
                          (let ((_tl231859232101_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e231861232096_)))
                                (_hd231860232099_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e231861232096_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd231860232099_))
                                (let ((_e231864232104_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd231860232099_))))
                                  (let ((_tl231862232109_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e231864232104_)))
                                        (_hd231863232107_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e231864232104_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd231863232107_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#call
                                               _hd231863232107_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl231862232109_))
                                                (let ((_e231867232112_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl231862232109_))))
                                                  (let ((_tl231865232117_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e231867232112_)))
                                                        (_hd231866232115_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e231867232112_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd231866232115_))
                                                        (let ((_e231870232120_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd231866232115_))))
                  (let ((_tl231868232125_
                         (let () (declare (not safe)) (##cdr _e231870232120_)))
                        (_hd231869232123_
                         (let ()
                           (declare (not safe))
                           (##car _e231870232120_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd231869232123_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd231869232123_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl231868232125_))
                                (let ((_e231873232128_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl231868232125_))))
                                  (let ((_tl231871232133_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e231873232128_)))
                                        (_hd231872232131_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e231873232128_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl231871232133_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl231865232117_))
                                            (let ((_e231876232136_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl231865232117_))))
                                              (let ((_tl231874232141_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e231876232136_)))
                                                    (_hd231875232139_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e231876232136_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd231875232139_))
                                                    (let ((_e231879232144_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd231875232139_))))
                                                      (let ((_tl231877232149_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e231879232144_)))
                    (_hd231878232147_
                     (let () (declare (not safe)) (##car _e231879232144_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd231878232147_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd231878232147_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl231877232149_))
                            (let ((_e231882232152_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl231877232149_))))
                              (let ((_tl231880232157_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e231882232152_)))
                                    (_hd231881232155_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e231882232152_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl231880232157_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl231874232141_))
                                        (let ((_e231885232160_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl231874232141_))))
                                          (let ((_tl231883232165_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e231885232160_)))
                                                (_hd231884232163_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e231885232160_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd231884232163_))
                                                (let ((_e231888232168_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd231884232163_))))
                                                  (let ((_tl231886232173_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e231888232168_)))
                                                        (_hd231887232171_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e231888232168_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd231887232171_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd231887232171_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl231886232173_))
                        (let ((_e231891232176_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl231886232173_))))
                          (let ((_tl231889232181_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e231891232176_)))
                                (_hd231890232179_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e231891232176_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl231889232181_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl231859232101_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl231847232069_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl231826232013_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl231817231989_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl231814231981_))
                                                    (let ((_e231894232184_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl231814231981_))))
                                                      (let ((_tl231892232189_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e231894232184_)))
                    (_hd231893232187_
                     (let () (declare (not safe)) (##car _e231894232184_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd231893232187_))
                    (let ((_e231897232192_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd231893232187_))))
                      (let ((_tl231895232197_
                             (let ()
                               (declare (not safe))
                               (##cdr _e231897232192_)))
                            (_hd231896232195_
                             (let ()
                               (declare (not safe))
                               (##car _e231897232192_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd231896232195_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#lambda _hd231896232195_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl231895232197_))
                                    (let ((_e231900232200_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl231895232197_))))
                                      (let ((_tl231898232205_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e231900232200_)))
                                            (_hd231899232203_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e231900232200_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl231898232205_))
                                            (let ((_e231903232208_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl231898232205_))))
                                              (let ((_tl231901232213_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e231903232208_)))
                                                    (_hd231902232211_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e231903232208_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd231902232211_))
                                                    (let ((_e231906232216_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd231902232211_))))
                                                      (let ((_tl231904232221_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e231906232216_)))
                    (_hd231905232219_
                     (let () (declare (not safe)) (##car _e231906232216_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd231905232219_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd231905232219_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl231904232221_))
                            (let ((_e231909232224_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl231904232221_))))
                              (let ((_tl231907232229_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e231909232224_)))
                                    (_hd231908232227_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e231909232224_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd231908232227_))
                                    (let ((_e231912232232_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd231908232227_))))
                                      (let ((_tl231910232237_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e231912232232_)))
                                            (_hd231911232235_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e231912232232_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd231911232235_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd231911232235_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl231910232237_))
                                                    (let ((_e231915232240_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl231910232237_))))
                                                      (let ((_tl231913232245_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e231915232240_)))
                    (_hd231914232243_
                     (let () (declare (not safe)) (##car _e231915232240_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl231913232245_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl231907232229_))
                        (let ((_e231918232248_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl231907232229_))))
                          (let ((_tl231916232253_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e231918232248_)))
                                (_hd231917232251_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e231918232248_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd231917232251_))
                                (let ((_e231921232256_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd231917232251_))))
                                  (let ((_tl231919232261_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e231921232256_)))
                                        (_hd231920232259_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e231921232256_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd231920232259_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd231920232259_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl231919232261_))
                                                (let ((_e231924232264_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl231919232261_))))
                                                  (let ((_tl231922232269_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e231924232264_)))
                                                        (_hd231923232267_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e231924232264_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl231922232269_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl231916232253_))
                                                            (let ((_e231927232272_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl231916232253_))))
                      (let ((_tl231925232277_
                             (let ()
                               (declare (not safe))
                               (##cdr _e231927232272_)))
                            (_hd231926232275_
                             (let ()
                               (declare (not safe))
                               (##car _e231927232272_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd231926232275_))
                            (let ((_e231930232280_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd231926232275_))))
                              (let ((_tl231928232285_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e231930232280_)))
                                    (_hd231929232283_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e231930232280_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd231929232283_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd231929232283_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl231928232285_))
                                            (let ((_e231933232288_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl231928232285_))))
                                              (let ((_tl231931232293_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e231933232288_)))
                                                    (_hd231932232291_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e231933232288_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl231931232293_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl231925232277_))
                                                        (let ((_e231936232296_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl231925232277_))))
                  (let ((_tl231934232301_
                         (let () (declare (not safe)) (##cdr _e231936232296_)))
                        (_hd231935232299_
                         (let ()
                           (declare (not safe))
                           (##car _e231936232296_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd231935232299_))
                        (let ((_e231939232304_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd231935232299_))))
                          (let ((_tl231937232309_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e231939232304_)))
                                (_hd231938232307_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e231939232304_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd231938232307_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd231938232307_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl231937232309_))
                                        (let ((_e231942232312_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl231937232309_))))
                                          (let ((_tl231940232317_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e231942232312_)))
                                                (_hd231941232315_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e231942232312_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl231940232317_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl231934232301_))
                                                    (let ((_e231945232320_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl231934232301_))))
                                                      (let ((_tl231943232325_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e231945232320_)))
                    (_hd231944232323_
                     (let () (declare (not safe)) (##car _e231945232320_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd231944232323_))
                    (let ((_e231948232328_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd231944232323_))))
                      (let ((_tl231946232333_
                             (let ()
                               (declare (not safe))
                               (##cdr _e231948232328_)))
                            (_hd231947232331_
                             (let ()
                               (declare (not safe))
                               (##car _e231948232328_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd231947232331_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#ref _hd231947232331_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl231946232333_))
                                    (let ((_e231951232336_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl231946232333_))))
                                      (let ((_tl231949232341_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e231951232336_)))
                                            (_hd231950232339_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e231951232336_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl231949232341_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl231943232325_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl231901232213_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl231892232189_))
                                                        (___kont242725242726_
                                                         _hd231950232339_
                                                         _hd231941232315_
                                                         _hd231923232267_
                                                         _hd231914232243_
                                                         _hd231899232203_
                                                         _hd231890232179_
                                                         _hd231881232155_
                                                         _hd231872232131_
                                                         _hd231857232091_
                                                         _hd231842232051_
                                                         _hd231824232003_)
                                                        (___kont242727242728_))
                                                    (___kont242727242728_))
                                                (___kont242727242728_))
                                            (___kont242727242728_))))
                                    (___kont242727242728_))
                                (___kont242727242728_))
                            (___kont242727242728_))))
                    (___kont242727242728_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont242727242728_))
                                                (___kont242727242728_))))
                                        (___kont242727242728_))
                                    (___kont242727242728_))
                                (___kont242727242728_))))
                        (___kont242727242728_))))
                (___kont242727242728_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont242727242728_))))
                                            (___kont242727242728_))
                                        (___kont242727242728_))
                                    (___kont242727242728_))))
                            (___kont242727242728_))))
                    (___kont242727242728_))
                (___kont242727242728_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont242727242728_))
                                            (___kont242727242728_))
                                        (___kont242727242728_))))
                                (___kont242727242728_))))
                        (___kont242727242728_))
                    (___kont242727242728_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont242727242728_))
                                                (___kont242727242728_))
                                            (___kont242727242728_))))
                                    (___kont242727242728_))))
                            (___kont242727242728_))
                        (___kont242727242728_))
                    (___kont242727242728_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont242727242728_))))
                                            (___kont242727242728_))))
                                    (___kont242727242728_))
                                (___kont242727242728_))
                            (___kont242727242728_))))
                    (___kont242727242728_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont242727242728_))
                                                (___kont242727242728_))
                                            (___kont242727242728_))
                                        (___kont242727242728_))
                                    (___kont242727242728_))
                                (___kont242727242728_))))
                        (___kont242727242728_))
                    (___kont242727242728_))
                (___kont242727242728_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont242727242728_))))
                                        (___kont242727242728_))
                                    (___kont242727242728_))))
                            (___kont242727242728_))
                        (___kont242727242728_))
                    (___kont242727242728_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont242727242728_))))
                                            (___kont242727242728_))
                                        (___kont242727242728_))))
                                (___kont242727242728_))
                            (___kont242727242728_))
                        (___kont242727242728_))))
                (___kont242727242728_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont242727242728_))
                                            (___kont242727242728_))
                                        (___kont242727242728_))))
                                (___kont242727242728_))))
                        (___kont242727242728_))))
                (___kont242727242728_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont242727242728_))
                                            (___kont242727242728_))
                                        (___kont242727242728_))))
                                (___kont242727242728_))))
                        (___kont242727242728_))
                    (___kont242727242728_))
                (___kont242727242728_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont242727242728_))
                                            (___kont242727242728_))))
                                    (___kont242727242728_))))
                            (___kont242727242728_))))
                    (___kont242727242728_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont242727242728_))
                                                (___kont242727242728_))
                                            (___kont242727242728_))))
                                    (___kont242727242728_))))
                            (___kont242727242728_))
                        (___kont242727242728_))))
                (___kont242727242728_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont242727242728_))))
                                        (___kont242727242728_))))
                                (___kont242727242728_))
                            (___kont242727242728_))
                        (___kont242727242728_))))
                (___kont242727242728_))))))
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx231537_ _id231538_ _clauses231539_ _gensym?231540_)
        (let _lp231542_ ((_rest231544_ _clauses231539_)
                         (_ids231545_ '())
                         (_impls231546_ '())
                         (_clauses231547_ '()))
          (let* ((_rest231548231556_ _rest231544_)
                 (_else231550231564_
                  (lambda ()
                    (values (reverse _ids231545_)
                            (reverse _impls231546_)
                            (reverse _clauses231547_))))
                 (_K231552231769_
                  (lambda (_rest231567_ _clause231568_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#dispatch-lambda-form? _clause231568_))
                        (let ((__tmp243802
                               (let ()
                                 (declare (not safe))
                                 (cons _clause231568_ _clauses231547_))))
                          (declare (not safe))
                          (_lp231542_
                           _rest231567_
                           _ids231545_
                           _impls231546_
                           __tmp243802))
                        (let* ((_g231570231581_
                                (lambda (_g231571231578_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g231571231578_))))
                               (_g231569231766_
                                (lambda (_g231571231584_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _g231571231584_))
                                      (let ((_e231576231586_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _g231571231584_))))
                                        (let ((_hd231575231589_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e231576231586_)))
                                              (_tl231574231591_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e231576231586_))))
                                          ((lambda (_L231594_ _L231595_)
                                             (let* ((_id231612_
                                                     (let ((__tmp243749
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _id231538_)))
                                                           (__tmp243748
                                                            (length _clauses231547_))
                                                           (__tmp243747
                                                            (if _gensym?231540_
                                                                (gensym '__)
                                                                '"")))
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        __tmp243749
                                                        '"__"
                                                        __tmp243748
                                                        __tmp243747)))
                                                    (_id231614_
                                                     (let ((__tmp243750
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-source
                                                               _stx231537_))))
                                                       (declare (not safe))
                                                       (gx#core-quote-syntax__1
                                                        _id231612_
                                                        __tmp243750)))
                                                    (_impl231616_
                                                     (let ((__tmp243751
                                                            (let ((__tmp243753
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '%#lambda)))
                          (__tmp243752
                           (let ()
                             (declare (not safe))
                             (cons _L231595_ _L231594_))))
                      (declare (not safe))
                      (cons __tmp243753 __tmp243752))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp243751 _stx231537_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause231763_
                                                     (let* ((___stx243107243108_
                                                             _L231595_)
                                                            (_g231620231648_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx243107243108_)))))
               (let ((___kont243109243110_
                      (lambda (_L231742_)
                        (let ((__tmp243754
                               (let ((__tmp243755
                                      (let ((__tmp243756
                                             (let ((__tmp243757
                                                    (let ((__tmp243763
                                                           (let ((__tmp243764
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id231614_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp243764)))
                  (__tmp243758
                   (let ((__tmp243759
                          (lambda (_g231752231755_ _g231753231757_)
                            (let ((__tmp243760
                                   (let ((__tmp243762
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp243761
                                          (let ()
                                            (declare (not safe))
                                            (cons _g231752231755_ '()))))
                                     (declare (not safe))
                                     (cons __tmp243762 __tmp243761))))
                              (declare (not safe))
                              (cons __tmp243760 _g231753231757_)))))
                     (declare (not safe))
                     (foldr1 __tmp243759 '() _L231742_))))
              (declare (not safe))
              (cons __tmp243763 __tmp243758))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp243757))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp243756
                                         _stx231537_))))
                                 (declare (not safe))
                                 (cons __tmp243755 '()))))
                          (declare (not safe))
                          (cons _L231595_ __tmp243754))))
                     (___kont243113243114_
                      (lambda (_L231693_ _L231694_)
                        (let ((__tmp243765
                               (let ((__tmp243766
                                      (let ((__tmp243767
                                             (let ((__tmp243768
                                                    (let ((__tmp243782
                                                           (let ((__tmp243783
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp243783)))
                  (__tmp243769
                   (let ((__tmp243780
                          (let ((__tmp243781
                                 (let ()
                                   (declare (not safe))
                                   (cons _id231614_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp243781)))
                         (__tmp243770
                          (let ((__tmp243776
                                 (let ((__tmp243777
                                        (let ((__tmp243779
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)))
                                              (__tmp243778
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L231693_ '()))))
                                          (declare (not safe))
                                          (cons __tmp243779 __tmp243778))))
                                   (declare (not safe))
                                   (cons __tmp243777 '())))
                                (__tmp243771
                                 (let ((__tmp243772
                                        (lambda (_g231705231708_
                                                 _g231706231710_)
                                          (let ((__tmp243773
                                                 (let ((__tmp243775
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)))
                                                       (__tmp243774
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g231705231708_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp243775
                                                         __tmp243774))))
                                            (declare (not safe))
                                            (cons __tmp243773
                                                  _g231706231710_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp243772 '() _L231694_))))
                            (declare (not safe))
                            (foldr1 cons __tmp243776 __tmp243771))))
                     (declare (not safe))
                     (cons __tmp243780 __tmp243770))))
              (declare (not safe))
              (cons __tmp243782 __tmp243769))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp243768))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp243767
                                         _stx231537_))))
                                 (declare (not safe))
                                 (cons __tmp243766 '()))))
                          (declare (not safe))
                          (cons _L231595_ __tmp243765))))
                     (___kont243117243118_
                      (lambda (_L231653_)
                        (let ((__tmp243784
                               (let ((__tmp243785
                                      (let ((__tmp243786
                                             (let ((__tmp243787
                                                    (let ((__tmp243795
                                                           (let ((__tmp243796
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp243796)))
                  (__tmp243788
                   (let ((__tmp243793
                          (let ((__tmp243794
                                 (let ()
                                   (declare (not safe))
                                   (cons _id231614_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp243794)))
                         (__tmp243789
                          (let ((__tmp243790
                                 (let ((__tmp243792
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '%#ref)))
                                       (__tmp243791
                                        (let ()
                                          (declare (not safe))
                                          (cons _L231653_ '()))))
                                   (declare (not safe))
                                   (cons __tmp243792 __tmp243791))))
                            (declare (not safe))
                            (cons __tmp243790 '()))))
                     (declare (not safe))
                     (cons __tmp243793 __tmp243789))))
              (declare (not safe))
              (cons __tmp243795 __tmp243788))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp243787))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp243786
                                         _stx231537_))))
                                 (declare (not safe))
                                 (cons __tmp243785 '()))))
                          (declare (not safe))
                          (cons _L231595_ __tmp243784)))))
                 (let* ((___match243132243133_
                         (lambda (___splice243115243116_
                                  _target231634231669_
                                  _tl231636231671_)
                           (letrec ((_loop231637231674_
                                     (lambda (_hd231635231677_
                                              _arg231641231679_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd231635231677_))
                                           (let ((_e231638231682_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd231635231677_))))
                                             (let ((_lp-tl231640231687_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e231638231682_)))
                                                   (_lp-hd231639231685_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e231638231682_))))
                                               (let ((__tmp243797
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd231639231685_
                                                              _arg231641231679_))))
                                                 (declare (not safe))
                                                 (_loop231637231674_
                                                  _lp-tl231640231687_
                                                  __tmp243797))))
                                           (let ((_arg231642231690_
                                                  (reverse _arg231641231679_)))
                                             (___kont243113243114_
                                              _tl231636231671_
                                              _arg231642231690_))))))
                             (let ()
                               (declare (not safe))
                               (_loop231637231674_
                                _target231634231669_
                                '())))))
                        (___match243126243127_
                         (lambda (___splice243111243112_
                                  _target231623231718_
                                  _tl231625231720_)
                           (letrec ((_loop231626231723_
                                     (lambda (_hd231624231726_
                                              _arg231630231728_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd231624231726_))
                                           (let ((_e231627231731_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd231624231726_))))
                                             (let ((_lp-tl231629231736_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e231627231731_)))
                                                   (_lp-hd231628231734_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e231627231731_))))
                                               (let ((__tmp243798
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd231628231734_
                                                              _arg231630231728_))))
                                                 (declare (not safe))
                                                 (_loop231626231723_
                                                  _lp-tl231629231736_
                                                  __tmp243798))))
                                           (let ((_arg231631231739_
                                                  (reverse _arg231630231728_)))
                                             (___kont243109243110_
                                              _arg231631231739_))))))
                             (let ()
                               (declare (not safe))
                               (_loop231626231723_
                                _target231623231718_
                                '()))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? ___stx243107243108_))
                       (let ((___splice243111243112_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 ___stx243107243108_
                                 '0))))
                         (let ((_tl231625231720_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice243111243112_ '1)))
                               (_target231623231718_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice243111243112_ '0))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl231625231720_))
                               (___match243126243127_
                                ___splice243111243112_
                                _target231623231718_
                                _tl231625231720_)
                               (___match243132243133_
                                ___splice243111243112_
                                _target231623231718_
                                _tl231625231720_))))
                       (___kont243117243118_ ___stx243107243108_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp243801
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _id231614_
                                                              _ids231545_)))
                                                     (__tmp243800
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _impl231616_
                                                              _impls231546_)))
                                                     (__tmp243799
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _clause231763_
                                                              _clauses231547_))))
                                                 (declare (not safe))
                                                 (_lp231542_
                                                  _rest231567_
                                                  __tmp243801
                                                  __tmp243800
                                                  __tmp243799))))
                                           _tl231574231591_
                                           _hd231575231589_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g231570231581_ _g231571231584_))))))
                          (declare (not safe))
                          (_g231569231766_ _clause231568_))))))
            (if (let () (declare (not safe)) (##pair? _rest231548231556_))
                (let ((_hd231553231772_
                       (let ()
                         (declare (not safe))
                         (##car _rest231548231556_)))
                      (_tl231554231774_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest231548231556_))))
                  (let* ((_clause231777_ _hd231553231772_)
                         (_rest231779_ _tl231554231774_))
                    (declare (not safe))
                    (_K231552231769_ _rest231779_ _clause231777_)))
                (let () (declare (not safe)) (_else231550231564_)))))))
    (define gxc#lift-case-lambda-clauses__0
      (lambda (_stx231784_ _id231785_ _clauses231786_)
        (let ((_gensym?231788_ '#f))
          (declare (not safe))
          (gxc#lift-case-lambda-clauses__%
           _stx231784_
           _id231785_
           _clauses231786_
           _gensym?231788_))))
    (define gxc#lift-case-lambda-clauses
      (lambda _g243804_
        (let ((_g243803_ (let () (declare (not safe)) (##length _g243804_))))
          (cond ((let () (declare (not safe)) (##fx= _g243803_ 3))
                 (apply (lambda (_stx231784_ _id231785_ _clauses231786_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__0
                             _stx231784_
                             _id231785_
                             _clauses231786_)))
                        _g243804_))
                ((let () (declare (not safe)) (##fx= _g243803_ 4))
                 (apply (lambda (_stx231790_
                                 _id231791_
                                 _clauses231792_
                                 _gensym?231793_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__%
                             _stx231790_
                             _id231791_
                             _clauses231792_
                             _gensym?231793_)))
                        _g243804_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#lift-case-lambda-clauses
                  _g243804_))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_stx230814_)
        (letrec ((_case-lambda-clause-def230816_
                  (lambda (_id231533_ _impl231534_)
                    (let ((__tmp243805
                           (let ((__tmp243806
                                  (let ((__tmp243809
                                         (let ()
                                           (declare (not safe))
                                           (cons _id231533_ '())))
                                        (__tmp243807
                                         (let ((__tmp243808
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _impl231534_))))
                                           (declare (not safe))
                                           (cons __tmp243808 '()))))
                                    (declare (not safe))
                                    (cons __tmp243809 __tmp243807))))
                             (declare (not safe))
                             (cons '%#define-values __tmp243806))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp243805 _stx230814_))))
                 (_opt-lambda-dispatch-name230817_
                  (lambda (_id231529_)
                    (if (uninterned-symbol? _id231529_)
                        (let ((_str231531_ (symbol->string _id231529_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"opt-lambda" _str231531_))
                              '"%"
                              _id231529_))
                        _id231529_)))
                 (_kw-lambda-dispatch-name230818_
                  (lambda (_id231524_ _name231525_)
                    (if (uninterned-symbol? _id231524_)
                        (let ((_str231527_ (symbol->string _id231524_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"kw-lambda" _str231527_))
                              _name231525_
                              _id231524_))
                        _id231524_))))
          (let* ((___stx243155243156_ _stx230814_)
                 (_g230823230882_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx243155243156_)))))
            (let ((___kont243157243158_
                   (lambda (_L231433_ _L231434_)
                     (let* ((___stx243135243136_ _L231433_)
                            (_g231451231465_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx243135243136_)))))
                       (let ((___kont243137243138_
                              (lambda (_L231509_) _stx230814_))
                             (___kont243139243140_
                              (lambda (_L231478_)
                                (let ((_g243810_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#lift-case-lambda-clauses__0
                                          _stx230814_
                                          _L231434_
                                          _L231478_))))
                                  (begin
                                    (let ((_g243811_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g243810_)
                                                 (##vector-length _g243810_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g243811_ 3)))
                                          (error "Context expects 3 values"
                                                 _g243811_)))
                                    (let ((_ids231488_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g243810_ 0)))
                                          (_impls231489_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g243810_ 1)))
                                          (_clauses231490_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g243810_ 2))))
                                      (let* ((_g243812_
                                              (for-each
                                               gx#core-bind-runtime!
                                               _ids231488_))
                                             (_defs231493_
                                              (map _case-lambda-clause-def230816_
                                                   _ids231488_
                                                   _impls231489_)))
                                        (let ((__tmp243814
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L231434_)))
                                              (__tmp243813
                                               (map gxc#identifier-symbol
                                                    _ids231488_)))
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"lift case-lambda clauses "
                                           __tmp243814
                                           '" => "
                                           __tmp243813))
                                        (let ((__tmp243815
                                               (let ((__tmp243816
                                                      (let ((__tmp243817
                                                             (let ((__tmp243818
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp243819
                                   (let ((__tmp243820
                                          (let ((__tmp243825
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L231434_ '())))
                                                (__tmp243821
                                                 (let ((__tmp243822
                                                        (let ((__tmp243824
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '%#case-lambda _clauses231490_)))
                      (__tmp243823
                       (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp243824 __tmp243823))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp243822 '()))))
                                            (declare (not safe))
                                            (cons __tmp243825 __tmp243821))))
                                     (declare (not safe))
                                     (cons '%#define-values __tmp243820))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp243819
                               _stx230814_))))
                       (declare (not safe))
                       (cons __tmp243818 '()))))
                (declare (not safe))
                (foldr1 cons __tmp243817 _defs231493_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#begin __tmp243816))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp243815
                                           _stx230814_)))))))))
                         (let ((___match243146243147_
                                (lambda (_e231456231501_
                                         _hd231455231504_
                                         _tl231454231506_)
                                  (let ((_L231509_ _tl231454231506_))
                                    (if (let ()
                                          (declare (not safe))
                                          (andmap1 gxc#dispatch-lambda-form?
                                                   _L231509_))
                                        (___kont243137243138_ _L231509_)
                                        (___kont243139243140_
                                         _tl231454231506_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? ___stx243135243136_))
                               (let ((_e231456231501_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e ___stx243135243136_))))
                                 (let ((_tl231454231506_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e231456231501_)))
                                       (_hd231455231504_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e231456231501_))))
                                   (___match243146243147_
                                    _e231456231501_
                                    _hd231455231504_
                                    _tl231454231506_)))
                               (let ()
                                 (declare (not safe))
                                 (_g231451231465_))))))))
                  (___kont243159243160_
                   (lambda (_L231251_ _L231252_)
                     (let* ((_g231268231298_
                             (lambda (_g231269231295_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g231269231295_))))
                            (_g231267231393_
                             (lambda (_g231269231301_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g231269231301_))
                                   (let ((_e231275231303_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g231269231301_))))
                                     (let ((_hd231274231306_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e231275231303_)))
                                           (_tl231273231308_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e231275231303_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl231273231308_))
                                           (let ((_e231278231311_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl231273231308_))))
                                             (let ((_hd231277231314_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e231278231311_)))
                                                   (_tl231276231316_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e231278231311_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd231277231314_))
                                                   (let ((_e231281231319_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd231277231314_))))
                                                     (let ((_hd231280231322_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e231281231319_)))
                                                           (_tl231279231324_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e231281231319_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd231280231322_))
                                                           (let ((_e231284231327_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd231280231322_))))
                     (let ((_hd231283231330_
                            (let ()
                              (declare (not safe))
                              (##car _e231284231327_)))
                           (_tl231282231332_
                            (let ()
                              (declare (not safe))
                              (##cdr _e231284231327_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd231283231330_))
                           (let ((_e231287231335_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd231283231330_))))
                             (let ((_hd231286231338_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e231287231335_)))
                                   (_tl231285231340_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e231287231335_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl231285231340_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl231282231332_))
                                       (let ((_e231290231343_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl231282231332_))))
                                         (let ((_hd231289231346_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e231290231343_)))
                                               (_tl231288231348_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e231290231343_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl231288231348_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl231279231324_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl231276231316_))
                                                       (let ((_e231293231351_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl231276231316_))))
                 (let ((_hd231292231354_
                        (let () (declare (not safe)) (##car _e231293231351_)))
                       (_tl231291231356_
                        (let () (declare (not safe)) (##cdr _e231293231351_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl231291231356_))
                       ((lambda (_L231359_ _L231360_ _L231361_)
                          (let* ((_lambda-id231385_
                                  (let ((__tmp243828
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L231252_)))
                                        (__tmp243826
                                         (let ((__tmp243827
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L231361_))))
                                           (declare (not safe))
                                           (_opt-lambda-dispatch-name230817_
                                            __tmp243827))))
                                    (declare (not safe))
                                    (make-symbol__1
                                     __tmp243828
                                     '"__"
                                     __tmp243826)))
                                 (_lambda-id231387_
                                  (let ((__tmp243829
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-source _stx230814_))))
                                    (declare (not safe))
                                    (gx#core-quote-syntax__1
                                     _lambda-id231385_
                                     __tmp243829)))
                                 (_g243830_
                                  (let ()
                                    (declare (not safe))
                                    (gx#core-bind-runtime!__0
                                     _lambda-id231387_)))
                                 (_new-case-lambda-expr231390_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-expression-subst
                                     _L231359_
                                     _L231361_
                                     _lambda-id231387_))))
                            (let ((__tmp243832
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol _L231252_)))
                                  (__tmp243831
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol
                                      _lambda-id231387_))))
                              (declare (not safe))
                              (gxc#verbose
                               '"lift opt-lambda dispatch "
                               __tmp243832
                               '" => "
                               __tmp243831))
                            (let ((__tmp243833
                                   (let ((__tmp243834
                                          (let ((__tmp243842
                                                 (let ((__tmp243843
                                                        (let ((__tmp243844
                                                               (let ((__tmp243847
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _lambda-id231387_ '())))
                             (__tmp243845
                              (let ((__tmp243846
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L231360_))))
                                (declare (not safe))
                                (cons __tmp243846 '()))))
                         (declare (not safe))
                         (cons __tmp243847 __tmp243845))))
                  (declare (not safe))
                  (cons '%#define-values __tmp243844))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp243843
                                                    _stx230814_)))
                                                (__tmp243835
                                                 (let ((__tmp243836
                                                        (let ((__tmp243837
                                                               (let ((__tmp243838
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp243839
                                     (let ((__tmp243841
                                            (let ()
                                              (declare (not safe))
                                              (cons _L231252_ '())))
                                           (__tmp243840
                                            (let ()
                                              (declare (not safe))
                                              (cons _new-case-lambda-expr231390_
                                                    '()))))
                                       (declare (not safe))
                                       (cons __tmp243841 __tmp243840))))
                                (declare (not safe))
                                (cons '%#define-values __tmp243839))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp243838 _stx230814_))))
                  (declare (not safe))
                  (gxc#lift-top-lambda-define-values% __tmp243837))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp243836 '()))))
                                            (declare (not safe))
                                            (cons __tmp243842 __tmp243835))))
                                     (declare (not safe))
                                     (cons '%#begin __tmp243834))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp243833
                               _stx230814_))))
                        _hd231292231354_
                        _hd231289231346_
                        _hd231286231338_)
                       (let ()
                         (declare (not safe))
                         (_g231268231298_ _g231269231301_)))))
               (let () (declare (not safe)) (_g231268231298_ _g231269231301_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g231268231298_
                                                      _g231269231301_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g231268231298_
                                                  _g231269231301_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g231268231298_ _g231269231301_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g231268231298_ _g231269231301_)))))
                           (let ()
                             (declare (not safe))
                             (_g231268231298_ _g231269231301_)))))
                   (let ()
                     (declare (not safe))
                     (_g231268231298_ _g231269231301_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g231268231298_
                                                      _g231269231301_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g231268231298_
                                              _g231269231301_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g231268231298_ _g231269231301_))))))
                       (declare (not safe))
                       (_g231267231393_ _L231251_))))
                  (___kont243161243162_
                   (lambda (_L230965_ _L230966_)
                     (let* ((_g230982231035_
                             (lambda (_g230983231032_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g230983231032_))))
                            (_g230981231211_
                             (lambda (_g230983231038_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g230983231038_))
                                   (let ((_e230991231040_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g230983231038_))))
                                     (let ((_hd230990231043_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e230991231040_)))
                                           (_tl230989231045_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e230991231040_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl230989231045_))
                                           (let ((_e230994231048_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl230989231045_))))
                                             (let ((_hd230993231051_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e230994231048_)))
                                                   (_tl230992231053_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e230994231048_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd230993231051_))
                                                   (let ((_e230997231056_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd230993231051_))))
                                                     (let ((_hd230996231059_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e230997231056_)))
                                                           (_tl230995231061_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e230997231056_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd230996231059_))
                                                           (let ((_e231000231064_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd230996231059_))))
                     (let ((_hd230999231067_
                            (let ()
                              (declare (not safe))
                              (##car _e231000231064_)))
                           (_tl230998231069_
                            (let ()
                              (declare (not safe))
                              (##cdr _e231000231064_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd230999231067_))
                           (let ((_e231003231072_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd230999231067_))))
                             (let ((_hd231002231075_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e231003231072_)))
                                   (_tl231001231077_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e231003231072_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl231001231077_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl230998231069_))
                                       (let ((_e231006231080_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl230998231069_))))
                                         (let ((_hd231005231083_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e231006231080_)))
                                               (_tl231004231085_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e231006231080_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd231005231083_))
                                               (let ((_e231009231088_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd231005231083_))))
                                                 (let ((_hd231008231091_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e231009231088_)))
                                                       (_tl231007231093_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e231009231088_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl231007231093_))
                                                       (let ((_e231012231096_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl231007231093_))))
                 (let ((_hd231011231099_
                        (let () (declare (not safe)) (##car _e231012231096_)))
                       (_tl231010231101_
                        (let () (declare (not safe)) (##cdr _e231012231096_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _hd231011231099_))
                       (let ((_e231015231104_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _hd231011231099_))))
                         (let ((_hd231014231107_
                                (let ()
                                  (declare (not safe))
                                  (##car _e231015231104_)))
                               (_tl231013231109_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e231015231104_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd231014231107_))
                               (let ((_e231018231112_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd231014231107_))))
                                 (let ((_hd231017231115_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e231018231112_)))
                                       (_tl231016231117_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e231018231112_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd231017231115_))
                                       (let ((_e231021231120_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd231017231115_))))
                                         (let ((_hd231020231123_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e231021231120_)))
                                               (_tl231019231125_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e231021231120_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl231019231125_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl231016231117_))
                                                   (let ((_e231024231128_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl231016231117_))))
                                                     (let ((_hd231023231131_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e231024231128_)))
                                                           (_tl231022231133_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e231024231128_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl231022231133_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-null? _tl231013231109_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl231010231101_))
                           (let ((_e231027231136_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl231010231101_))))
                             (let ((_hd231026231139_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e231027231136_)))
                                   (_tl231025231141_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e231027231136_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl231025231141_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl231004231085_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl230995231061_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl230992231053_))
                                               (let ((_e231030231144_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl230992231053_))))
                                                 (let ((_hd231029231147_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e231030231144_)))
                                                       (_tl231028231149_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e231030231144_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl231028231149_))
                                                       ((lambda (_L231152_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L231153_
                         _L231154_
                         _L231155_
                         _L231156_)
                  (let* ((_get-kws-id231196_
                          (let ((__tmp243850
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L230966_)))
                                (__tmp243848
                                 (let ((__tmp243849
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L231156_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name230818_
                                    __tmp243849
                                    '"@"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp243850 '"__" __tmp243848)))
                         (_get-kws-id231198_
                          (let ((__tmp243851
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx230814_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _get-kws-id231196_
                             __tmp243851)))
                         (_main-id231200_
                          (let ((__tmp243854
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L230966_)))
                                (__tmp243852
                                 (let ((__tmp243853
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L231155_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name230818_
                                    __tmp243853
                                    '"%"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp243854 '"__" __tmp243852)))
                         (_main-id231202_
                          (let ((__tmp243855
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx230814_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _main-id231200_
                             __tmp243855)))
                         (_g243856_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _get-kws-id231198_)))
                         (_g243857_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _main-id231202_)))
                         (_new-kw-dispatch231206_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L231152_
                             _L231156_
                             _get-kws-id231198_)))
                         (_new-get-kws231208_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L231153_
                             _L231155_
                             _main-id231202_))))
                    (let ((__tmp243860
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L230966_)))
                          (__tmp243859
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _get-kws-id231198_)))
                          (__tmp243858
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _main-id231202_))))
                      (declare (not safe))
                      (gxc#verbose
                       '"lift kw-lambda dispatch "
                       __tmp243860
                       '" => "
                       __tmp243859
                       '" => "
                       __tmp243858))
                    (let ((__tmp243861
                           (let ((__tmp243862
                                  (let ((__tmp243875
                                         (let ((__tmp243876
                                                (let ((__tmp243877
                                                       (let ((__tmp243878
                                                              (let ((__tmp243880
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _main-id231202_ '())))
                            (__tmp243879
                             (let ()
                               (declare (not safe))
                               (cons _L231154_ '()))))
                        (declare (not safe))
                        (cons __tmp243880 __tmp243879))))
                 (declare (not safe))
                 (cons '%#define-values __tmp243878))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp243877
                                                   _stx230814_))))
                                           (declare (not safe))
                                           (gxc#lift-top-lambda-define-values%
                                            __tmp243876)))
                                        (__tmp243863
                                         (let ((__tmp243870
                                                (let ((__tmp243871
                                                       (let ((__tmp243872
                                                              (let ((__tmp243874
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _get-kws-id231198_ '())))
                            (__tmp243873
                             (let ()
                               (declare (not safe))
                               (cons _new-get-kws231208_ '()))))
                        (declare (not safe))
                        (cons __tmp243874 __tmp243873))))
                 (declare (not safe))
                 (cons '%#define-values __tmp243872))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp243871
                                                   _stx230814_)))
                                               (__tmp243864
                                                (let ((__tmp243865
                                                       (let ((__tmp243866
                                                              (let ((__tmp243867
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp243869
                                    (let ()
                                      (declare (not safe))
                                      (cons _L230966_ '())))
                                   (__tmp243868
                                    (let ()
                                      (declare (not safe))
                                      (cons _new-kw-dispatch231206_ '()))))
                               (declare (not safe))
                               (cons __tmp243869 __tmp243868))))
                        (declare (not safe))
                        (cons '%#define-values __tmp243867))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp243866 _stx230814_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp243865 '()))))
                                           (declare (not safe))
                                           (cons __tmp243870 __tmp243864))))
                                    (declare (not safe))
                                    (cons __tmp243875 __tmp243863))))
                             (declare (not safe))
                             (cons '%#begin __tmp243862))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp243861 _stx230814_))))
                _hd231029231147_
                _hd231026231139_
                _hd231023231131_
                _hd231020231123_
                _hd231002231075_)
               (let ()
                 (declare (not safe))
                 (_g230982231035_ _g230983231038_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g230982231035_
                                                  _g230983231038_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g230982231035_
                                              _g230983231038_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g230982231035_ _g230983231038_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g230982231035_ _g230983231038_)))))
                           (let ()
                             (declare (not safe))
                             (_g230982231035_ _g230983231038_)))
                       (let ()
                         (declare (not safe))
                         (_g230982231035_ _g230983231038_)))
                   (let ()
                     (declare (not safe))
                     (_g230982231035_ _g230983231038_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g230982231035_
                                                      _g230983231038_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g230982231035_
                                                  _g230983231038_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g230982231035_ _g230983231038_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g230982231035_ _g230983231038_)))))
                       (let ()
                         (declare (not safe))
                         (_g230982231035_ _g230983231038_)))))
               (let ()
                 (declare (not safe))
                 (_g230982231035_ _g230983231038_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g230982231035_
                                                  _g230983231038_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g230982231035_ _g230983231038_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g230982231035_ _g230983231038_)))))
                           (let ()
                             (declare (not safe))
                             (_g230982231035_ _g230983231038_)))))
                   (let ()
                     (declare (not safe))
                     (_g230982231035_ _g230983231038_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g230982231035_
                                                      _g230983231038_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g230982231035_
                                              _g230983231038_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g230982231035_ _g230983231038_))))))
                       (declare (not safe))
                       (_g230981231211_ _L230965_))))
                  (___kont243163243164_
                   (lambda (_L230911_ _L230912_)
                     (let ((__tmp243881
                            (let ((__tmp243882
                                   (let ((__tmp243883
                                          (let ((__tmp243884
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L230911_))))
                                            (declare (not safe))
                                            (cons __tmp243884 '()))))
                                     (declare (not safe))
                                     (cons _L230912_ __tmp243883))))
                              (declare (not safe))
                              (cons '%#define-values __tmp243882))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp243881 _stx230814_)))))
              (let* ((___match243248243249_
                      (lambda (_e230857230933_
                               _hd230856230936_
                               _tl230855230938_
                               _e230860230941_
                               _hd230859230944_
                               _tl230858230946_
                               _e230863230949_
                               _hd230862230952_
                               _tl230861230954_
                               _e230866230957_
                               _hd230865230960_
                               _tl230864230962_)
                        (let ((_L230965_ _hd230865230960_)
                              (_L230966_ _hd230862230952_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L230966_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L230965_)))
                              (___kont243161243162_ _L230965_ _L230966_)
                              (___kont243163243164_
                               _hd230865230960_
                               _hd230859230944_)))))
                     (___match243220243221_
                      (lambda (_e230843231219_
                               _hd230842231222_
                               _tl230841231224_
                               _e230846231227_
                               _hd230845231230_
                               _tl230844231232_
                               _e230849231235_
                               _hd230848231238_
                               _tl230847231240_
                               _e230852231243_
                               _hd230851231246_
                               _tl230850231248_)
                        (let ((_L231251_ _hd230851231246_)
                              (_L231252_ _hd230848231238_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L231252_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr? _L231251_)))
                              (___kont243159243160_ _L231251_ _L231252_)
                              (___match243248243249_
                               _e230843231219_
                               _hd230842231222_
                               _tl230841231224_
                               _e230846231227_
                               _hd230845231230_
                               _tl230844231232_
                               _e230849231235_
                               _hd230848231238_
                               _tl230847231240_
                               _e230852231243_
                               _hd230851231246_
                               _tl230850231248_)))))
                     (___match243192243193_
                      (lambda (_e230829231401_
                               _hd230828231404_
                               _tl230827231406_
                               _e230832231409_
                               _hd230831231412_
                               _tl230830231414_
                               _e230835231417_
                               _hd230834231420_
                               _tl230833231422_
                               _e230838231425_
                               _hd230837231428_
                               _tl230836231430_)
                        (let ((_L231433_ _hd230837231428_)
                              (_L231434_ _hd230834231420_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L231434_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#case-lambda-expr? _L231433_)))
                              (___kont243157243158_ _L231433_ _L231434_)
                              (___match243220243221_
                               _e230829231401_
                               _hd230828231404_
                               _tl230827231406_
                               _e230832231409_
                               _hd230831231412_
                               _tl230830231414_
                               _e230835231417_
                               _hd230834231420_
                               _tl230833231422_
                               _e230838231425_
                               _hd230837231428_
                               _tl230836231430_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx243155243156_))
                    (let ((_e230829231401_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx243155243156_))))
                      (let ((_tl230827231406_
                             (let ()
                               (declare (not safe))
                               (##cdr _e230829231401_)))
                            (_hd230828231404_
                             (let ()
                               (declare (not safe))
                               (##car _e230829231401_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl230827231406_))
                            (let ((_e230832231409_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl230827231406_))))
                              (let ((_tl230830231414_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e230832231409_)))
                                    (_hd230831231412_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e230832231409_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd230831231412_))
                                    (let ((_e230835231417_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd230831231412_))))
                                      (let ((_tl230833231422_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e230835231417_)))
                                            (_hd230834231420_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e230835231417_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl230833231422_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl230830231414_))
                                                (let ((_e230838231425_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl230830231414_))))
                                                  (let ((_tl230836231430_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e230838231425_)))
                                                        (_hd230837231428_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e230838231425_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl230836231430_))
                                                        (___match243192243193_
                                                         _e230829231401_
                                                         _hd230828231404_
                                                         _tl230827231406_
                                                         _e230832231409_
                                                         _hd230831231412_
                                                         _tl230830231414_
                                                         _e230835231417_
                                                         _hd230834231420_
                                                         _tl230833231422_
                                                         _e230838231425_
                                                         _hd230837231428_
                                                         _tl230836231430_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g230823230882_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g230823230882_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl230830231414_))
                                                (let ((_e230877230903_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl230830231414_))))
                                                  (let ((_tl230875230908_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e230877230903_)))
                                                        (_hd230876230906_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e230877230903_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl230875230908_))
                                                        (___kont243163243164_
                                                         _hd230876230906_
                                                         _hd230831231412_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g230823230882_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g230823230882_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl230830231414_))
                                        (let ((_e230877230903_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl230830231414_))))
                                          (let ((_tl230875230908_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e230877230903_)))
                                                (_hd230876230906_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e230877230903_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl230875230908_))
                                                (___kont243163243164_
                                                 _hd230876230906_
                                                 _hd230831231412_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g230823230882_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g230823230882_))))))
                            (let () (declare (not safe)) (_g230823230882_)))))
                    (let () (declare (not safe)) (_g230823230882_)))))))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_stx229746_)
        (letrec* ((_bind-e__241551241552_
                   (lambda (_id230798_ _expr230799_ _compile?230800_)
                     (let ((__tmp243887
                            (let ()
                              (declare (not safe))
                              (cons _id230798_ '())))
                           (__tmp243885
                            (let ((__tmp243886
                                   (if _compile?230800_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr230799_))
                                       _expr230799_)))
                              (declare (not safe))
                              (cons __tmp243886 '()))))
                       (declare (not safe))
                       (cons __tmp243887 __tmp243885))))
                  (_bind-e__0__241553241554_
                   (lambda (_id230805_ _expr230806_)
                     (let ((_compile?230808_ '#t))
                       (declare (not safe))
                       (_bind-e__241551241552_
                        _id230805_
                        _expr230806_
                        _compile?230808_))))
                  (_bind-e229748_
                   (lambda _g243889_
                     (let ((_g243888_
                            (let ()
                              (declare (not safe))
                              (##length _g243889_))))
                       (cond ((let () (declare (not safe)) (##fx= _g243888_ 2))
                              (apply (lambda (_id230805_ _expr230806_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__241553241554_
                                          _id230805_
                                          _expr230806_)))
                                     _g243889_))
                             ((let () (declare (not safe)) (##fx= _g243888_ 3))
                              (apply (lambda (_id230810_
                                              _expr230811_
                                              _compile?230812_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__241551241552_
                                          _id230810_
                                          _expr230811_
                                          _compile?230812_)))
                                     _g243889_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g243889_))))))
                  (_compile-bindings229749_
                   (lambda (_bindings230382_)
                     (let _lp230384_ ((_rest230386_ _bindings230382_)
                                      (_lift1230387_ '())
                                      (_lift2230388_ '())
                                      (_bind230389_ '()))
                       (let* ((_rest230390230398_ _rest230386_)
                              (_else230392230406_
                               (lambda ()
                                 (values (reverse _lift1230387_)
                                         (reverse _lift2230388_)
                                         (reverse _bind230389_))))
                              (_K230394230785_
                               (lambda (_rest230409_ _hd230410_)
                                 (let* ((___stx243291243292_ _hd230410_)
                                        (_g230414230450_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx243291243292_)))))
                                   (let ((___kont243293243294_
                                          (lambda (_L230692_ _L230693_)
                                            (let* ((___stx243271243272_
                                                    _L230692_)
                                                   (_g230708230722_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx243271243272_)))))
                                              (let ((___kont243273243274_
                                                     (lambda (_L230770_)
                                                       (let ((__tmp243890
                                                              (let ((__tmp243891
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__241551241552_
                                _L230693_
                                _L230692_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp243891 _bind230389_))))
                 (declare (not safe))
                 (_lp230384_
                  _rest230409_
                  _lift1230387_
                  _lift2230388_
                  __tmp243890))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont243275243276_
                                                     (lambda (_L230735_)
                                                       (let ((_g243892_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx229746_
                         _L230693_
                         _L230735_
                         '#t))))
                 (begin
                   (let ((_g243893_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g243892_)
                                (##vector-length _g243892_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g243893_ 3)))
                         (error "Context expects 3 values" _g243893_)))
                   (let ((_ids230745_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g243892_ 0)))
                         (_impls230746_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g243892_ 1)))
                         (_clauses230747_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g243892_ 2))))
                     (let* ((_g243894_
                             (for-each gx#core-bind-runtime! _ids230745_))
                            (_xbind230750_
                             (map _bind-e229748_ _ids230745_ _impls230746_))
                            (_expr*230752_
                             (let ((__tmp243896
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses230747_)))
                                   (__tmp243895
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp243896
                                __tmp243895)))
                            (_bind*230754_
                             (let ()
                               (declare (not safe))
                               (_bind-e__241551241552_
                                _L230693_
                                _expr*230752_
                                '#f))))
                       (let ((__tmp243898
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L230693_)))
                             (__tmp243897
                              (map gxc#identifier-symbol _ids230745_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp243898
                          '" => "
                          __tmp243897))
                       (let ((__tmp243900
                              (let ()
                                (declare (not safe))
                                (foldl1 cons _lift2230388_ _xbind230750_)))
                             (__tmp243899
                              (let ()
                                (declare (not safe))
                                (cons _bind*230754_ _bind230389_))))
                         (declare (not safe))
                         (_lp230384_
                          _rest230409_
                          _lift1230387_
                          __tmp243900
                          __tmp243899)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match243282243283_
                                                       (lambda (_e230713230762_
                                                                _hd230712230765_
                                                                _tl230711230767_)
                                                         (let ((_L230770_
                                                                _tl230711230767_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L230770_))
                       (___kont243273243274_ _L230770_)
                       (___kont243275243276_ _tl230711230767_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx243271243272_))
                                                      (let ((_e230713230762_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx243271243272_))))
                (let ((_tl230711230767_
                       (let () (declare (not safe)) (##cdr _e230713230762_)))
                      (_hd230712230765_
                       (let () (declare (not safe)) (##car _e230713230762_))))
                  (___match243282243283_
                   _e230713230762_
                   _hd230712230765_
                   _tl230711230767_)))
              (let () (declare (not safe)) (_g230708230722_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont243295243296_
                                          (lambda (_L230520_ _L230521_)
                                            (let* ((_g230535230565_
                                                    (lambda (_g230536230562_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g230536230562_))))
                                                   (_g230534230660_
                                                    (lambda (_g230536230568_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g230536230568_))
                                                          (let ((_e230542230570_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g230536230568_))))
                    (let ((_hd230541230573_
                           (let ()
                             (declare (not safe))
                             (##car _e230542230570_)))
                          (_tl230540230575_
                           (let ()
                             (declare (not safe))
                             (##cdr _e230542230570_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl230540230575_))
                          (let ((_e230545230578_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl230540230575_))))
                            (let ((_hd230544230581_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e230545230578_)))
                                  (_tl230543230583_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e230545230578_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd230544230581_))
                                  (let ((_e230548230586_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd230544230581_))))
                                    (let ((_hd230547230589_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e230548230586_)))
                                          (_tl230546230591_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e230548230586_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd230547230589_))
                                          (let ((_e230551230594_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd230547230589_))))
                                            (let ((_hd230550230597_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e230551230594_)))
                                                  (_tl230549230599_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e230551230594_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd230550230597_))
                                                  (let ((_e230554230602_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd230550230597_))))
                                                    (let ((_hd230553230605_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e230554230602_)))
                                                          (_tl230552230607_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e230554230602_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl230552230607_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl230549230599_))
                      (let ((_e230557230610_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl230549230599_))))
                        (let ((_hd230556230613_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230557230610_)))
                              (_tl230555230615_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230557230610_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl230555230615_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl230546230591_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl230543230583_))
                                      (let ((_e230560230618_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl230543230583_))))
                                        (let ((_hd230559230621_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230560230618_)))
                                              (_tl230558230623_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230560230618_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl230558230623_))
                                              ((lambda (_L230626_
                                                        _L230627_
                                                        _L230628_)
                                                 (let* ((_lambda-id230652_
                                                         (let ((__tmp243902
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L230521_)))
                       (__tmp243901 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp243902 __tmp243901)))
                (_lambda-id230654_
                 (let ((__tmp243903
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx229746_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id230652_ __tmp243903)))
                (_g243904_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id230654_)))
                (_new-case-lambda-expr230657_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L230626_
                    _L230628_
                    _lambda-id230654_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp243906
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L230521_)))
                                                         (__tmp243905
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id230654_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp243906
                                                      '" => "
                                                      __tmp243905))
                                                   (let ((__tmp243909
                                                          (let ((__tmp243910
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__241551241552_
                            _L230521_
                            _new-case-lambda-expr230657_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp243910 _rest230409_)))
                 (__tmp243907
                  (let ((__tmp243908
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__241553241554_
                            _lambda-id230654_
                            _L230627_))))
                    (declare (not safe))
                    (cons __tmp243908 _lift1230387_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp230384_
                                                      __tmp243909
                                                      __tmp243907
                                                      _lift2230388_
                                                      _bind230389_))))
                                               _hd230559230621_
                                               _hd230556230613_
                                               _hd230553230605_)
                                              (let ()
                                                (declare (not safe))
                                                (_g230535230565_
                                                 _g230536230568_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g230535230565_ _g230536230568_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g230535230565_ _g230536230568_)))
                              (let ()
                                (declare (not safe))
                                (_g230535230565_ _g230536230568_)))))
                      (let ()
                        (declare (not safe))
                        (_g230535230565_ _g230536230568_)))
                  (let ()
                    (declare (not safe))
                    (_g230535230565_ _g230536230568_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g230535230565_
                                                     _g230536230568_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g230535230565_
                                             _g230536230568_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g230535230565_ _g230536230568_)))))
                          (let ()
                            (declare (not safe))
                            (_g230535230565_ _g230536230568_)))))
                  (let ()
                    (declare (not safe))
                    (_g230535230565_ _g230536230568_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g230534230660_ _L230520_))))
                                         (___kont243297243298_
                                          (lambda (_L230471_ _L230472_)
                                            (let ((__tmp243911
                                                   (let ((__tmp243912
                                                          (let ((__tmp243913
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp243914
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L230471_))))
                           (declare (not safe))
                           (cons __tmp243914 '()))))
                    (declare (not safe))
                    (cons _L230472_ __tmp243913))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp243912
                                                           _bind230389_))))
                                              (declare (not safe))
                                              (_lp230384_
                                               _rest230409_
                                               _lift1230387_
                                               _lift2230388_
                                               __tmp243911)))))
                                     (let* ((___match243342243343_
                                             (lambda (_e230431230496_
                                                      _hd230430230499_
                                                      _tl230429230501_
                                                      _e230434230504_
                                                      _hd230433230507_
                                                      _tl230432230509_
                                                      _e230437230512_
                                                      _hd230436230515_
                                                      _tl230435230517_)
                                               (let ((_L230520_
                                                      _hd230436230515_)
                                                     (_L230521_
                                                      _hd230433230507_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L230521_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L230520_)))
                                                     (___kont243295243296_
                                                      _L230520_
                                                      _L230521_)
                                                     (___kont243297243298_
                                                      _hd230436230515_
                                                      _hd230430230499_)))))
                                            (___match243320243321_
                                             (lambda (_e230420230668_
                                                      _hd230419230671_
                                                      _tl230418230673_
                                                      _e230423230676_
                                                      _hd230422230679_
                                                      _tl230421230681_
                                                      _e230426230684_
                                                      _hd230425230687_
                                                      _tl230424230689_)
                                               (let ((_L230692_
                                                      _hd230425230687_)
                                                     (_L230693_
                                                      _hd230422230679_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L230693_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L230692_)))
                                                     (___kont243293243294_
                                                      _L230692_
                                                      _L230693_)
                                                     (___match243342243343_
                                                      _e230420230668_
                                                      _hd230419230671_
                                                      _tl230418230673_
                                                      _e230423230676_
                                                      _hd230422230679_
                                                      _tl230421230681_
                                                      _e230426230684_
                                                      _hd230425230687_
                                                      _tl230424230689_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx243291243292_))
                                           (let ((_e230420230668_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx243291243292_))))
                                             (let ((_tl230418230673_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e230420230668_)))
                                                   (_hd230419230671_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e230420230668_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd230419230671_))
                                                   (let ((_e230423230676_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd230419230671_))))
                                                     (let ((_tl230421230681_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e230423230676_)))
                                                           (_hd230422230679_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e230423230676_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl230421230681_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl230418230673_))
                       (let ((_e230426230684_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl230418230673_))))
                         (let ((_tl230424230689_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e230426230684_)))
                               (_hd230425230687_
                                (let ()
                                  (declare (not safe))
                                  (##car _e230426230684_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl230424230689_))
                               (___match243320243321_
                                _e230420230668_
                                _hd230419230671_
                                _tl230418230673_
                                _e230423230676_
                                _hd230422230679_
                                _tl230421230681_
                                _e230426230684_
                                _hd230425230687_
                                _tl230424230689_)
                               (let ()
                                 (declare (not safe))
                                 (_g230414230450_)))))
                       (let () (declare (not safe)) (_g230414230450_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl230418230673_))
                       (let ((_e230445230463_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl230418230673_))))
                         (let ((_tl230443230468_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e230445230463_)))
                               (_hd230444230466_
                                (let ()
                                  (declare (not safe))
                                  (##car _e230445230463_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl230443230468_))
                               (___kont243297243298_
                                _hd230444230466_
                                _hd230419230671_)
                               (let ()
                                 (declare (not safe))
                                 (_g230414230450_)))))
                       (let () (declare (not safe)) (_g230414230450_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl230418230673_))
                                                       (let ((_e230445230463_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl230418230673_))))
                 (let ((_tl230443230468_
                        (let () (declare (not safe)) (##cdr _e230445230463_)))
                       (_hd230444230466_
                        (let () (declare (not safe)) (##car _e230445230463_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl230443230468_))
                       (___kont243297243298_ _hd230444230466_ _hd230419230671_)
                       (let () (declare (not safe)) (_g230414230450_)))))
               (let () (declare (not safe)) (_g230414230450_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g230414230450_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest230390230398_))
                             (let ((_hd230395230788_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest230390230398_)))
                                   (_tl230396230790_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest230390230398_))))
                               (let* ((_hd230793_ _hd230395230788_)
                                      (_rest230795_ _tl230396230790_))
                                 (declare (not safe))
                                 (_K230394230785_ _rest230795_ _hd230793_)))
                             (let ()
                               (declare (not safe))
                               (_else230392230406_)))))))
                  (_lift-kw-lambda?229750_
                   (lambda (_bind230306_)
                     (let* ((___stx243359243360_ _bind230306_)
                            (_g230309230326_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx243359243360_)))))
                       (let ((___kont243361243362_
                              (lambda (_L230362_ _L230363_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _L230363_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#kw-lambda-expr? _L230362_))
                                    '#f)))
                             (___kont243363243364_ (lambda () '#f)))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? ___stx243359243360_))
                             (let ((_e230315230338_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e ___stx243359243360_))))
                               (let ((_tl230313230343_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e230315230338_)))
                                     (_hd230314230341_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e230315230338_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd230314230341_))
                                     (let ((_e230318230346_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd230314230341_))))
                                       (let ((_tl230316230351_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e230318230346_)))
                                             (_hd230317230349_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e230318230346_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl230316230351_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl230313230343_))
                                                 (let ((_e230321230354_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl230313230343_))))
                                                   (let ((_tl230319230359_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e230321230354_)))
                                                         (_hd230320230357_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e230321230354_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl230319230359_))
                                                         (___kont243361243362_
                                                          _hd230320230357_
                                                          _hd230317230349_)
                                                         (___kont243363243364_))))
                                                 (___kont243363243364_))
                                             (___kont243363243364_))))
                                     (___kont243363243364_))))
                             (___kont243363243364_))))))
                  (_lift-kw-lambda-bindings229751_
                   (lambda (_bindings229918_)
                     (let _lp229920_ ((_rest229922_ _bindings229918_)
                                      (_lift1229923_ '())
                                      (_lift2229924_ '())
                                      (_bind229925_ '()))
                       (let* ((_rest229926229934_ _rest229922_)
                              (_else229928229942_
                               (lambda ()
                                 (values (reverse _lift1229923_)
                                         (reverse _lift2229924_)
                                         (reverse _bind229925_))))
                              (_K229930230294_
                               (lambda (_rest229945_ _hd229946_)
                                 (let* ((___stx243389243390_ _hd229946_)
                                        (_g229949229974_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx243389243390_)))))
                                   (let ((___kont243391243392_
                                          (lambda (_L230044_ _L230045_)
                                            (let* ((_g230059230112_
                                                    (lambda (_g230060230109_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g230060230109_))))
                                                   (_g230058230288_
                                                    (lambda (_g230060230115_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g230060230115_))
                                                          (let ((_e230068230117_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g230060230115_))))
                    (let ((_hd230067230120_
                           (let ()
                             (declare (not safe))
                             (##car _e230068230117_)))
                          (_tl230066230122_
                           (let ()
                             (declare (not safe))
                             (##cdr _e230068230117_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl230066230122_))
                          (let ((_e230071230125_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl230066230122_))))
                            (let ((_hd230070230128_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e230071230125_)))
                                  (_tl230069230130_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e230071230125_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd230070230128_))
                                  (let ((_e230074230133_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd230070230128_))))
                                    (let ((_hd230073230136_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e230074230133_)))
                                          (_tl230072230138_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e230074230133_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd230073230136_))
                                          (let ((_e230077230141_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd230073230136_))))
                                            (let ((_hd230076230144_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e230077230141_)))
                                                  (_tl230075230146_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e230077230141_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd230076230144_))
                                                  (let ((_e230080230149_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd230076230144_))))
                                                    (let ((_hd230079230152_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e230080230149_)))
                                                          (_tl230078230154_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e230080230149_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl230078230154_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl230075230146_))
                      (let ((_e230083230157_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl230075230146_))))
                        (let ((_hd230082230160_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230083230157_)))
                              (_tl230081230162_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230083230157_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd230082230160_))
                              (let ((_e230086230165_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd230082230160_))))
                                (let ((_hd230085230168_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230086230165_)))
                                      (_tl230084230170_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230086230165_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl230084230170_))
                                      (let ((_e230089230173_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl230084230170_))))
                                        (let ((_hd230088230176_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230089230173_)))
                                              (_tl230087230178_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230089230173_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd230088230176_))
                                              (let ((_e230092230181_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd230088230176_))))
                                                (let ((_hd230091230184_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e230092230181_)))
                                                      (_tl230090230186_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e230092230181_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd230091230184_))
                                                      (let ((_e230095230189_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd230091230184_))))
                (let ((_hd230094230192_
                       (let () (declare (not safe)) (##car _e230095230189_)))
                      (_tl230093230194_
                       (let () (declare (not safe)) (##cdr _e230095230189_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd230094230192_))
                      (let ((_e230098230197_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd230094230192_))))
                        (let ((_hd230097230200_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230098230197_)))
                              (_tl230096230202_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230098230197_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl230096230202_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl230093230194_))
                                  (let ((_e230101230205_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl230093230194_))))
                                    (let ((_hd230100230208_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e230101230205_)))
                                          (_tl230099230210_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e230101230205_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl230099230210_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl230090230186_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl230087230178_))
                                                  (let ((_e230104230213_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl230087230178_))))
                                                    (let ((_hd230103230216_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e230104230213_)))
                                                          (_tl230102230218_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e230104230213_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl230102230218_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl230081230162_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl230072230138_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230069230130_))
                              (let ((_e230107230221_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230069230130_))))
                                (let ((_hd230106230224_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230107230221_)))
                                      (_tl230105230226_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230107230221_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl230105230226_))
                                      ((lambda (_L230229_
                                                _L230230_
                                                _L230231_
                                                _L230232_
                                                _L230233_)
                                         (let* ((_get-kws-id230273_
                                                 (let ((__tmp243916
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L230045_)))
                                                       (__tmp243915
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp243916
                                                    __tmp243915)))
                                                (_get-kws-id230275_
                                                 (let ((__tmp243917
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx229746_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id230273_
                                                    __tmp243917)))
                                                (_main-id230277_
                                                 (let ((__tmp243919
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L230045_)))
                                                       (__tmp243918
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp243919
                                                    __tmp243918)))
                                                (_main-id230279_
                                                 (let ((__tmp243920
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx229746_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id230277_
                                                    __tmp243920)))
                                                (_g243921_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id230275_)))
                                                (_g243922_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id230279_)))
                                                (_new-kw-dispatch230283_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L230229_
                                                    _L230233_
                                                    _get-kws-id230275_)))
                                                (_new-get-kws230285_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L230230_
                                                    _L230232_
                                                    _main-id230279_))))
                                           (let ((__tmp243925
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L230045_)))
                                                 (__tmp243924
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id230275_)))
                                                 (__tmp243923
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id230279_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp243925
                                              '" => "
                                              __tmp243924
                                              '" => "
                                              __tmp243923))
                                           (let ((__tmp243930
                                                  (let ((__tmp243931
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__241551241552_
                                                            _main-id230279_
                                                            _L230231_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp243931
                                                          _lift1229923_)))
                                                 (__tmp243928
                                                  (let ((__tmp243929
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__241551241552_
                                                            _get-kws-id230275_
                                                            _new-get-kws230285_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp243929
                                                          _lift2229924_)))
                                                 (__tmp243926
                                                  (let ((__tmp243927
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__241551241552_
                                                            _L230045_
                                                            _new-kw-dispatch230283_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp243927
                                                          _bind229925_))))
                                             (declare (not safe))
                                             (_lp229920_
                                              _rest229945_
                                              __tmp243930
                                              __tmp243928
                                              __tmp243926))))
                                       _hd230106230224_
                                       _hd230103230216_
                                       _hd230100230208_
                                       _hd230097230200_
                                       _hd230079230152_)
                                      (let ()
                                        (declare (not safe))
                                        (_g230059230112_ _g230060230115_)))))
                              (let ()
                                (declare (not safe))
                                (_g230059230112_ _g230060230115_)))
                          (let ()
                            (declare (not safe))
                            (_g230059230112_ _g230060230115_)))
                      (let ()
                        (declare (not safe))
                        (_g230059230112_ _g230060230115_)))
                  (let ()
                    (declare (not safe))
                    (_g230059230112_ _g230060230115_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g230059230112_
                                                     _g230060230115_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g230059230112_
                                                 _g230060230115_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g230059230112_
                                             _g230060230115_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g230059230112_ _g230060230115_)))
                              (let ()
                                (declare (not safe))
                                (_g230059230112_ _g230060230115_)))))
                      (let ()
                        (declare (not safe))
                        (_g230059230112_ _g230060230115_)))))
              (let ()
                (declare (not safe))
                (_g230059230112_ _g230060230115_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g230059230112_
                                                 _g230060230115_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g230059230112_ _g230060230115_)))))
                              (let ()
                                (declare (not safe))
                                (_g230059230112_ _g230060230115_)))))
                      (let ()
                        (declare (not safe))
                        (_g230059230112_ _g230060230115_)))
                  (let ()
                    (declare (not safe))
                    (_g230059230112_ _g230060230115_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g230059230112_
                                                     _g230060230115_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g230059230112_
                                             _g230060230115_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g230059230112_ _g230060230115_)))))
                          (let ()
                            (declare (not safe))
                            (_g230059230112_ _g230060230115_)))))
                  (let ()
                    (declare (not safe))
                    (_g230059230112_ _g230060230115_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g230058230288_ _L230044_))))
                                         (___kont243393243394_
                                          (lambda (_L229995_ _L229996_)
                                            (let ((__tmp243932
                                                   (let ((__tmp243933
                                                          (let ((__tmp243934
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L229995_ '()))))
                    (declare (not safe))
                    (cons _L229996_ __tmp243934))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp243933
                                                           _bind229925_))))
                                              (declare (not safe))
                                              (_lp229920_
                                               _rest229945_
                                               _lift1229923_
                                               _lift2229924_
                                               __tmp243932)))))
                                     (let ((___match243416243417_
                                            (lambda (_e229955230020_
                                                     _hd229954230023_
                                                     _tl229953230025_
                                                     _e229958230028_
                                                     _hd229957230031_
                                                     _tl229956230033_
                                                     _e229961230036_
                                                     _hd229960230039_
                                                     _tl229959230041_)
                                              (let ((_L230044_
                                                     _hd229960230039_)
                                                    (_L230045_
                                                     _hd229957230031_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _L230045_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#kw-lambda-expr?
                                                            _L230044_)))
                                                    (___kont243391243392_
                                                     _L230044_
                                                     _L230045_)
                                                    (___kont243393243394_
                                                     _hd229960230039_
                                                     _hd229954230023_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx243389243390_))
                                           (let ((_e229955230020_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx243389243390_))))
                                             (let ((_tl229953230025_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e229955230020_)))
                                                   (_hd229954230023_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e229955230020_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd229954230023_))
                                                   (let ((_e229958230028_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd229954230023_))))
                                                     (let ((_tl229956230033_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e229958230028_)))
                                                           (_hd229957230031_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e229958230028_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl229956230033_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl229953230025_))
                       (let ((_e229961230036_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl229953230025_))))
                         (let ((_tl229959230041_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e229961230036_)))
                               (_hd229960230039_
                                (let ()
                                  (declare (not safe))
                                  (##car _e229961230036_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl229959230041_))
                               (___match243416243417_
                                _e229955230020_
                                _hd229954230023_
                                _tl229953230025_
                                _e229958230028_
                                _hd229957230031_
                                _tl229956230033_
                                _e229961230036_
                                _hd229960230039_
                                _tl229959230041_)
                               (let ()
                                 (declare (not safe))
                                 (_g229949229974_)))))
                       (let () (declare (not safe)) (_g229949229974_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl229953230025_))
                       (let ((_e229969229987_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl229953230025_))))
                         (let ((_tl229967229992_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e229969229987_)))
                               (_hd229968229990_
                                (let ()
                                  (declare (not safe))
                                  (##car _e229969229987_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl229967229992_))
                               (___kont243393243394_
                                _hd229968229990_
                                _hd229954230023_)
                               (let ()
                                 (declare (not safe))
                                 (_g229949229974_)))))
                       (let () (declare (not safe)) (_g229949229974_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl229953230025_))
                                                       (let ((_e229969229987_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl229953230025_))))
                 (let ((_tl229967229992_
                        (let () (declare (not safe)) (##cdr _e229969229987_)))
                       (_hd229968229990_
                        (let () (declare (not safe)) (##car _e229969229987_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl229967229992_))
                       (___kont243393243394_ _hd229968229990_ _hd229954230023_)
                       (let () (declare (not safe)) (_g229949229974_)))))
               (let () (declare (not safe)) (_g229949229974_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g229949229974_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest229926229934_))
                             (let ((_hd229931230297_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest229926229934_)))
                                   (_tl229932230299_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest229926229934_))))
                               (let* ((_hd230302_ _hd229931230297_)
                                      (_rest230304_ _tl229932230299_))
                                 (declare (not safe))
                                 (_K229930230294_ _rest230304_ _hd230302_)))
                             (let ()
                               (declare (not safe))
                               (_else229928229942_))))))))
          (let* ((___stx243433243434_ _stx229746_)
                 (_g229754229780_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx243433243434_)))))
            (let ((___kont243435243436_
                   (lambda (_L229840_ _L229841_)
                     (let ((__tmp243936
                            (lambda ()
                              (if (let ((__tmp243963
                                         (let ((__tmp243964
                                                (lambda (_g229869229872_
                                                         _g229870229874_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g229869229872_
                                                          _g229870229874_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp243964
                                                   '()
                                                   _L229841_))))
                                    (declare (not safe))
                                    (ormap1 _lift-kw-lambda?229750_
                                            __tmp243963))
                                  (let ((_g243950_
                                         (let ((__tmp243952
                                                (let ((__tmp243953
                                                       (lambda (_g229876229879_
                                                                _g229877229881_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g229876229879_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g229877229881_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp243953
                                                          '()
                                                          _L229841_))))
                                           (declare (not safe))
                                           (_lift-kw-lambda-bindings229751_
                                            __tmp243952))))
                                    (begin
                                      (let ((_g243951_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g243950_)
                                                   (##vector-length _g243950_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g243951_ 3)))
                                            (error "Context expects 3 values"
                                                   _g243951_)))
                                      (let ((_lift1229884_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g243950_ 0)))
                                            (_lift2229885_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g243950_ 1)))
                                            (_hd229886_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g243950_ 2))))
                                        (let* ((_expr229888_
                                                (let ((__tmp243954
                                                       (let ((__tmp243955
                                                              (let ((__tmp243956
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L229840_ '()))))
                        (declare (not safe))
                        (cons _hd229886_ __tmp243956))))
                 (declare (not safe))
                 (cons '%#let-values __tmp243955))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp243954
                                                   _stx229746_)))
                                               (_expr229890_
                                                (let ((__tmp243957
                                                       (let ((__tmp243958
                                                              (let ((__tmp243959
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr229888_ '()))))
                        (declare (not safe))
                        (cons _lift2229885_ __tmp243959))))
                 (declare (not safe))
                 (cons '%#let-values __tmp243958))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp243957
                                                   _stx229746_)))
                                               (_expr229892_
                                                (let ((__tmp243960
                                                       (let ((__tmp243961
                                                              (let ((__tmp243962
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr229890_ '()))))
                        (declare (not safe))
                        (cons _lift1229884_ __tmp243962))))
                 (declare (not safe))
                 (cons '%#let-values __tmp243961))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp243960
                                                   _stx229746_))))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#lift-top-lambda-let-values%
                                             _expr229892_))))))
                                  (let ((_g243937_
                                         (let ((__tmp243939
                                                (let ((__tmp243940
                                                       (lambda (_g229894229897_
                                                                _g229895229899_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g229894229897_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g229895229899_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp243940
                                                          '()
                                                          _L229841_))))
                                           (declare (not safe))
                                           (_compile-bindings229749_
                                            __tmp243939))))
                                    (begin
                                      (let ((_g243938_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g243937_)
                                                   (##vector-length _g243937_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g243938_ 3)))
                                            (error "Context expects 3 values"
                                                   _g243938_)))
                                      (let ((_lift1229902_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g243937_ 0)))
                                            (_lift2229903_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g243937_ 1)))
                                            (_hd229904_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g243937_ 2))))
                                        (let* ((_body229906_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _L229840_)))
                                               (_expr229908_
                                                (let ((__tmp243941
                                                       (let ((__tmp243942
                                                              (let ((__tmp243943
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _body229906_ '()))))
                        (declare (not safe))
                        (cons _hd229904_ __tmp243943))))
                 (declare (not safe))
                 (cons '%#let-values __tmp243942))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp243941
                                                   _stx229746_)))
                                               (_expr229910_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift2229903_))
                                                    _expr229908_
                                                    (let ((__tmp243944
                                                           (let ((__tmp243945
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp243946
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr229908_ '()))))
                            (declare (not safe))
                            (cons _lift2229903_ __tmp243946))))
                     (declare (not safe))
                     (cons '%#let-values __tmp243945))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp243944 _stx229746_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_expr229912_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift1229902_))
                                                    _expr229910_
                                                    (let ((__tmp243947
                                                           (let ((__tmp243948
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp243949
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr229910_ '()))))
                            (declare (not safe))
                            (cons _lift1229902_ __tmp243949))))
                     (declare (not safe))
                     (cons '%#let-values __tmp243948))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp243947 _stx229746_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _expr229912_)))))))
                           (__tmp243935
                            (let ((__obj243639
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj243639)
                              __obj243639)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp243936
                        gx#current-expander-context
                        __tmp243935))))
                  (___kont243439243440_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx229746_)))))
              (let ((___match243460243461_
                     (lambda (_e229760229792_
                              _hd229759229795_
                              _tl229758229797_
                              _e229763229800_
                              _hd229762229803_
                              _tl229761229805_
                              ___splice243437243438_
                              _target229764229808_
                              _tl229766229810_)
                       (letrec ((_loop229767229813_
                                 (lambda (_hd229765229816_ _bind229771229818_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd229765229816_))
                                       (let ((_e229768229821_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd229765229816_))))
                                         (let ((_lp-tl229770229826_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e229768229821_)))
                                               (_lp-hd229769229824_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e229768229821_))))
                                           (let ((__tmp243967
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd229769229824_
                                                          _bind229771229818_))))
                                             (declare (not safe))
                                             (_loop229767229813_
                                              _lp-tl229770229826_
                                              __tmp243967))))
                                       (let ((_bind229772229829_
                                              (reverse _bind229771229818_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl229761229805_))
                                             (let ((_e229775229832_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl229761229805_))))
                                               (let ((_tl229773229837_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e229775229832_)))
                                                     (_hd229774229835_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e229775229832_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl229773229837_))
                                                     (let ((_L229840_
                                                            _hd229774229835_)
                                                           (_L229841_
                                                            _bind229772229829_))
                                                       (if (let ((__tmp243965
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp243966
                                 (lambda (_g229861229864_ _g229862229866_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g229861229864_ _g229862229866_)))))
                            (declare (not safe))
                            (foldr1 __tmp243966 '() _L229841_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp243965))
                   (___kont243435243436_ _L229840_ _L229841_)
                   (___kont243439243440_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont243439243440_))))
                                             (___kont243439243440_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop229767229813_ _target229764229808_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx243433243434_))
                    (let ((_e229760229792_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx243433243434_))))
                      (let ((_tl229758229797_
                             (let ()
                               (declare (not safe))
                               (##cdr _e229760229792_)))
                            (_hd229759229795_
                             (let ()
                               (declare (not safe))
                               (##car _e229760229792_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl229758229797_))
                            (let ((_e229763229800_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl229758229797_))))
                              (let ((_tl229761229805_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e229763229800_)))
                                    (_hd229762229803_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e229763229800_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd229762229803_))
                                    (let ((___splice243437243438_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd229762229803_
                                              '0))))
                                      (let ((_tl229766229810_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice243437243438_
                                                '1)))
                                            (_target229764229808_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice243437243438_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl229766229810_))
                                            (___match243460243461_
                                             _e229760229792_
                                             _hd229759229795_
                                             _tl229758229797_
                                             _e229763229800_
                                             _hd229762229803_
                                             _tl229761229805_
                                             ___splice243437243438_
                                             _target229764229808_
                                             _tl229766229810_)
                                            (___kont243439243440_))))
                                    (___kont243439243440_))))
                            (___kont243439243440_))))
                    (___kont243439243440_))))))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_stx228890_)
        (letrec* ((_bind-e__241556241557_
                   (lambda (_id229730_ _expr229731_ _compile?229732_)
                     (let ((__tmp243970
                            (let ()
                              (declare (not safe))
                              (cons _id229730_ '())))
                           (__tmp243968
                            (let ((__tmp243969
                                   (if _compile?229732_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr229731_))
                                       _expr229731_)))
                              (declare (not safe))
                              (cons __tmp243969 '()))))
                       (declare (not safe))
                       (cons __tmp243970 __tmp243968))))
                  (_bind-e__0__241558241559_
                   (lambda (_id229737_ _expr229738_)
                     (let ((_compile?229740_ '#t))
                       (declare (not safe))
                       (_bind-e__241556241557_
                        _id229737_
                        _expr229738_
                        _compile?229740_))))
                  (_bind-e228892_
                   (lambda _g243972_
                     (let ((_g243971_
                            (let ()
                              (declare (not safe))
                              (##length _g243972_))))
                       (cond ((let () (declare (not safe)) (##fx= _g243971_ 2))
                              (apply (lambda (_id229737_ _expr229738_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__241558241559_
                                          _id229737_
                                          _expr229738_)))
                                     _g243972_))
                             ((let () (declare (not safe)) (##fx= _g243971_ 3))
                              (apply (lambda (_id229742_
                                              _expr229743_
                                              _compile?229744_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__241556241557_
                                          _id229742_
                                          _expr229743_
                                          _compile?229744_)))
                                     _g243972_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g243972_))))))
                  (_compile-bindings228893_
                   (lambda (_rest229028_)
                     (let _lp229030_ ((_rest229032_ _rest229028_)
                                      (_bind229033_ '()))
                       (let* ((_rest229034229042_ _rest229032_)
                              (_else229036229050_
                               (lambda () (reverse _bind229033_)))
                              (_K229038229717_
                               (lambda (_rest229053_ _hd229054_)
                                 (let* ((___stx243483243484_ _hd229054_)
                                        (_g229059229106_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx243483243484_)))))
                                   (let ((___kont243485243486_
                                          (lambda (_L229624_ _L229625_)
                                            (let* ((___stx243463243464_
                                                    _L229624_)
                                                   (_g229640229654_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx243463243464_)))))
                                              (let ((___kont243465243466_
                                                     (lambda (_L229702_)
                                                       (let ((__tmp243973
                                                              (let ((__tmp243974
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__241556241557_
                                _L229625_
                                _L229624_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp243974 _bind229033_))))
                 (declare (not safe))
                 (_lp229030_ _rest229053_ __tmp243973))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont243467243468_
                                                     (lambda (_L229667_)
                                                       (let ((_g243975_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx228890_
                         _L229625_
                         _L229667_
                         '#t))))
                 (begin
                   (let ((_g243976_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g243975_)
                                (##vector-length _g243975_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g243976_ 3)))
                         (error "Context expects 3 values" _g243976_)))
                   (let ((_ids229677_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g243975_ 0)))
                         (_impls229678_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g243975_ 1)))
                         (_clauses229679_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g243975_ 2))))
                     (let* ((_g243977_
                             (for-each gx#core-bind-runtime! _ids229677_))
                            (_xbind229682_
                             (map _bind-e228892_ _ids229677_ _impls229678_))
                            (_expr*229684_
                             (let ((__tmp243979
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses229679_)))
                                   (__tmp243978
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp243979
                                __tmp243978)))
                            (_bind*229686_
                             (let ()
                               (declare (not safe))
                               (_bind-e__241556241557_
                                _L229625_
                                _expr*229684_
                                '#f))))
                       (let ((__tmp243981
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L229625_)))
                             (__tmp243980
                              (map gxc#identifier-symbol _ids229677_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp243981
                          '" => "
                          __tmp243980))
                       (let ((__tmp243982
                              (let ((__tmp243983
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _bind229033_
                                               _xbind229682_))))
                                (declare (not safe))
                                (cons _bind*229686_ __tmp243983))))
                         (declare (not safe))
                         (_lp229030_ _rest229053_ __tmp243982)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match243474243475_
                                                       (lambda (_e229645229694_
                                                                _hd229644229697_
                                                                _tl229643229699_)
                                                         (let ((_L229702_
                                                                _tl229643229699_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L229702_))
                       (___kont243465243466_ _L229702_)
                       (___kont243467243468_ _tl229643229699_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx243463243464_))
                                                      (let ((_e229645229694_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx243463243464_))))
                (let ((_tl229643229699_
                       (let () (declare (not safe)) (##cdr _e229645229694_)))
                      (_hd229644229697_
                       (let () (declare (not safe)) (##car _e229645229694_))))
                  (___match243474243475_
                   _e229645229694_
                   _hd229644229697_
                   _tl229643229699_)))
              (let () (declare (not safe)) (_g229640229654_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont243487243488_
                                          (lambda (_L229452_ _L229453_)
                                            (let* ((_g229467229497_
                                                    (lambda (_g229468229494_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g229468229494_))))
                                                   (_g229466229592_
                                                    (lambda (_g229468229500_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g229468229500_))
                                                          (let ((_e229474229502_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g229468229500_))))
                    (let ((_hd229473229505_
                           (let ()
                             (declare (not safe))
                             (##car _e229474229502_)))
                          (_tl229472229507_
                           (let ()
                             (declare (not safe))
                             (##cdr _e229474229502_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl229472229507_))
                          (let ((_e229477229510_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl229472229507_))))
                            (let ((_hd229476229513_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e229477229510_)))
                                  (_tl229475229515_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e229477229510_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd229476229513_))
                                  (let ((_e229480229518_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd229476229513_))))
                                    (let ((_hd229479229521_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e229480229518_)))
                                          (_tl229478229523_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e229480229518_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd229479229521_))
                                          (let ((_e229483229526_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd229479229521_))))
                                            (let ((_hd229482229529_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e229483229526_)))
                                                  (_tl229481229531_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e229483229526_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd229482229529_))
                                                  (let ((_e229486229534_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd229482229529_))))
                                                    (let ((_hd229485229537_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e229486229534_)))
                                                          (_tl229484229539_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e229486229534_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl229484229539_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl229481229531_))
                      (let ((_e229489229542_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl229481229531_))))
                        (let ((_hd229488229545_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229489229542_)))
                              (_tl229487229547_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229489229542_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl229487229547_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl229478229523_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl229475229515_))
                                      (let ((_e229492229550_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl229475229515_))))
                                        (let ((_hd229491229553_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229492229550_)))
                                              (_tl229490229555_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229492229550_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229490229555_))
                                              ((lambda (_L229558_
                                                        _L229559_
                                                        _L229560_)
                                                 (let* ((_lambda-id229584_
                                                         (let ((__tmp243985
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L229453_)))
                       (__tmp243984 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp243985 __tmp243984)))
                (_lambda-id229586_
                 (let ((__tmp243986
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx228890_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id229584_ __tmp243986)))
                (_g243987_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id229586_)))
                (_new-case-lambda-expr229589_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L229558_
                    _L229560_
                    _lambda-id229586_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp243989
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L229453_)))
                                                         (__tmp243988
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id229586_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp243989
                                                      '" => "
                                                      __tmp243988))
                                                   (let ((__tmp243992
                                                          (let ((__tmp243993
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__241556241557_
                            _L229453_
                            _new-case-lambda-expr229589_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp243993 _rest229053_)))
                 (__tmp243990
                  (let ((__tmp243991
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__241558241559_
                            _lambda-id229586_
                            _L229559_))))
                    (declare (not safe))
                    (cons __tmp243991 _bind229033_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp229030_
                                                      __tmp243992
                                                      __tmp243990))))
                                               _hd229491229553_
                                               _hd229488229545_
                                               _hd229485229537_)
                                              (let ()
                                                (declare (not safe))
                                                (_g229467229497_
                                                 _g229468229500_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229467229497_ _g229468229500_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g229467229497_ _g229468229500_)))
                              (let ()
                                (declare (not safe))
                                (_g229467229497_ _g229468229500_)))))
                      (let ()
                        (declare (not safe))
                        (_g229467229497_ _g229468229500_)))
                  (let ()
                    (declare (not safe))
                    (_g229467229497_ _g229468229500_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g229467229497_
                                                     _g229468229500_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g229467229497_
                                             _g229468229500_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g229467229497_ _g229468229500_)))))
                          (let ()
                            (declare (not safe))
                            (_g229467229497_ _g229468229500_)))))
                  (let ()
                    (declare (not safe))
                    (_g229467229497_ _g229468229500_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g229466229592_ _L229452_))))
                                         (___kont243489243490_
                                          (lambda (_L229176_ _L229177_)
                                            (let* ((_g229191229244_
                                                    (lambda (_g229192229241_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g229192229241_))))
                                                   (_g229190229420_
                                                    (lambda (_g229192229247_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g229192229247_))
                                                          (let ((_e229200229249_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g229192229247_))))
                    (let ((_hd229199229252_
                           (let ()
                             (declare (not safe))
                             (##car _e229200229249_)))
                          (_tl229198229254_
                           (let ()
                             (declare (not safe))
                             (##cdr _e229200229249_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl229198229254_))
                          (let ((_e229203229257_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl229198229254_))))
                            (let ((_hd229202229260_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e229203229257_)))
                                  (_tl229201229262_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e229203229257_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd229202229260_))
                                  (let ((_e229206229265_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd229202229260_))))
                                    (let ((_hd229205229268_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e229206229265_)))
                                          (_tl229204229270_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e229206229265_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd229205229268_))
                                          (let ((_e229209229273_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd229205229268_))))
                                            (let ((_hd229208229276_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e229209229273_)))
                                                  (_tl229207229278_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e229209229273_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd229208229276_))
                                                  (let ((_e229212229281_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd229208229276_))))
                                                    (let ((_hd229211229284_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e229212229281_)))
                                                          (_tl229210229286_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e229212229281_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl229210229286_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl229207229278_))
                      (let ((_e229215229289_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl229207229278_))))
                        (let ((_hd229214229292_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229215229289_)))
                              (_tl229213229294_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229215229289_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd229214229292_))
                              (let ((_e229218229297_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd229214229292_))))
                                (let ((_hd229217229300_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229218229297_)))
                                      (_tl229216229302_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229218229297_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl229216229302_))
                                      (let ((_e229221229305_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl229216229302_))))
                                        (let ((_hd229220229308_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229221229305_)))
                                              (_tl229219229310_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229221229305_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd229220229308_))
                                              (let ((_e229224229313_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd229220229308_))))
                                                (let ((_hd229223229316_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e229224229313_)))
                                                      (_tl229222229318_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e229224229313_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd229223229316_))
                                                      (let ((_e229227229321_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd229223229316_))))
                (let ((_hd229226229324_
                       (let () (declare (not safe)) (##car _e229227229321_)))
                      (_tl229225229326_
                       (let () (declare (not safe)) (##cdr _e229227229321_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd229226229324_))
                      (let ((_e229230229329_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd229226229324_))))
                        (let ((_hd229229229332_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229230229329_)))
                              (_tl229228229334_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229230229329_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl229228229334_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl229225229326_))
                                  (let ((_e229233229337_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl229225229326_))))
                                    (let ((_hd229232229340_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e229233229337_)))
                                          (_tl229231229342_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e229233229337_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl229231229342_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229222229318_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl229219229310_))
                                                  (let ((_e229236229345_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl229219229310_))))
                                                    (let ((_hd229235229348_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e229236229345_)))
                                                          (_tl229234229350_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e229236229345_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl229234229350_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl229213229294_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl229204229270_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229201229262_))
                              (let ((_e229239229353_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229201229262_))))
                                (let ((_hd229238229356_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229239229353_)))
                                      (_tl229237229358_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229239229353_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl229237229358_))
                                      ((lambda (_L229361_
                                                _L229362_
                                                _L229363_
                                                _L229364_
                                                _L229365_)
                                         (let* ((_get-kws-id229405_
                                                 (let ((__tmp243995
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L229177_)))
                                                       (__tmp243994
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp243995
                                                    __tmp243994)))
                                                (_get-kws-id229407_
                                                 (let ((__tmp243996
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx228890_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id229405_
                                                    __tmp243996)))
                                                (_main-id229409_
                                                 (let ((__tmp243998
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L229177_)))
                                                       (__tmp243997
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp243998
                                                    __tmp243997)))
                                                (_main-id229411_
                                                 (let ((__tmp243999
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx228890_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id229409_
                                                    __tmp243999)))
                                                (_g244000_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id229407_)))
                                                (_g244001_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id229411_)))
                                                (_new-kw-dispatch229415_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L229361_
                                                    _L229365_
                                                    _get-kws-id229407_)))
                                                (_new-get-kws229417_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L229362_
                                                    _L229364_
                                                    _main-id229411_))))
                                           (let ((__tmp244004
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L229177_)))
                                                 (__tmp244003
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id229407_)))
                                                 (__tmp244002
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id229411_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp244004
                                              '" => "
                                              __tmp244003
                                              '" => "
                                              __tmp244002))
                                           (let ((__tmp244005
                                                  (let ((__tmp244010
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__241556241557_
                                                            _main-id229411_
                                                            _L229363_
                                                            '#f)))
                                                        (__tmp244006
                                                         (let ((__tmp244009
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_bind-e__241556241557_
                           _get-kws-id229407_
                           _new-get-kws229417_
                           '#f)))
                       (__tmp244007
                        (let ((__tmp244008
                               (let ()
                                 (declare (not safe))
                                 (_bind-e__241556241557_
                                  _L229177_
                                  _new-kw-dispatch229415_
                                  '#f))))
                          (declare (not safe))
                          (cons __tmp244008 _rest229053_))))
                   (declare (not safe))
                   (cons __tmp244009 __tmp244007))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp244010
                                                          __tmp244006))))
                                             (declare (not safe))
                                             (_lp229030_
                                              __tmp244005
                                              _bind229033_))))
                                       _hd229238229356_
                                       _hd229235229348_
                                       _hd229232229340_
                                       _hd229229229332_
                                       _hd229211229284_)
                                      (let ()
                                        (declare (not safe))
                                        (_g229191229244_ _g229192229247_)))))
                              (let ()
                                (declare (not safe))
                                (_g229191229244_ _g229192229247_)))
                          (let ()
                            (declare (not safe))
                            (_g229191229244_ _g229192229247_)))
                      (let ()
                        (declare (not safe))
                        (_g229191229244_ _g229192229247_)))
                  (let ()
                    (declare (not safe))
                    (_g229191229244_ _g229192229247_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g229191229244_
                                                     _g229192229247_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g229191229244_
                                                 _g229192229247_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g229191229244_
                                             _g229192229247_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g229191229244_ _g229192229247_)))
                              (let ()
                                (declare (not safe))
                                (_g229191229244_ _g229192229247_)))))
                      (let ()
                        (declare (not safe))
                        (_g229191229244_ _g229192229247_)))))
              (let ()
                (declare (not safe))
                (_g229191229244_ _g229192229247_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g229191229244_
                                                 _g229192229247_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229191229244_ _g229192229247_)))))
                              (let ()
                                (declare (not safe))
                                (_g229191229244_ _g229192229247_)))))
                      (let ()
                        (declare (not safe))
                        (_g229191229244_ _g229192229247_)))
                  (let ()
                    (declare (not safe))
                    (_g229191229244_ _g229192229247_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g229191229244_
                                                     _g229192229247_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g229191229244_
                                             _g229192229247_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g229191229244_ _g229192229247_)))))
                          (let ()
                            (declare (not safe))
                            (_g229191229244_ _g229192229247_)))))
                  (let ()
                    (declare (not safe))
                    (_g229191229244_ _g229192229247_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g229190229420_ _L229176_))))
                                         (___kont243491243492_
                                          (lambda (_L229127_ _L229128_)
                                            (let ((__tmp244011
                                                   (let ((__tmp244012
                                                          (let ((__tmp244013
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp244014
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L229127_))))
                           (declare (not safe))
                           (cons __tmp244014 '()))))
                    (declare (not safe))
                    (cons _L229128_ __tmp244013))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp244012
                                                           _bind229033_))))
                                              (declare (not safe))
                                              (_lp229030_
                                               _rest229053_
                                               __tmp244011)))))
                                     (let* ((___match243558243559_
                                             (lambda (_e229087229152_
                                                      _hd229086229155_
                                                      _tl229085229157_
                                                      _e229090229160_
                                                      _hd229089229163_
                                                      _tl229088229165_
                                                      _e229093229168_
                                                      _hd229092229171_
                                                      _tl229091229173_)
                                               (let ((_L229176_
                                                      _hd229092229171_)
                                                     (_L229177_
                                                      _hd229089229163_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L229177_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#kw-lambda-expr?
                                                             _L229176_)))
                                                     (___kont243489243490_
                                                      _L229176_
                                                      _L229177_)
                                                     (___kont243491243492_
                                                      _hd229092229171_
                                                      _hd229086229155_)))))
                                            (___match243536243537_
                                             (lambda (_e229076229428_
                                                      _hd229075229431_
                                                      _tl229074229433_
                                                      _e229079229436_
                                                      _hd229078229439_
                                                      _tl229077229441_
                                                      _e229082229444_
                                                      _hd229081229447_
                                                      _tl229080229449_)
                                               (let ((_L229452_
                                                      _hd229081229447_)
                                                     (_L229453_
                                                      _hd229078229439_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L229453_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L229452_)))
                                                     (___kont243487243488_
                                                      _L229452_
                                                      _L229453_)
                                                     (___match243558243559_
                                                      _e229076229428_
                                                      _hd229075229431_
                                                      _tl229074229433_
                                                      _e229079229436_
                                                      _hd229078229439_
                                                      _tl229077229441_
                                                      _e229082229444_
                                                      _hd229081229447_
                                                      _tl229080229449_)))))
                                            (___match243514243515_
                                             (lambda (_e229065229600_
                                                      _hd229064229603_
                                                      _tl229063229605_
                                                      _e229068229608_
                                                      _hd229067229611_
                                                      _tl229066229613_
                                                      _e229071229616_
                                                      _hd229070229619_
                                                      _tl229069229621_)
                                               (let ((_L229624_
                                                      _hd229070229619_)
                                                     (_L229625_
                                                      _hd229067229611_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L229625_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L229624_)))
                                                     (___kont243485243486_
                                                      _L229624_
                                                      _L229625_)
                                                     (___match243536243537_
                                                      _e229065229600_
                                                      _hd229064229603_
                                                      _tl229063229605_
                                                      _e229068229608_
                                                      _hd229067229611_
                                                      _tl229066229613_
                                                      _e229071229616_
                                                      _hd229070229619_
                                                      _tl229069229621_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx243483243484_))
                                           (let ((_e229065229600_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx243483243484_))))
                                             (let ((_tl229063229605_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e229065229600_)))
                                                   (_hd229064229603_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e229065229600_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd229064229603_))
                                                   (let ((_e229068229608_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd229064229603_))))
                                                     (let ((_tl229066229613_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e229068229608_)))
                                                           (_hd229067229611_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e229068229608_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl229066229613_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl229063229605_))
                       (let ((_e229071229616_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl229063229605_))))
                         (let ((_tl229069229621_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e229071229616_)))
                               (_hd229070229619_
                                (let ()
                                  (declare (not safe))
                                  (##car _e229071229616_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl229069229621_))
                               (___match243514243515_
                                _e229065229600_
                                _hd229064229603_
                                _tl229063229605_
                                _e229068229608_
                                _hd229067229611_
                                _tl229066229613_
                                _e229071229616_
                                _hd229070229619_
                                _tl229069229621_)
                               (let ()
                                 (declare (not safe))
                                 (_g229059229106_)))))
                       (let () (declare (not safe)) (_g229059229106_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl229063229605_))
                       (let ((_e229101229119_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl229063229605_))))
                         (let ((_tl229099229124_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e229101229119_)))
                               (_hd229100229122_
                                (let ()
                                  (declare (not safe))
                                  (##car _e229101229119_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl229099229124_))
                               (___kont243491243492_
                                _hd229100229122_
                                _hd229064229603_)
                               (let ()
                                 (declare (not safe))
                                 (_g229059229106_)))))
                       (let () (declare (not safe)) (_g229059229106_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl229063229605_))
                                                       (let ((_e229101229119_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl229063229605_))))
                 (let ((_tl229099229124_
                        (let () (declare (not safe)) (##cdr _e229101229119_)))
                       (_hd229100229122_
                        (let () (declare (not safe)) (##car _e229101229119_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl229099229124_))
                       (___kont243491243492_ _hd229100229122_ _hd229064229603_)
                       (let () (declare (not safe)) (_g229059229106_)))))
               (let () (declare (not safe)) (_g229059229106_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g229059229106_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest229034229042_))
                             (let ((_hd229039229720_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest229034229042_)))
                                   (_tl229040229722_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest229034229042_))))
                               (let* ((_hd229725_ _hd229039229720_)
                                      (_rest229727_ _tl229040229722_))
                                 (declare (not safe))
                                 (_K229038229717_ _rest229727_ _hd229725_)))
                             (let ()
                               (declare (not safe))
                               (_else229036229050_))))))))
          (let* ((___stx243575243576_ _stx228890_)
                 (_g228896228923_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx243575243576_)))))
            (let ((___kont243577243578_
                   (lambda (_L228983_ _L228984_ _L228985_)
                     (let ((__tmp244016
                            (lambda ()
                              (let ((_hd229022_
                                     (let ((__tmp244017
                                            (let ((__tmp244018
                                                   (lambda (_g229014229017_
                                                            _g229015229019_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g229014229017_
                                                             _g229015229019_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp244018
                                                      '()
                                                      _L228984_))))
                                       (declare (not safe))
                                       (_compile-bindings228893_ __tmp244017)))
                                    (_body229023_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L228983_))))
                                (let ((__tmp244019
                                       (let ((__tmp244020
                                              (let ((__tmp244021
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body229023_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _hd229022_
                                                      __tmp244021))))
                                         (declare (not safe))
                                         (cons _L228985_ __tmp244020))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp244019
                                   _stx228890_)))))
                           (__tmp244015
                            (let ((__obj243640
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj243640)
                              __obj243640)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp244016
                        gx#current-expander-context
                        __tmp244015))))
                  (___kont243581243582_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx228890_)))))
              (let ((___match243602243603_
                     (lambda (_e228903228935_
                              _hd228902228938_
                              _tl228901228940_
                              _e228906228943_
                              _hd228905228946_
                              _tl228904228948_
                              ___splice243579243580_
                              _target228907228951_
                              _tl228909228953_)
                       (letrec ((_loop228910228956_
                                 (lambda (_hd228908228959_ _bind228914228961_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd228908228959_))
                                       (let ((_e228911228964_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd228908228959_))))
                                         (let ((_lp-tl228913228969_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e228911228964_)))
                                               (_lp-hd228912228967_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e228911228964_))))
                                           (let ((__tmp244024
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd228912228967_
                                                          _bind228914228961_))))
                                             (declare (not safe))
                                             (_loop228910228956_
                                              _lp-tl228913228969_
                                              __tmp244024))))
                                       (let ((_bind228915228972_
                                              (reverse _bind228914228961_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl228904228948_))
                                             (let ((_e228918228975_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl228904228948_))))
                                               (let ((_tl228916228980_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e228918228975_)))
                                                     (_hd228917228978_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e228918228975_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl228916228980_))
                                                     (let ((_L228983_
                                                            _hd228917228978_)
                                                           (_L228984_
                                                            _bind228915228972_)
                                                           (_L228985_
                                                            _hd228902228938_))
                                                       (if (let ((__tmp244022
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp244023
                                 (lambda (_g229006229009_ _g229007229011_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g229006229009_ _g229007229011_)))))
                            (declare (not safe))
                            (foldr1 __tmp244023 '() _L228984_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp244022))
                   (___kont243577243578_ _L228983_ _L228984_ _L228985_)
                   (___kont243581243582_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont243581243582_))))
                                             (___kont243581243582_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop228910228956_ _target228907228951_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx243575243576_))
                    (let ((_e228903228935_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx243575243576_))))
                      (let ((_tl228901228940_
                             (let ()
                               (declare (not safe))
                               (##cdr _e228903228935_)))
                            (_hd228902228938_
                             (let ()
                               (declare (not safe))
                               (##car _e228903228935_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl228901228940_))
                            (let ((_e228906228943_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl228901228940_))))
                              (let ((_tl228904228948_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e228906228943_)))
                                    (_hd228905228946_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e228906228943_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd228905228946_))
                                    (let ((___splice243579243580_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd228905228946_
                                              '0))))
                                      (let ((_tl228909228953_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice243579243580_
                                                '1)))
                                            (_target228907228951_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice243579243580_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl228909228953_))
                                            (___match243602243603_
                                             _e228903228935_
                                             _hd228902228938_
                                             _tl228901228940_
                                             _e228906228943_
                                             _hd228905228946_
                                             _tl228904228948_
                                             ___splice243579243580_
                                             _target228907228951_
                                             _tl228909228953_)
                                            (___kont243581243582_))))
                                    (___kont243581243582_))))
                            (___kont243581243582_))))
                    (___kont243581243582_))))))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_bind228808_)
        (let* ((___stx243605243606_ _bind228808_)
               (_g228811228828_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx243605243606_)))))
          (let ((___kont243607243608_
                 (lambda (_L228864_ _L228865_)
                   (if (let () (declare (not safe)) (gx#identifier? _L228865_))
                       (let ((_$e228881_
                              (let ()
                                (declare (not safe))
                                (gxc#case-lambda-expr? _L228864_))))
                         (if _$e228881_
                             _$e228881_
                             (let ((_$e228884_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#opt-lambda-expr? _L228864_))))
                               (if _$e228884_
                                   _$e228884_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L228864_))))))
                       '#f)))
                (___kont243609243610_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx243605243606_))
                (let ((_e228817228840_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx243605243606_))))
                  (let ((_tl228815228845_
                         (let () (declare (not safe)) (##cdr _e228817228840_)))
                        (_hd228816228843_
                         (let ()
                           (declare (not safe))
                           (##car _e228817228840_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd228816228843_))
                        (let ((_e228820228848_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd228816228843_))))
                          (let ((_tl228818228853_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e228820228848_)))
                                (_hd228819228851_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e228820228848_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl228818228853_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl228815228845_))
                                    (let ((_e228823228856_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl228815228845_))))
                                      (let ((_tl228821228861_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e228823228856_)))
                                            (_hd228822228859_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e228823228856_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl228821228861_))
                                            (___kont243607243608_
                                             _hd228822228859_
                                             _hd228819228851_)
                                            (___kont243609243610_))))
                                    (___kont243609243610_))
                                (___kont243609243610_))))
                        (___kont243609243610_))))
                (___kont243609243610_))))))))
